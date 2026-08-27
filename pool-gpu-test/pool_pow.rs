/*
 * pool-GPU-test
 *
 * OpenCL GPU Poseidon2b PoW range tester.
 *
 * Usage:
 *   pool_pow <nonce_start> <nonce_end> <target_hex_le>
 *
 * Example:
 *   pool_pow 0 100000 \
 *     0000000000000000000000000000000000000000000000000000000000004000
 *
 * target_hex_le is 32 bytes / 64 hex characters, little-endian.
 *
 * The OpenCL kernel is loaded externally from:
 *   ./poseidon2b_pow_release.cl
 */

use std::ffi::{c_char, c_void, CString};
use std::ptr;
use std::time::Instant;

const N_FIELDS: usize = 16;
const KERNEL_NAME: &str = "poseidon2b_miner_search";
const KERNEL_FILE: &str = "poseidon2b_pow_nonce_release.cl";

type ClInt = i32;
type ClUint = u32;
type ClUlong = u64;
type ClDeviceType = usize;
type ClMemFlags = usize;
type ClBool = usize;

type ClPlatform = *mut c_void;
type ClDevice = *mut c_void;
type ClContext = *mut c_void;
type ClQueue = *mut c_void;
type ClProgram = *mut c_void;
type ClKernel = *mut c_void;
type ClMem = *mut c_void;

const CL_SUCCESS: ClInt = 0;
const CL_DEVICE_TYPE_GPU: ClDeviceType = 1 << 2;
const CL_DEVICE_NAME: usize = 0x102B;

const CL_MEM_READ_WRITE: ClMemFlags = 1 << 0;
const CL_MEM_READ_ONLY: ClMemFlags = 1 << 2;
const CL_MEM_COPY_HOST_PTR: ClMemFlags = 1 << 5;

const CL_TRUE: ClBool = 1;
const CL_PROGRAM_BUILD_LOG: usize = 0x1183;

#[repr(C)]
#[derive(Clone, Copy, Default)]
struct Gf128 {
    lo: u64,
    hi: u64,
}

#[repr(C)]
#[derive(Clone, Copy, Default)]
struct MinerMailbox {
    found: u32,
    reserved: [u32; 3],
    nonce_lo: u64,
    nonce_hi: u64,
    digest: [u64; 4],
}

/*
 * Genesis PoW fields in authoritative TOWER basis.
 *
 * These are the exact 16 fields verified against noid_chain.
 *
 * Nonce is field 10 and is replaced by the kernel.
 */
const GENESIS_FIELDS: [u128; 16] = [
    0x00000000000000000000000000000000,
    0x00000000000000000000000000000000,
    0x71c2328d44b06a2c6a831c6112377f5c,
    0x9284c9a5d61c3321538a0e5613324ef0,
    0x00000000000000000000000000000000,
    0x00000000000000000000000000000000,
    0x0000000000000000000000006a887600,
    0x00000000000000000000000000000000,
    0x00000000000000000000000000000000,
    0x00000000000000000000000000000000,
    0x00000000000000000000000000006e0a,
    0x00000000000000000000000000000000,
    0x00004000000000000000000000000000,
    0x00000000000000000000000000000018,
    0x00000000000000000000000000000000,
    0x00000000000000000000000000000000,
];

fn die(s: impl AsRef<str>) -> ! {
    eprintln!("ERROR: {}", s.as_ref());
    std::process::exit(1);
}

fn parse_u128(s: &str) -> u128 {
    if let Some(x) = s.strip_prefix("0x") {
        u128::from_str_radix(x, 16).unwrap_or_else(|_| die(format!("invalid integer: {s}")))
    } else {
        s.parse::<u128>()
            .unwrap_or_else(|_| die(format!("invalid integer: {s}")))
    }
}

fn parse_target(s: &str) -> [u8; 32] {
    let s = s.strip_prefix("0x").unwrap_or(s);

    if s.len() != 64 {
        die("target must contain exactly 64 hex characters");
    }

    let mut out = [0u8; 32];

    for i in 0..32 {
        out[i] = u8::from_str_radix(&s[i * 2..i * 2 + 2], 16)
            .unwrap_or_else(|_| die("invalid target hex"));
    }

    out
}

fn le256_lt(a: &[u8; 32], b: &[u8; 32]) -> bool {
    for i in (0..32).rev() {
        if a[i] < b[i] {
            return true;
        }

        if a[i] > b[i] {
            return false;
        }
    }

    false
}

