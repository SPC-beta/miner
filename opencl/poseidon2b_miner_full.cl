
typedef struct {
    ulong lo;
    ulong hi;
} gf128;

__constant ulong _unused = 0;

/* Auto-generated from Rust Poseidon2b reference. */
/* Do not edit manually. */

__constant gf128 ROUND_CONSTANTS[4][66] = {
    {
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 0 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 1 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 2 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 3 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 4 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 5 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 6 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 7 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 8 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 9 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 10 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 11 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 12 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 13 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 14 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 15 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 16 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 17 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 18 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 19 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 20 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 21 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 22 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 23 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 24 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 25 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 26 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 27 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 28 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 29 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 30 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 31 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 32 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 33 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 34 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 35 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 36 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 37 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 38 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 39 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 40 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 41 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 42 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 43 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 44 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 45 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 46 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 47 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 48 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 49 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 50 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 51 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 52 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 53 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 54 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 55 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 56 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 57 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 58 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 59 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 60 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 61 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 62 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 63 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 64 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 65 */
    },
    {
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 0 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 1 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 2 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 3 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 4 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 5 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 6 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 7 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 8 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 9 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 10 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 11 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 12 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 13 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 14 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 15 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 16 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 17 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 18 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 19 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 20 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 21 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 22 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 23 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 24 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 25 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 26 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 27 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 28 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 29 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 30 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 31 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 32 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 33 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 34 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 35 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 36 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 37 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 38 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 39 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 40 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 41 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 42 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 43 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 44 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 45 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 46 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 47 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 48 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 49 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 50 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 51 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 52 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 53 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 54 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 55 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 56 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 57 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 58 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 59 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 60 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 61 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 62 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 63 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 64 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 65 */
    },
    {
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 0 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 1 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 2 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 3 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 4 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 5 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 6 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 7 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 8 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 9 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 10 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 11 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 12 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 13 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 14 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 15 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 16 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 17 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 18 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 19 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 20 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 21 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 22 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 23 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 24 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 25 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 26 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 27 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 28 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 29 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 30 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 31 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 32 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 33 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 34 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 35 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 36 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 37 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 38 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 39 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 40 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 41 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 42 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 43 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 44 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 45 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 46 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 47 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 48 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 49 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 50 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 51 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 52 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 53 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 54 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 55 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 56 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 57 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 58 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 59 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 60 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 61 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 62 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 63 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 64 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 65 */
    },
    {
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 0 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 1 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 2 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 3 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 4 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 5 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 6 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 7 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 8 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 9 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 10 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 11 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 12 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 13 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 14 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 15 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 16 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 17 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 18 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 19 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 20 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 21 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 22 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 23 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 24 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 25 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 26 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 27 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 28 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 29 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 30 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 31 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 32 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 33 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 34 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 35 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 36 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 37 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 38 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 39 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 40 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 41 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 42 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 43 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 44 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 45 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 46 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 47 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 48 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 49 */
        { 0x0000000000000000UL, 0x0000000000000000UL }, /* 50 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 51 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 52 */
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL }, /* 53 */
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL }, /* 54 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 55 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 56 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 57 */
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL }, /* 58 */
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL }, /* 59 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 60 */
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL }, /* 61 */
        { 0x0000000000000001UL, 0x0000000000000000UL }, /* 62 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 63 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 64 */
        { 0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL }, /* 65 */
    },
};

__constant gf128 MDS_FULL[4][4] = {
    {
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL },
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL },
        { 0x0000000000000001UL, 0x0000000000000000UL },
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL },
    },
    {
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL },
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL },
        { 0x0000000000000001UL, 0x0000000000000000UL },
        { 0x0000000000000001UL, 0x0000000000000000UL },
    },
    {
        { 0x0000000000000001UL, 0x0000000000000000UL },
        { 0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL },
        { 0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL },
        { 0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL },
    },
    {
        { 0x0000000000000001UL, 0x0000000000000000UL },
        { 0x0000000000000001UL, 0x0000000000000000UL },
        { 0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL },
        { 0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL },
    },
};

__constant gf128 MDS_PARTIAL[4][4] = {
    {
        { 0xfd8ee716e990cf14UL, 0x486fb01f93aa169aUL },
        { 0x0000000000000001UL, 0x0000000000000000UL },
        { 0x0000000000000001UL, 0x0000000000000000UL },
        { 0x0000000000000001UL, 0x0000000000000000UL },
    },
    {
        { 0x0000000000000001UL, 0x0000000000000000UL },
        { 0x3e1b361e8a1a5bbfUL, 0x86b6a57216f08319UL },
        { 0x0000000000000001UL, 0x0000000000000000UL },
        { 0x0000000000000001UL, 0x0000000000000000UL },
    },
    {
        { 0x0000000000000001UL, 0x0000000000000000UL },
        { 0x0000000000000001UL, 0x0000000000000000UL },
        { 0x2924ed9040490830UL, 0xb2ef6c31981e3158UL },
        { 0x0000000000000001UL, 0x0000000000000000UL },
    },
    {
        { 0x0000000000000001UL, 0x0000000000000000UL },
        { 0x0000000000000001UL, 0x0000000000000000UL },
        { 0x0000000000000001UL, 0x0000000000000000UL },
        { 0x84cb11891ab51a3cUL, 0xff829109128b0bd8UL },
    },
};


static inline gf128 gf_xor(gf128 a, gf128 b)
{
    gf128 r;
    r.lo = a.lo ^ b.lo;
    r.hi = a.hi ^ b.hi;
    return r;
}

