use noid_core::Block128;
use noid_poseidon2b::batch::FixedFieldNonceBatch;
use noid_poseidon2b::native::domain::TAG_POWHDR;
use rayon::prelude::*;
use std::time::Instant;

const FIELDS: [u128; 16] = [
    0, 0, 0x71c2328d44b06a2c6a831c6112377f5c,
    0x9284c9a5d61c3321538a0e5613324ef0, 0, 0,
    0x6a887600, 0, 0, 0, 0x6e0a, 0, 0x40000000000000000000000000000000,
    0x18, 0, 0,
];

fn main() {
    let a: u128 = std::env::args().nth(1).unwrap().parse().unwrap();
    let b: u128 = std::env::args().nth(2).unwrap().parse().unwrap();
    let target = hex::decode(std::env::args().nth(3).unwrap()).unwrap();
    let target: [u8; 32] = target.try_into().unwrap();
    let n = (b - a) as usize;
    let start = Instant::now();
    let shares = (0..n).into_par_iter().map(|i| {
        let mut h = FixedFieldNonceBatch::new(TAG_POWHDR,
            &FIELDS.map(Block128::from), 10);
        let mut out = [[0u8; 32]; 1];
        h.hash_into(a + i as u128, &mut out);
        if out[0].iter().rev().zip(target.iter().rev()).find(|(x,y)| x != y)
            .map(|(x,y)| x < y).unwrap_or(false) { Some((a+i as u128, out[0])) } else { None }
    }).collect::<Vec<_>>();
    let found: Vec<_> = shares.into_iter().flatten().collect();
    let secs = start.elapsed().as_secs_f64();
    println!("shares submitted: {}", found.len());
    for (nonce, digest) in found { println!("nonce: {}\ndigest: {:02x?}", nonce, digest); }
    println!("hashes: {}\nelapsed: {:.6} s\nhashrate: {:.3} KH/s", n, secs, n as f64 / secs / 1000.0);
}