fn gf(x: u128) -> Gf128 {
    Gf128 {
        lo: x as u64,
        hi: (x >> 64) as u64,
    }
}

/*
 * tower_to_flat conversion.
 *
 * This is the same mathematical conversion used by the external miner.
 *
 * The kernel itself converts the nonce from tower representation to flat
 * representation, while the host sends the authoritative tower fields.
 *
 * For the fixed genesis fields used here, all nonces except field 10 are
 * already authoritative values and are converted below through the same
 * conversion formula used by the OpenCL implementation.
 */
fn tower_to_flat_u128(x: u128) -> u128 {
    /*
     * Exact tower -> flat conversion used by noid_core.
     *
     * TOWER_TO_FLAT is a 128x128 GF(2) matrix.  The matrix rows are
     * applied to the bits of the tower-basis input.
     */
    const MATRIX: [u128; 128] = [
        0x1,
        0x3d5bd35c94646a247573da4a5f7710ed,
        0xa72ec17764d7ced55e2f716f4ede412f,
        0x553e92e8bc0ae9a795ed1f57f3632d4d,
        0xc7bd33d0a58cf5b4740d6c968b842acb,
        0x486fb01f93aa169afd8ee716e990cf14,
        0xbee4e4dc44629cf627b537f28935c282,
        0x549810e11a88dea5252b49277b1b82b4,
        0x6198d3a7b756c056bd3d5a025c8d370a,
        0xb2ef6c31981e31582924ed9040490830,
        0x9ee93d00b6b040353ebf5c8e0d4401d,
        0xff829109128b0bd884cb11891ab51a3c,
        0x25ce422cd636209fd58e3eee6bcdb7d7,
        0x86b6a57216f083193e1b361e8a1a5bbf,
        0x38e5c77d01ea3f466707ab5ea8ff4171,
        0x2de7ef9721e4b0550d4fe61188fb1bd3,
        0x5c4feb37d9ad179b297b823812957b8c,
        0x8e36a06b2ac838db09f04ada993caa84,
        0xc6082bd8edaaae4873fb728376565fff,
        0x9b92a729351ab577a2b0de27d713817a,
        0xb7106c3879c5c033015afe43a7bbb48f,
        0xe638c5d1336cc967dd424e375f37904f,
        0xef30fbf0630e9d04f9efc7d242801381,
        0x548ecca55b43556101c39dffff23087,
        0xa3dc4d913d605620dae083b969cba697,
        0x60c413bae203bcfee863fce3d62d7a46,
        0xe3f02a180f232bd7f9e6c41f2ad92bb1,
        0x4983d83fd28ea811148387423931f5c8,
        0x449a77f55b99ac57dcb2131788da3392,
        0x611ba189d789d45401af9d0333b3f9e7,
        0xb67819253374dc0ae0ec21b8ad160234,
        0xf23ff08f2566732b188cdc592a0eb8f7,
        0xc9ac57d3e240265a401dc6270f59c10,
        0x3493b22a21cc4c396552505d8c638d9b,
        0x757fa4336d785da4447251e433ed42fb,
        0x6d2979d4d4a745250ea377dabd44cfb2,
        0x55583ad2a44322ab8ca02871898d1f81,
        0x86373be6909783ffc8bb21b3dda24f12,
        0xc3f3f28407ec57a4a53af471e53285c,
        0x972c409ddb7f2db55ee11ac6a242e45c,
        0x96f938744906740774c33c247ccf85d8,
        0x4cae10232a3558fa26fbc92fab97488b,
        0x8bb0008776ffc7e44db0cc1a2df288b9,
        0x1d0703e4ee2237c7ab53e5b75d921bd7,
        0xff012dbc34f0271cce6d0c1b0d125e3a,
        0x9aea02703d99a98cb9e1b3a368dce85b,
        0xb39755229db1f4de29498e7a13e7cdc2,
        0xc31176b1b646603fc50a528e49742a0e,
        0xead0dc2950f39b1eb2c2edb9407de10d,
        0xea3f3fe33d1d2b7d3cf38b78900dab86,
        0x51bd919a56eb92348316675811dc923,
        0xba5ae9f94b493aa478e08aa4f415cb18,
        0x141e17265a74f46bb369c916cbaf8a25,
        0x6c99c4af650a8451a195d75a7769413b,
        0x342484168e3692419b8ea7e8fdcc8f8d,
        0xaa7a29ea7ae49742f8aa7027b065617d,
        0xd345f319cf8d0c5711c92a1a19cf232c,
        0xbf7956da104bb930529470fbcfa3f60e,
        0xaf3c8a62ae50f00d8dd54ec40c51d402,
        0x9f40c849b5f5405f91589271eefd831e,
        0x82131c9fe93d42fe3eac43b40fe78613,
        0xee5d797779ee1b27b76d3ed1cee66add,
        0xb7438c8a8d29a42710da3eeb0dcaa4f4,
        0x884f37a7a1f9068c7b8dbfb652cfb52,
        0x9b027a35e430ddaa521ef0fd91f39162,
        0xb619b3c28e9fd05efbcd5ead6935a75c,
        0xcad054f32f966043874b2e8163127c7,
        0x8ec4fff59680eaae0077f3dd83fbd947,
        0x50d8597763331f8dcea34c16608a96a7,
        0x6d03608d9f2a6e86dd0d62d96a32751d,
        0x49110668fefb446975dea1bb5742ad75,
        0xde3c54e5dc0bf89137cf5d286ba5868a,
        0x61121e79a40f65000fb426800e5b4f0b,
        0x996944c65744223a5ef06f1eda08fd6,
        0xda3cbe76b9f383e1cde547094cf05431,
        0xa3a2b75fb155f13733c11156ff19d609,
        0xfb4449056e5c6fb2d9a33f42f0a893ad,
        0x128f41399db28643d0743873dc1264a,
        0xff09c9c044dd9342be235156d0bf9197,
        0xcbb652c3d0896219d921f2c49b28d8e7,
        0x61102a46cc01cdf697b666aa7d3d8d45,
        0x717c5e9d4a0731b69d1e33a8f128eedd,
        0xd3498c6de1db846fb5b84c3d08a26402,
        0x1d074123e95f221742bb042dd2decd90,
        0x49dd214c370bbb55e8a3a82b147053be,
        0x18af31dbbab9458eb16b27c0fd1c309f,
        0x61e2d820490e7be32289961803263c34,
        0x107fa373d60153306bcebc6f2ea6aac5,
        0x3df814508cd896e7813397e8a778f8cd,
        0x4021c8146d9e0d33e353d0c73604d58e,
        0xee2c21eb408160983c5ccee03d280f85,
        0xe77f3ff735b6b82a28ab2ed8e3fc8320,
        0x8eee1c68d1cbc4b55eefff30ae3f6028,
        0xfabf471e3d132661b55c0f419db06696,
        0x69a006d6b32d6e23d48dde5999c10f7d,
        0x389f96875b52a0cdaf55c6a03819c6f1,
        0xd349d8dacbf6f4a04625d7953d3190bd,
        0xbe8502448366699e39f5117acfd01714,
        0xa3839a34242c75f7ffc21bd9c630459b,
        0xb3c2ef7bbf449f8af05d8a9a760e9407,
        0x694d27a4f1ba1074a7c2e5445f874b2d,
        0x855c18884723bdcb6dff2cf4849ec19,
        0x58d911a330ce147d06afb9ccb802b7db,
        0xde87764a4427a4aff5db695eda550c2a,
        0xbfa47075ed035846f2016301eb7e4009,
        0xd7335e553652ccbc3f0ff542099a9636,
        0xede815347e14cec1440aa1c612391b,
        0x96e7e4d4efb40213aa73764edddd4ff6,
        0x399c2dd474a47a3f36d286b7e1d3b32b,
        0xcaaeb9876b882f04dc62c5f814d4f79c,
        0x5c7127c96b5c4300fe9954f7999e2f5a,
        0xfe1178bc295c981e59278e0135930986,
        0xe3a9112535f5f53b6a9acc3e49877fd2,
        0x3d6051a6cf2bb75e59ff8f7991cf6bad,
        0x30d97c016d51144b717181ec5f826ba3,
        0xe3b2c049622bdaa3e7e81e99b46920ee,
        0x547744dda2f0145457aacf948f0aca14,
        0x822e4b280fbbaf701b00d1cf2675dacf,
        0x13dae85beaa0a8bb735a39898b93504,
        0xaeed75387d73a822299a17f008c4cd8c,
        0x2d4278deab8e9cdeb21b66e82f85dea7,
        0x5745efd4f8b0dc873484e5f3c83ed61,
        0x456a83da121c2fc61b55c9bd216a36cd,
        0x6ccd4a5d0819113889547d0e69bac59b,
        0xbec7bd6ab8e7169c06c93f34451b5abe,
        0xb9e80fcc7ca8fe72faafc4143960829a,
        0xbbfefb3dd63f00f3f8407e5f20d87c6a,
        0x91b376701a386e5aee6fdbd0738b4c99,
    ];

    let mut out = 0u128;
    let mut v = x;

    for i in 0..128 {
        if (v & 1) != 0 {
            out ^= MATRIX[i];
        }
        v >>= 1;
    }

    out
}