static inline void clmul64(
    ulong a,
    ulong b,
    ulong *lo,
    ulong *hi)
{
    ulong l = 0;
    ulong h = 0;

    for (uint i = 0; i < 64; ++i) {
        if ((b >> i) & 1UL) {
            l ^= a << i;

            if (i != 0)
                h ^= a >> (64 - i);
        }
    }

    *lo = l;
    *hi = h;
}

static inline gf128 gf_mul(gf128 a, gf128 b)
{
    ulong z0, z1;
    ulong z2, z3;
    ulong z4, z5;
    ulong z6, z7;

    clmul64(a.lo, b.lo, &z0, &z1);
    clmul64(a.lo, b.hi, &z2, &z3);
    clmul64(a.hi, b.lo, &z4, &z5);
    clmul64(a.hi, b.hi, &z6, &z7);

    ulong p0 = z0;
    ulong p1 = z1 ^ z2 ^ z4;
    ulong p2 = z3 ^ z5 ^ z6;
    ulong p3 = z7;

    ulong v1_lo =
        p2 ^
        (p2 << 1) ^
        (p2 << 2) ^
        (p2 << 7);

    ulong v1_hi =
        (p2 >> 63) ^
        (p2 >> 62) ^
        (p2 >> 57);

    ulong v2_lo =
        p3 ^
        (p3 << 1) ^
        (p3 << 2) ^
        (p3 << 7);

    ulong v2_hi =
        (p3 >> 63) ^
        (p3 >> 62) ^
        (p3 >> 57);

    ulong lo_lo = p0 ^ v1_lo;
    ulong lo_hi = p1 ^ v1_hi ^ v2_lo;

    ulong v3 =
        v2_hi ^
        (v2_hi << 1) ^
        (v2_hi << 2) ^
        (v2_hi << 7);

    gf128 r;
    r.lo = lo_lo ^ v3;
    r.hi = lo_hi;

    return r;
}

static inline gf128 gf_square(gf128 a)
{
    return gf_mul(a, a);
}

static inline gf128 gf_pow7(gf128 x)
{
    gf128 x2 = gf_square(x);
    gf128 x4 = gf_square(x2);
    gf128 x6 = gf_mul(x, x2);

    return gf_mul(x6, x4);
}

static inline void sbox_all(gf128 s[4])
{
    s[0] = gf_pow7(s[0]);
    s[1] = gf_pow7(s[1]);
    s[2] = gf_pow7(s[2]);
    s[3] = gf_pow7(s[3]);
}

static inline void add_round_constants(
    gf128 s[4],
    uint round)
{
    s[0] = gf_xor(s[0], ROUND_CONSTANTS[0][round]);
    s[1] = gf_xor(s[1], ROUND_CONSTANTS[1][round]);
    s[2] = gf_xor(s[2], ROUND_CONSTANTS[2][round]);
    s[3] = gf_xor(s[3], ROUND_CONSTANTS[3][round]);
}

static inline void mds_full(gf128 s[4])
{
    gf128 in[4];

    for (uint i = 0; i < 4; ++i)
        in[i] = s[i];

    for (uint i = 0; i < 4; ++i) {
        gf128 out = (gf128){0, 0};

        for (uint j = 0; j < 4; ++j) {
            gf128 term;

            if (MDS_FULL[i][j].lo == 1UL &&
                MDS_FULL[i][j].hi == 0UL) {
                term = in[j];
            } else {
                term = gf_mul(MDS_FULL[i][j], in[j]);
            }

            out = gf_xor(out, term);
        }

        s[i] = out;
    }
}

static inline void mds_partial(gf128 s[4])
{
    gf128 in[4];

    for (uint i = 0; i < 4; ++i)
        in[i] = s[i];

    for (uint i = 0; i < 4; ++i) {
        gf128 out = (gf128){0, 0};

        for (uint j = 0; j < 4; ++j) {
            gf128 term;

            if (MDS_PARTIAL[i][j].lo == 1UL &&
                MDS_PARTIAL[i][j].hi == 0UL) {
                term = in[j];
            } else {
                term = gf_mul(MDS_PARTIAL[i][j], in[j]);
            }

            out = gf_xor(out, term);
        }

        s[i] = out;
    }
}

static inline void poseidon2b_permute(gf128 s[4])
{
    /*
     * Poseidon2b:
     *
     * initial MDS_FULL
     * 4 full rounds
     * 58 partial rounds
     * 4 full rounds
     */
    mds_full(s);

    for (uint r = 0; r < 4; ++r) {
        add_round_constants(s, r);
        sbox_all(s);
        mds_full(s);
    }

    for (uint r = 4; r < 62; ++r) {
        s[0] = gf_xor(s[0], ROUND_CONSTANTS[0][r]);
        s[0] = gf_pow7(s[0]);
        mds_partial(s);
    }

    for (uint r = 62; r < 66; ++r) {
        add_round_constants(s, r);
        sbox_all(s);
        mds_full(s);
    }
}

/*
 * Clean full-permutation test entry point.
 *
 * One work-item processes one 4-element Poseidon2b state.
 */
__kernel void poseidon2b_miner_full(
    __global const gf128 *input,
    __global gf128 *output)
{
    size_t gid = get_global_id(0);

    gf128 s[4];

    for (uint i = 0; i < 4; ++i)
        s[i] = input[gid * 4 + i];

    poseidon2b_permute(s);

    for (uint i = 0; i < 4; ++i)
        output[gid * 4 + i] = s[i];
}