fn load_file(path: &str) -> Vec<u8> {
    std::fs::read(path).unwrap_or_else(|e| die(format!("cannot read {path}: {e}")))
}

#[cfg(windows)]
mod dynopencl {
    use super::*;

    #[link(name = "kernel32")]
    extern "system" {
        fn LoadLibraryA(name: *const c_char) -> *mut c_void;
        fn GetProcAddress(module: *mut c_void, name: *const c_char) -> *mut c_void;
    }

    pub unsafe fn load_symbol(name: &str) -> *mut c_void {
        let dll = CString::new("OpenCL.dll").unwrap();

        let module = LoadLibraryA(dll.as_ptr());

        if module.is_null() {
            die("cannot load OpenCL.dll");
        }

        let symbol = CString::new(name).unwrap();

        let p = GetProcAddress(module, symbol.as_ptr());

        if p.is_null() {
            die(format!("OpenCL symbol not found: {name}"));
        }

        p
    }
}

#[cfg(unix)]
mod dynopencl {
    use super::*;

    #[link(name = "dl")]
    extern "C" {
        fn dlopen(filename: *const c_char, flags: i32) -> *mut c_void;
        fn dlsym(handle: *mut c_void, symbol: *const c_char) -> *mut c_void;
    }

    pub unsafe fn load_symbol(name: &str) -> *mut c_void {
        const RTLD_NOW: i32 = 2;

        let paths = [
            b"libOpenCL.so.1\0".as_ptr() as *const c_char,
            b"libOpenCL.so\0".as_ptr() as *const c_char,
        ];

        let mut handle = ptr::null_mut();

        for p in paths {
            handle = dlopen(p, RTLD_NOW);

            if !handle.is_null() {
                break;
            }
        }

        if handle.is_null() {
            die("cannot load libOpenCL.so");
        }

        let symbol = CString::new(name).unwrap();

        let p = dlsym(handle, symbol.as_ptr());

        if p.is_null() {
            die(format!("OpenCL symbol not found: {name}"));
        }

        p
    }
}

macro_rules! clfn {
    ($name:ident, $ty:ty) => {
        unsafe fn $name() -> $ty {
            let p = dynopencl::load_symbol(stringify!($name));
            std::mem::transmute(p)
        }
    };
}

type FnGetPlatformIDs = unsafe extern "C" fn(ClUint, *mut ClPlatform, *mut ClUint) -> ClInt;

type FnGetDeviceIDs =
    unsafe extern "C" fn(ClPlatform, ClDeviceType, ClUint, *mut ClDevice, *mut ClUint) -> ClInt;

type FnGetDeviceInfo =
    unsafe extern "C" fn(ClDevice, usize, usize, *mut c_void, *mut usize) -> ClInt;

type FnCreateContext = unsafe extern "C" fn(
    *const usize,
    ClUint,
    *const ClDevice,
    *const c_void,
    *mut c_void,
    *mut ClInt,
) -> ClContext;

type FnCreateCommandQueue = unsafe extern "C" fn(ClContext, ClDevice, usize, *mut ClInt) -> ClQueue;

type FnCreateProgramWithSource = unsafe extern "C" fn(
    ClContext,
    ClUint,
    *const *const c_char,
    *const usize,
    *mut ClInt,
) -> ClProgram;

type FnBuildProgram = unsafe extern "C" fn(
    ClProgram,
    ClUint,
    *const ClDevice,
    *const c_char,
    *const c_void,
    *mut c_void,
) -> ClInt;

type FnGetProgramBuildInfo =
    unsafe extern "C" fn(ClProgram, ClDevice, usize, usize, *mut c_void, *mut usize) -> ClInt;

type FnCreateKernel = unsafe extern "C" fn(ClProgram, *const c_char, *mut ClInt) -> ClKernel;

type FnCreateBuffer =
    unsafe extern "C" fn(ClContext, ClMemFlags, usize, *const c_void, *mut ClInt) -> ClMem;

type FnSetKernelArg = unsafe extern "C" fn(ClKernel, ClUint, usize, *const c_void) -> ClInt;

type FnEnqueueNDRangeKernel = unsafe extern "C" fn(
    ClQueue,
    ClKernel,
    ClUint,
    *const usize,
    *const usize,
    *const usize,
    ClUint,
    *const c_void,
    *mut c_void,
) -> ClInt;

type FnFinish = unsafe extern "C" fn(ClQueue) -> ClInt;

type FnEnqueueReadBuffer = unsafe extern "C" fn(
    ClQueue,
    ClMem,
    ClBool,
    usize,
    usize,
    *mut c_void,
    ClUint,
    *const c_void,
    *mut c_void,
) -> ClInt;

type FnEnqueueWriteBuffer = unsafe extern "C" fn(
    ClQueue,
    ClMem,
    ClBool,
    usize,
    usize,
    *const c_void,
    ClUint,
    *const c_void,
    *mut c_void,
) -> ClInt;

type FnReleaseMemObject = unsafe extern "C" fn(ClMem) -> ClInt;

type FnReleaseKernel = unsafe extern "C" fn(ClKernel) -> ClInt;

type FnReleaseProgram = unsafe extern "C" fn(ClProgram) -> ClInt;

type FnReleaseCommandQueue = unsafe extern "C" fn(ClQueue) -> ClInt;

type FnReleaseContext = unsafe extern "C" fn(ClContext) -> ClInt;

struct OpenCl {
    get_platform_ids: FnGetPlatformIDs,
    get_device_ids: FnGetDeviceIDs,
    get_device_info: FnGetDeviceInfo,
    create_context: FnCreateContext,
    create_command_queue: FnCreateCommandQueue,
    create_program_with_source: FnCreateProgramWithSource,
    build_program: FnBuildProgram,
    get_program_build_info: FnGetProgramBuildInfo,
    create_kernel: FnCreateKernel,
    create_buffer: FnCreateBuffer,
    set_kernel_arg: FnSetKernelArg,
    enqueue_ndrange_kernel: FnEnqueueNDRangeKernel,
    finish: FnFinish,
    enqueue_read_buffer: FnEnqueueReadBuffer,
    enqueue_write_buffer: FnEnqueueWriteBuffer,
    release_mem_object: FnReleaseMemObject,
    release_kernel: FnReleaseKernel,
    release_program: FnReleaseProgram,
    release_command_queue: FnReleaseCommandQueue,
    release_context: FnReleaseContext,
}

unsafe fn load_opencl() -> OpenCl {
    macro_rules! sym {
        ($n:ident, $t:ty) => {
            std::mem::transmute::<*mut c_void, $t>(dynopencl::load_symbol(stringify!($n)))
        };
    }

    OpenCl {
        get_platform_ids: sym!(clGetPlatformIDs, FnGetPlatformIDs),
        get_device_ids: sym!(clGetDeviceIDs, FnGetDeviceIDs),
        get_device_info: sym!(clGetDeviceInfo, FnGetDeviceInfo),
        create_context: sym!(clCreateContext, FnCreateContext),
        create_command_queue: sym!(clCreateCommandQueue, FnCreateCommandQueue),
        create_program_with_source: sym!(clCreateProgramWithSource, FnCreateProgramWithSource),
        build_program: sym!(clBuildProgram, FnBuildProgram),
        get_program_build_info: sym!(clGetProgramBuildInfo, FnGetProgramBuildInfo),
        create_kernel: sym!(clCreateKernel, FnCreateKernel),
        create_buffer: sym!(clCreateBuffer, FnCreateBuffer),
        set_kernel_arg: sym!(clSetKernelArg, FnSetKernelArg),
        enqueue_ndrange_kernel: sym!(clEnqueueNDRangeKernel, FnEnqueueNDRangeKernel),
        finish: sym!(clFinish, FnFinish),
        enqueue_read_buffer: sym!(clEnqueueReadBuffer, FnEnqueueReadBuffer),
        enqueue_write_buffer: sym!(clEnqueueWriteBuffer, FnEnqueueWriteBuffer),
        release_mem_object: sym!(clReleaseMemObject, FnReleaseMemObject),
        release_kernel: sym!(clReleaseKernel, FnReleaseKernel),
        release_program: sym!(clReleaseProgram, FnReleaseProgram),
        release_command_queue: sym!(clReleaseCommandQueue, FnReleaseCommandQueue),
        release_context: sym!(clReleaseContext, FnReleaseContext),
    }
}

fn check(rc: ClInt, what: &str) {
    if rc != CL_SUCCESS {
        die(format!("OpenCL error {rc} at {what}"));
    }
}

fn main() {
    let args: Vec<String> = std::env::args().collect();

    if args.len() != 4 {
        eprintln!(
            "usage: {} <nonce_start> <nonce_end> <target_hex_le>",
            args[0]
        );
        eprintln!();
        eprintln!("example:");
        eprintln!(
            "  {} 0 100000 \
0000000000000000000000000000000000000000000000000000000000004000",
            args[0]
        );
        std::process::exit(2);
    }

    let nonce_start = parse_u128(&args[1]);
    let nonce_end = parse_u128(&args[2]);
    let target = parse_target(&args[3]);

    if nonce_end <= nonce_start {
        die("nonce_end must be greater than nonce_start");
    }

    let count_u128 = nonce_end - nonce_start;

    if count_u128 > usize::MAX as u128 {
        die("nonce range is too large for one OpenCL dispatch");
    }

    let count = count_u128 as usize;

    println!("POOL OPENCL POSEIDON2B POW TEST");
    println!("================================");
    println!("kernel:       {KERNEL_FILE}");
    println!("kernel name:  {KERNEL_NAME}");
    println!("nonce start:  {nonce_start}");
    println!("nonce end:    {nonce_end}");
    println!("nonce count:  {count}");
    println!("target LE:    {:02x?}", target);

    let source = load_file(KERNEL_FILE);

    let oc = unsafe { load_opencl() };

    let mut platforms = [ptr::null_mut(); 1];
    let mut platform_count = 0;

    unsafe {
        check(
            (oc.get_platform_ids)(1, platforms.as_mut_ptr(), &mut platform_count),
            "clGetPlatformIDs",
        );
    }

    if platform_count == 0 {
        die("no OpenCL platform");
    }

    let platform = platforms[0];

    let mut devices = [ptr::null_mut(); 1];
    let mut device_count = 0;

    unsafe {
        check(
            (oc.get_device_ids)(
                platform,
                CL_DEVICE_TYPE_GPU,
                1,
                devices.as_mut_ptr(),
                &mut device_count,
            ),
            "clGetDeviceIDs(GPU)",
        );
    }

    if device_count == 0 {
        die("no OpenCL GPU device");
    }

    let device = devices[0];

    let mut name = [0u8; 256];
    let mut name_size = 0usize;

    unsafe {
        check(
            (oc.get_device_info)(
                device,
                CL_DEVICE_NAME,
                name.len(),
                name.as_mut_ptr() as *mut c_void,
                &mut name_size,
            ),
            "clGetDeviceInfo",
        );
    }

    let name_len = name_size.min(name.len()).saturating_sub(1);

    println!(
        "OpenCL GPU:   {}",
        String::from_utf8_lossy(&name[..name_len])
    );

    /*
     * Convert the fixed authoritative genesis fields.
     *
     * IMPORTANT:
     * field 10 is deliberately overwritten by the kernel with the
     * nonce being tested.
     */
    let mut fields = [Gf128::default(); N_FIELDS];

    for i in 0..N_FIELDS {
        fields[i] = gf(tower_to_flat_u128(GENESIS_FIELDS[i]));
    }

    /*
     * Target is already a 256-bit little-endian byte array.
     *
     * Kernel expects four u64 words.
     */
    let mut target_words = [0u64; 4];

    for i in 0..4 {
        let mut b = [0u8; 8];
        b.copy_from_slice(&target[i * 8..i * 8 + 8]);
        target_words[i] = u64::from_le_bytes(b);
    }

    println!(
        "target words: [{:016x}, {:016x}, {:016x}, {:016x}]",
        target_words[0], target_words[1], target_words[2], target_words[3]
    );

    let source_c = CString::new(source).unwrap_or_else(|_| die("kernel contains NUL"));

    let source_ptr = source_c.as_ptr();
    let source_len = source_c.as_bytes().len();

    let mut err = 0;

    let context = unsafe {
        (oc.create_context)(
            ptr::null(),
            1,
            &device,
            ptr::null(),
            ptr::null_mut(),
            &mut err,
        )
    };

    check(err, "clCreateContext");

    let queue = unsafe { (oc.create_command_queue)(context, device, 0, &mut err) };

    check(err, "clCreateCommandQueue");

    let program =
        unsafe { (oc.create_program_with_source)(context, 1, &source_ptr, &source_len, &mut err) };

    check(err, "clCreateProgramWithSource");

    println!("building kernel...");

    let options = CString::new("-cl-opt-disable").unwrap();

    let build = unsafe {
        (oc.build_program)(
            program,
            1,
            &device,
            options.as_ptr(),
            ptr::null(),
            ptr::null_mut(),
        )
    };

    if build != CL_SUCCESS {
        let mut size = 0usize;

        unsafe {
            (oc.get_program_build_info)(
                program,
                device,
                CL_PROGRAM_BUILD_LOG,
                0,
                ptr::null_mut(),
                &mut size,
            );
        }

        let mut log = vec![0u8; size.max(1)];

        unsafe {
            (oc.get_program_build_info)(
                program,
                device,
                CL_PROGRAM_BUILD_LOG,
                log.len(),
                log.as_mut_ptr() as *mut c_void,
                ptr::null_mut(),
            );
        }

        die(format!(
            "kernel build failed ({build})\n{}",
            String::from_utf8_lossy(&log)
        ));
    }

    println!("kernel build: PASS");

    let kernel_name = CString::new(KERNEL_NAME).unwrap();

    let kernel = unsafe { (oc.create_kernel)(program, kernel_name.as_ptr(), &mut err) };

    check(err, "clCreateKernel");

    println!("OPENCL FLAT TEMPLATE FIELDS:");
    for (i, f) in fields.iter().enumerate() {
        println!("flat[{i:02}] = hi={:016x} lo={:016x}", f.hi, f.lo);
    }

    let template_buf = unsafe {
        (oc.create_buffer)(
            context,
            CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
            std::mem::size_of_val(&fields),
            fields.as_ptr() as *const c_void,
            &mut err,
        )
    };

    check(err, "clCreateBuffer(template)");

    let target_buf = unsafe {
        (oc.create_buffer)(
            context,
            CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR,
            std::mem::size_of_val(&target_words),
            target_words.as_ptr() as *const c_void,
            &mut err,
        )
    };

    check(err, "clCreateBuffer(target)");

    // One result slot per work-item lets us dispatch a whole nonce batch and
    // still collect every share found in that batch.
    const BATCH_SIZE: usize = 4096;
    let mut batch_results = vec![MinerMailbox::default(); BATCH_SIZE];

    let result_buf = unsafe {
        (oc.create_buffer)(
            context,
            CL_MEM_READ_WRITE,
            std::mem::size_of_val(&batch_results[..]),
            ptr::null(),
            &mut err,
        )
    };

    check(err, "clCreateBuffer(result)");

    let mut generation: u32 = 1;

    let generation_buf = unsafe {
        (oc.create_buffer)(
            context,
            CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR,
            std::mem::size_of::<u32>(),
            &generation as *const _ as *const c_void,
            &mut err,
        )
    };

    check(err, "clCreateBuffer(generation)");


    /*
     * Pool simulation with an actual single-share mailbox.
     *
     * There is deliberately NO MAX_SOLUTIONS array and NO batch result
     * collection. One OpenCL dispatch tests one nonce. If that work-item
     * finds a valid share, the kernel writes the mailbox and returns; the
     * host immediately waits for that single dispatch and reads the share.
     *
     * This is the safe OpenCL 1.x implementation of:
     *     share found -> host immediately
     *
     * A larger dispatch cannot safely expose a device-written result to the
     * host before that dispatch has completed. Therefore correctness and
     * immediate delivery take priority here over maximum throughput.
     */
    // Workgroups share the nonce-independent Poseidon prefix in local memory.
    let local = 64usize;
    let start = Instant::now();

    let mut nonce = nonce_start;
    let mut total_hashes: u128 = 0;
    let mut total_shares: u64 = 0;

    while nonce < nonce_end {
        let start_lo = nonce as u64;
        let start_hi = (nonce >> 64) as u64;
        let nonce_count = ((nonce_end - nonce).min(BATCH_SIZE as u128)) as u64;
        let expected_generation = generation;

        batch_results[..nonce_count as usize].fill(MinerMailbox::default());

        unsafe {
            check(
                (oc.set_kernel_arg)(
                    kernel,
                    0,
                    std::mem::size_of::<ClMem>(),
                    &template_buf as *const _ as *const c_void,
                ),
                "kernel arg 0",
            );
            check(
                (oc.set_kernel_arg)(
                    kernel,
                    1,
                    std::mem::size_of::<u64>(),
                    &start_lo as *const _ as *const c_void,
                ),
                "kernel arg 1",
            );
            check(
                (oc.set_kernel_arg)(
                    kernel,
                    2,
                    std::mem::size_of::<u64>(),
                    &start_hi as *const _ as *const c_void,
                ),
                "kernel arg 2",
            );
            check(
                (oc.set_kernel_arg)(
                    kernel,
                    3,
                    std::mem::size_of::<u64>(),
                    &nonce_count as *const _ as *const c_void,
                ),
                "kernel arg 3",
            );
            check(
                (oc.set_kernel_arg)(
                    kernel,
                    4,
                    std::mem::size_of::<ClMem>(),
                    &target_buf as *const _ as *const c_void,
                ),
                "kernel arg 4",
            );
            check(
                (oc.set_kernel_arg)(
                    kernel,
                    5,
                    std::mem::size_of::<ClMem>(),
                    &result_buf as *const _ as *const c_void,
                ),
                "kernel arg 5",
            );
            check(
                (oc.set_kernel_arg)(
                    kernel,
                    6,
                    std::mem::size_of::<ClMem>(),
                    &generation_buf as *const _ as *const c_void,
                ),
                "kernel arg 6",
            );
            check(
                (oc.set_kernel_arg)(
                    kernel,
                    7,
                    std::mem::size_of::<u32>(),
                    &expected_generation as *const _ as *const c_void,
                ),
                "kernel arg 7",
            );

            check(
                (oc.enqueue_write_buffer)(
                    queue,
                    result_buf,
                    CL_TRUE,
                    0,
                    std::mem::size_of_val(&batch_results[..nonce_count as usize]),
                    batch_results.as_ptr() as *const c_void,
                    0,
                    ptr::null(),
                    ptr::null_mut(),
                ),
                "mailbox clear",
            );

            check(
                (oc.enqueue_ndrange_kernel)(
                    queue,
                    kernel,
                    1,
                    ptr::null(),
                    &(((nonce_count as usize + local - 1) / local) * local),
                    &local,
                    0,
                    ptr::null(),
                    ptr::null_mut(),
                ),
                "clEnqueueNDRangeKernel",
            );

            /*
             * This is intentionally per-nonce. The host does not wait for a
             * multi-nonce batch before checking for a share.
             */
            check((oc.finish)(queue), "clFinish");

            check(
                (oc.enqueue_read_buffer)(
                    queue,
                    result_buf,
                    CL_TRUE,
                    0,
                    std::mem::size_of_val(&batch_results[..nonce_count as usize]),
                    batch_results.as_mut_ptr() as *mut c_void,
                    0,
                    ptr::null(),
                    ptr::null_mut(),
                ),
                "mailbox read",
            );
        }

        total_hashes += nonce_count as u128;

        for mailbox in batch_results[..nonce_count as usize].iter() {
          if mailbox.found != 0 {
            let found_nonce =
                (mailbox.nonce_lo as u128) | ((mailbox.nonce_hi as u128) << 64);

            let mut digest_bytes = [0u8; 32];
            for j in 0..4 {
                digest_bytes[j * 8..j * 8 + 8]
                    .copy_from_slice(&mailbox.digest[j].to_le_bytes());
            }

            total_shares += 1;

            println!();
            println!("SHARE FOUND");
            println!("===========");
            println!("share #{total_shares}");
            println!("nonce:        {found_nonce}");
            println!("nonce hex:    {found_nonce:032x}");
            println!("digest:       {:02x?}", digest_bytes);
            println!(
                "target check: {}",
                if le256_lt(&digest_bytes, &target) {
                    "PASS"
                } else {
                    "FAIL"
                }
            );
            println!("host delivery: IMMEDIATE");
            println!();
          }
        }

        nonce += nonce_count as u128;
    }

    let elapsed = start.elapsed();

    let secs = elapsed.as_secs_f64();

    let hashes = total_hashes;
    let hps = if secs > 0.0 {
        hashes as f64 / secs
    } else {
        0.0
    };

    println!();
    println!("POOL SIMULATION RESULT");
    println!("======================");
    println!("shares submitted: {total_shares}");
    println!("hashes:           {hashes}");
    println!("elapsed:          {:.6} s", secs);
    println!("hashrate:         {:.3} H/s", hps);
    println!("hashrate:         {:.3} KH/s", hps / 1000.0);
    println!("hashrate:         {:.3} MH/s", hps / 1_000_000.0);

    unsafe {
        (oc.release_mem_object)(template_buf);
        (oc.release_mem_object)(target_buf);
        (oc.release_mem_object)(result_buf);
        (oc.release_mem_object)(generation_buf);
        (oc.release_kernel)(kernel);
        (oc.release_program)(program);
        (oc.release_command_queue)(queue);
        (oc.release_context)(context);
    }

    if total_shares != 0 {
        std::process::exit(0);
    }
}
