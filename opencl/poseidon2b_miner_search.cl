
typedef struct {
    ulong lo;
    ulong hi;
} gf128;

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

// GENERATED from noid_core/src/hardware.rs
// Exact apply_matrix() lookup table: TOWER_TO_FLAT
__constant ulong2 TOWER_TO_FLAT[512] = {
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x0000000000000001UL, 0x0000000000000000UL),
    (ulong2)(0x7573da4a5f7710edUL, 0x3d5bd35c94646a24UL),
    (ulong2)(0x7573da4a5f7710ecUL, 0x3d5bd35c94646a24UL),
    (ulong2)(0x5e2f716f4ede412fUL, 0xa72ec17764d7ced5UL),
    (ulong2)(0x5e2f716f4ede412eUL, 0xa72ec17764d7ced5UL),
    (ulong2)(0x2b5cab2511a951c2UL, 0x9a75122bf0b3a4f1UL),
    (ulong2)(0x2b5cab2511a951c3UL, 0x9a75122bf0b3a4f1UL),
    (ulong2)(0x95ed1f57f3632d4dUL, 0x553e92e8bc0ae9a7UL),
    (ulong2)(0x95ed1f57f3632d4cUL, 0x553e92e8bc0ae9a7UL),
    (ulong2)(0xe09ec51dac143da0UL, 0x686541b4286e8383UL),
    (ulong2)(0xe09ec51dac143da1UL, 0x686541b4286e8383UL),
    (ulong2)(0xcbc26e38bdbd6c62UL, 0xf210539fd8dd2772UL),
    (ulong2)(0xcbc26e38bdbd6c63UL, 0xf210539fd8dd2772UL),
    (ulong2)(0xbeb1b472e2ca7c8fUL, 0xcf4b80c34cb94d56UL),
    (ulong2)(0xbeb1b472e2ca7c8eUL, 0xcf4b80c34cb94d56UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x740d6c968b842acbUL, 0xc7bd33d0a58cf5b4UL),
    (ulong2)(0xfd8ee716e990cf14UL, 0x486fb01f93aa169aUL),
    (ulong2)(0x89838b806214e5dfUL, 0x8fd283cf3626e32eUL),
    (ulong2)(0x27b537f28935c282UL, 0xbee4e4dc44629cf6UL),
    (ulong2)(0x53b85b6402b1e849UL, 0x7959d70ce1ee6942UL),
    (ulong2)(0xda3bd0e460a50d96UL, 0xf68b54c3d7c88a6cUL),
    (ulong2)(0xae36bc72eb21275dUL, 0x3136671372447fd8UL),
    (ulong2)(0x252b49277b1b82b4UL, 0x549810e11a88dea5UL),
    (ulong2)(0x512625b1f09fa87fUL, 0x93252331bf042b11UL),
    (ulong2)(0xd8a5ae31928b4da0UL, 0x1cf7a0fe8922c83fUL),
    (ulong2)(0xaca8c2a7190f676bUL, 0xdb4a932e2cae3d8bUL),
    (ulong2)(0x029e7ed5f22e4036UL, 0xea7cf43d5eea4253UL),
    (ulong2)(0x7693124379aa6afdUL, 0x2dc1c7edfb66b7e7UL),
    (ulong2)(0xff1099c31bbe8f22UL, 0xa2134422cd4054c9UL),
    (ulong2)(0x8b1df555903aa5e9UL, 0x65ae77f268cca17dUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xbd3d5a025c8d370aUL, 0x6198d3a7b756c056UL),
    (ulong2)(0x2924ed9040490830UL, 0xb2ef6c31981e3158UL),
    (ulong2)(0x9419b7921cc43f3aUL, 0xd377bf962f48f10eUL),
    (ulong2)(0x53ebf5c8e0d4401dUL, 0x09ee93d00b6b0403UL),
    (ulong2)(0xeed6afcabc597717UL, 0x68764077bc3dc455UL),
    (ulong2)(0x7acf1858a09d482dUL, 0xbb01ffe19375355bUL),
    (ulong2)(0xc7f2425afc107f27UL, 0xda992c462423f50dUL),
    (ulong2)(0x84cb11891ab51a3cUL, 0xff829109128b0bd8UL),
    (ulong2)(0x39f64b8b46382d36UL, 0x9e1a42aea5ddcb8eUL),
    (ulong2)(0xadeffc195afc120cUL, 0x4d6dfd388a953a80UL),
    (ulong2)(0x10d2a61b06712506UL, 0x2cf52e9f3dc3fad6UL),
    (ulong2)(0xd720e441fa615a21UL, 0xf66c02d919e00fdbUL),
    (ulong2)(0x6a1dbe43a6ec6d2bUL, 0x97f4d17eaeb6cf8dUL),
    (ulong2)(0xfe0409d1ba285211UL, 0x44836ee881fe3e83UL),
    (ulong2)(0x433953d3e6a5651bUL, 0x251bbd4f36a8fed5UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xd58e3eee6bcdb7d7UL, 0x25ce422cd636209fUL),
    (ulong2)(0x3e1b361e8a1a5bbfUL, 0x86b6a57216f08319UL),
    (ulong2)(0xeb9508f0e1d7ec68UL, 0xa378e75ec0c6a386UL),
    (ulong2)(0x6707ab5ea8ff4171UL, 0x38e5c77d01ea3f46UL),
    (ulong2)(0xb28995b0c332f6a6UL, 0x1d2b8551d7dc1fd9UL),
    (ulong2)(0x591c9d4022e51aceUL, 0xbe53620f171abc5fUL),
    (ulong2)(0x8c92a3ae4928ad19UL, 0x9b9d2023c12c9cc0UL),
    (ulong2)(0x0d4fe61188fb1bd3UL, 0x2de7ef9721e4b055UL),
    (ulong2)(0xd8c1d8ffe336ac04UL, 0x0829adbbf7d290caUL),
    (ulong2)(0x3354d00f02e1406cUL, 0xab514ae53714334cUL),
    (ulong2)(0xe6daeee1692cf7bbUL, 0x8e9f08c9e12213d3UL),
    (ulong2)(0x6a484d4f20045aa2UL, 0x150228ea200e8f13UL),
    (ulong2)(0xbfc673a14bc9ed75UL, 0x30cc6ac6f638af8cUL),
    (ulong2)(0x54537b51aa1e011dUL, 0x93b48d9836fe0c0aUL),
    (ulong2)(0x81dd45bfc1d3b6caUL, 0xb67acfb4e0c82c95UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x297b823812957b8cUL, 0x5c4feb37d9ad179bUL),
    (ulong2)(0x09f04ada993caa84UL, 0x8e36a06b2ac838dbUL),
    (ulong2)(0x208bc8e28ba9d108UL, 0xd2794b5cf3652f40UL),
    (ulong2)(0x73fb728376565fffUL, 0xc6082bd8edaaae48UL),
    (ulong2)(0x5a80f0bb64c32473UL, 0x9a47c0ef3407b9d3UL),
    (ulong2)(0x7a0b3859ef6af57bUL, 0x483e8bb3c7629693UL),
    (ulong2)(0x5370ba61fdff8ef7UL, 0x147160841ecf8108UL),
    (ulong2)(0xa2b0de27d713817aUL, 0x9b92a729351ab577UL),
    (ulong2)(0x8bcb5c1fc586faf6UL, 0xc7dd4c1eecb7a2ecUL),
    (ulong2)(0xab4094fd4e2f2bfeUL, 0x15a407421fd28dacUL),
    (ulong2)(0x823b16c55cba5072UL, 0x49ebec75c67f9a37UL),
    (ulong2)(0xd14baca4a145de85UL, 0x5d9a8cf1d8b01b3fUL),
    (ulong2)(0xf8302e9cb3d0a509UL, 0x01d567c6011d0ca4UL),
    (ulong2)(0xd8bbe67e38797401UL, 0xd3ac2c9af27823e4UL),
    (ulong2)(0xf1c064462aec0f8dUL, 0x8fe3c7ad2bd5347fUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x015afe43a7bbb48fUL, 0xb7106c3879c5c033UL),
    (ulong2)(0xdd424e375f37904fUL, 0xe638c5d1336cc967UL),
    (ulong2)(0xdc18b074f88c24c0UL, 0x5128a9e94aa90954UL),
    (ulong2)(0xf9efc7d242801381UL, 0xef30fbf0630e9d04UL),
    (ulong2)(0xf8b53991e53ba70eUL, 0x582097c81acb5d37UL),
    (ulong2)(0x24ad89e51db783ceUL, 0x09083e2150625463UL),
    (ulong2)(0x25f777a6ba0c3741UL, 0xbe18521929a79450UL),
    (ulong2)(0x101c39dffff23087UL, 0x0548ecca55b43556UL),
    (ulong2)(0x1146c79c58498408UL, 0xb25880f22c71f565UL),
    (ulong2)(0xcd5e77e8a0c5a0c8UL, 0xe370291b66d8fc31UL),
    (ulong2)(0xcc0489ab077e1447UL, 0x546045231f1d3c02UL),
    (ulong2)(0xe9f3fe0dbd722306UL, 0xea78173a36baa852UL),
    (ulong2)(0xe8a9004e1ac99789UL, 0x5d687b024f7f6861UL),
    (ulong2)(0x34b1b03ae245b349UL, 0x0c40d2eb05d66135UL),
    (ulong2)(0x35eb4e7945fe07c6UL, 0xbb50bed37c13a106UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xdae083b969cba697UL, 0xa3dc4d913d605620UL),
    (ulong2)(0xe863fce3d62d7a46UL, 0x60c413bae203bcfeUL),
    (ulong2)(0x32837f5abfe6dcd1UL, 0xc3185e2bdf63eadeUL),
    (ulong2)(0xf9e6c41f2ad92bb1UL, 0xe3f02a180f232bd7UL),
    (ulong2)(0x230647a643128d26UL, 0x402c678932437df7UL),
    (ulong2)(0x118538fcfcf451f7UL, 0x833439a2ed209729UL),
    (ulong2)(0xcb65bb45953ff760UL, 0x20e87433d040c109UL),
    (ulong2)(0x148387423931f5c8UL, 0x4983d83fd28ea811UL),
    (ulong2)(0xce6304fb50fa535fUL, 0xea5f95aeefeefe31UL),
    (ulong2)(0xfce07ba1ef1c8f8eUL, 0x2947cb85308d14efUL),
    (ulong2)(0x2600f81886d72919UL, 0x8a9b86140ded42cfUL),
    (ulong2)(0xed65435d13e8de79UL, 0xaa73f227ddad83c6UL),
    (ulong2)(0x3785c0e47a2378eeUL, 0x09afbfb6e0cdd5e6UL),
    (ulong2)(0x0506bfbec5c5a43fUL, 0xcab7e19d3fae3f38UL),
    (ulong2)(0xdfe63c07ac0e02a8UL, 0x696bac0c02ce6918UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xdcb2131788da3392UL, 0x449a77f55b99ac57UL),
    (ulong2)(0x01af9d0333b3f9e7UL, 0x611ba189d789d454UL),
    (ulong2)(0xdd1d8e14bb69ca75UL, 0x2581d67c8c107803UL),
    (ulong2)(0xe0ec21b8ad160234UL, 0xb67819253374dc0aUL),
    (ulong2)(0x3c5e32af25cc31a6UL, 0xf2e26ed068ed705dUL),
    (ulong2)(0xe143bcbb9ea5fbd3UL, 0xd763b8ace4fd085eUL),
    (ulong2)(0x3df1afac167fc841UL, 0x93f9cf59bf64a409UL),
    (ulong2)(0x188cdc592a0eb8f7UL, 0xf23ff08f2566732bUL),
    (ulong2)(0xc43ecf4ea2d48b65UL, 0xb6a5877a7effdf7cUL),
    (ulong2)(0x1923415a19bd4110UL, 0x93245106f2efa77fUL),
    (ulong2)(0xc591524d91677282UL, 0xd7be26f3a9760b28UL),
    (ulong2)(0xf860fde18718bac3UL, 0x4447e9aa1612af21UL),
    (ulong2)(0x24d2eef60fc28951UL, 0x00dd9e5f4d8b0376UL),
    (ulong2)(0xf9cf60e2b4ab4324UL, 0x255c4823c19b7b75UL),
    (ulong2)(0x257d73f53c7170b6UL, 0x61c63fd69a02d722UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xa401dc6270f59c10UL, 0x0c9ac57d3e240265UL),
    (ulong2)(0x6552505d8c638d9bUL, 0x3493b22a21cc4c39UL),
    (ulong2)(0xc1538c3ffc96118bUL, 0x380977571fe84e5cUL),
    (ulong2)(0x447251e433ed42fbUL, 0x757fa4336d785da4UL),
    (ulong2)(0xe0738d864318deebUL, 0x79e5614e535c5fc1UL),
    (ulong2)(0x212001b9bf8ecf60UL, 0x41ec16194cb4119dUL),
    (ulong2)(0x8521dddbcf7b5370UL, 0x4d76d364729013f8UL),
    (ulong2)(0x0ea377dabd44cfb2UL, 0x6d2979d4d4a74525UL),
    (ulong2)(0xaaa2abb8cdb153a2UL, 0x61b3bca9ea834740UL),
    (ulong2)(0x6bf1278731274229UL, 0x59bacbfef56b091cUL),
    (ulong2)(0xcff0fbe541d2de39UL, 0x55200e83cb4f0b79UL),
    (ulong2)(0x4ad1263e8ea98d49UL, 0x1856dde7b9df1881UL),
    (ulong2)(0xeed0fa5cfe5c1159UL, 0x14cc189a87fb1ae4UL),
    (ulong2)(0x2f83766302ca00d2UL, 0x2cc56fcd981354b8UL),
    (ulong2)(0x8b82aa01723f9cc2UL, 0x205faab0a63756ddUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x8ca02871898d1f81UL, 0x55583ad2a44322abUL),
    (ulong2)(0xc8bb21b3dda24f12UL, 0x86373be6909783ffUL),
    (ulong2)(0x441b09c2542f5093UL, 0xd36f013434d4a154UL),
    (ulong2)(0x4a53af471e53285cUL, 0x0c3f3f28407ec57aUL),
    (ulong2)(0xc6f3873697de37ddUL, 0x596705fae43de7d1UL),
    (ulong2)(0x82e88ef4c3f1674eUL, 0x8a0804ced0e94685UL),
    (ulong2)(0x0e48a6854a7c78cfUL, 0xdf503e1c74aa642eUL),
    (ulong2)(0x5ee11ac6a242e45cUL, 0x972c409ddb7f2db5UL),
    (ulong2)(0xd24132b72bcffbddUL, 0xc2747a4f7f3c0f1eUL),
    (ulong2)(0x965a3b757fe0ab4eUL, 0x111b7b7b4be8ae4aUL),
    (ulong2)(0x1afa1304f66db4cfUL, 0x444341a9efab8ce1UL),
    (ulong2)(0x14b2b581bc11cc00UL, 0x9b137fb59b01e8cfUL),
    (ulong2)(0x98129df0359cd381UL, 0xce4b45673f42ca64UL),
    (ulong2)(0xdc09943261b38312UL, 0x1d2444530b966b30UL),
    (ulong2)(0x50a9bc43e83e9c93UL, 0x487c7e81afd5499bUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x74c33c247ccf85d8UL, 0x96f9387449067407UL),
    (ulong2)(0x26fbc92fab97488bUL, 0x4cae10232a3558faUL),
    (ulong2)(0x5238f50bd758cd53UL, 0xda57285763332cfdUL),
    (ulong2)(0x4db0cc1a2df288b9UL, 0x8bb0008776ffc7e4UL),
    (ulong2)(0x3973f03e513d0d61UL, 0x1d4938f33ff9b3e3UL),
    (ulong2)(0x6b4b05358665c032UL, 0xc71e10a45cca9f1eUL),
    (ulong2)(0x1f883911faaa45eaUL, 0x51e728d015cceb19UL),
    (ulong2)(0xab53e5b75d921bd7UL, 0x1d0703e4ee2237c7UL),
    (ulong2)(0xdf90d993215d9e0fUL, 0x8bfe3b90a72443c0UL),
    (ulong2)(0x8da82c98f605535cUL, 0x51a913c7c4176f3dUL),
    (ulong2)(0xf96b10bc8acad684UL, 0xc7502bb38d111b3aUL),
    (ulong2)(0xe6e329ad7060936eUL, 0x96b7036398ddf023UL),
    (ulong2)(0x922015890caf16b6UL, 0x004e3b17d1db8424UL),
    (ulong2)(0xc018e082dbf7dbe5UL, 0xda191340b2e8a8d9UL),
    (ulong2)(0xb4dbdca6a7385e3dUL, 0x4ce02b34fbeedcdeUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xce6d0c1b0d125e3aUL, 0xff012dbc34f0271cUL),
    (ulong2)(0xb9e1b3a368dce85bUL, 0x9aea02703d99a98cUL),
    (ulong2)(0x778cbfb865ceb661UL, 0x65eb2fcc09698e90UL),
    (ulong2)(0x29498e7a13e7cdc2UL, 0xb39755229db1f4deUL),
    (ulong2)(0xe72482611ef593f8UL, 0x4c96789ea941d3c2UL),
    (ulong2)(0x90a83dd97b3b2599UL, 0x297d5752a0285d52UL),
    (ulong2)(0x5ec531c276297ba3UL, 0xd67c7aee94d87a4eUL),
    (ulong2)(0xc50a528e49742a0eUL, 0xc31176b1b646603fUL),
    (ulong2)(0x0b675e9544667434UL, 0x3c105b0d82b64723UL),
    (ulong2)(0x7cebe12d21a8c255UL, 0x59fb74c18bdfc9b3UL),
    (ulong2)(0xb286ed362cba9c6fUL, 0xa6fa597dbf2feeafUL),
    (ulong2)(0xec43dcf45a93e7ccUL, 0x708623932bf794e1UL),
    (ulong2)(0x222ed0ef5781b9f6UL, 0x8f870e2f1f07b3fdUL),
    (ulong2)(0x55a26f57324f0f97UL, 0xea6c21e3166e3d6dUL),
    (ulong2)(0x9bcf634c3f5d51adUL, 0x156d0c5f229e1a71UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xb2c2edb9407de10dUL, 0xead0dc2950f39b1eUL),
    (ulong2)(0x3cf38b78900dab86UL, 0xea3f3fe33d1d2b7dUL),
    (ulong2)(0x8e3166c1d0704a8bUL, 0x00efe3ca6deeb063UL),
    (ulong2)(0x48316675811dc923UL, 0x051bd919a56eb923UL),
    (ulong2)(0xfaf38bccc160282eUL, 0xefcb0530f59d223dUL),
    (ulong2)(0x74c2ed0d111062a5UL, 0xef24e6fa9873925eUL),
    (ulong2)(0xc60000b4516d83a8UL, 0x05f43ad3c8800940UL),
    (ulong2)(0x78e08aa4f415cb18UL, 0xba5ae9f94b493aa4UL),
    (ulong2)(0xca22671db4682a15UL, 0x508a35d01bbaa1baUL),
    (ulong2)(0x441301dc6418609eUL, 0x5065d61a765411d9UL),
    (ulong2)(0xf6d1ec6524658193UL, 0xbab50a3326a78ac7UL),
    (ulong2)(0x30d1ecd17508023bUL, 0xbf4130e0ee278387UL),
    (ulong2)(0x821301683575e336UL, 0x5591ecc9bed41899UL),
    (ulong2)(0x0c2267a9e505a9bdUL, 0x557e0f03d33aa8faUL),
    (ulong2)(0xbee08a10a57848b0UL, 0xbfaed32a83c933e4UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xb369c916cbaf8a25UL, 0x141e17265a74f46bUL),
    (ulong2)(0xa195d75a7769413bUL, 0x6c99c4af650a8451UL),
    (ulong2)(0x12fc1e4cbcc6cb1eUL, 0x7887d3893f7e703aUL),
    (ulong2)(0x9b8ea7e8fdcc8f8dUL, 0x342484168e369241UL),
    (ulong2)(0x28e76efe366305a8UL, 0x203a9330d442662aUL),
    (ulong2)(0x3a1b70b28aa5ceb6UL, 0x58bd40b9eb3c1610UL),
    (ulong2)(0x8972b9a4410a4493UL, 0x4ca3579fb148e27bUL),
    (ulong2)(0xf8aa7027b065617dUL, 0xaa7a29ea7ae49742UL),
    (ulong2)(0x4bc3b9317bcaeb58UL, 0xbe643ecc20906329UL),
    (ulong2)(0x593fa77dc70c2046UL, 0xc6e3ed451fee1313UL),
    (ulong2)(0xea566e6b0ca3aa63UL, 0xd2fdfa63459ae778UL),
    (ulong2)(0x6324d7cf4da9eef0UL, 0x9e5eadfcf4d20503UL),
    (ulong2)(0xd04d1ed9860664d5UL, 0x8a40badaaea6f168UL),
    (ulong2)(0xc2b100953ac0afcbUL, 0xf2c7695391d88152UL),
    (ulong2)(0x71d8c983f16f25eeUL, 0xe6d97e75cbac7539UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x11c92a1a19cf232cUL, 0xd345f319cf8d0c57UL),
    (ulong2)(0x529470fbcfa3f60eUL, 0xbf7956da104bb930UL),
    (ulong2)(0x435d5ae1d66cd522UL, 0x6c3ca5c3dfc6b567UL),
    (ulong2)(0x8dd54ec40c51d402UL, 0xaf3c8a62ae50f00dUL),
    (ulong2)(0x9c1c64de159ef72eUL, 0x7c79797b61ddfc5aUL),
    (ulong2)(0xdf413e3fc3f2220cUL, 0x1045dcb8be1b493dUL),
    (ulong2)(0xce881425da3d0120UL, 0xc3002fa17196456aUL),
    (ulong2)(0x91589271eefd831eUL, 0x9f40c849b5f5405fUL),
    (ulong2)(0x8091b86bf732a032UL, 0x4c053b507a784c08UL),
    (ulong2)(0xc3cce28a215e7510UL, 0x20399e93a5bef96fUL),
    (ulong2)(0xd205c8903891563cUL, 0xf37c6d8a6a33f538UL),
    (ulong2)(0x1c8ddcb5e2ac571cUL, 0x307c422b1ba5b052UL),
    (ulong2)(0x0d44f6affb637430UL, 0xe339b132d428bc05UL),
    (ulong2)(0x4e19ac4e2d0fa112UL, 0x8f0514f10bee0962UL),
    (ulong2)(0x5fd0865434c0823eUL, 0x5c40e7e8c4630535UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x3eac43b40fe78613UL, 0x82131c9fe93d42feUL),
    (ulong2)(0xb76d3ed1cee66addUL, 0xee5d797779ee1b27UL),
    (ulong2)(0x89c17d65c101ecceUL, 0x6c4e65e890d359d9UL),
    (ulong2)(0x10da3eeb0dcaa4f4UL, 0xb7438c8a8d29a427UL),
    (ulong2)(0x2e767d5f022d22e7UL, 0x355090156414e6d9UL),
    (ulong2)(0xa7b7003ac32cce29UL, 0x591ef5fdf4c7bf00UL),
    (ulong2)(0x991b438ecccb483aUL, 0xdb0de9621dfafdfeUL),
    (ulong2)(0xc7b8dbfb652cfb52UL, 0x0884f37a7a1f9068UL),
    (ulong2)(0xf914984f6acb7d41UL, 0x8a97efe59322d296UL),
    (ulong2)(0x70d5e52aabca918fUL, 0xe6d98a0d03f18b4fUL),
    (ulong2)(0x4e79a69ea42d179cUL, 0x64ca9692eaccc9b1UL),
    (ulong2)(0xd762e51068e65fa6UL, 0xbfc77ff0f736344fUL),
    (ulong2)(0xe9cea6a46701d9b5UL, 0x3dd4636f1e0b76b1UL),
    (ulong2)(0x600fdbc1a600357bUL, 0x519a06878ed82f68UL),
    (ulong2)(0x5ea39875a9e7b368UL, 0xd3891a1867e56d96UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x521ef0fd91f39162UL, 0x9b027a35e430ddaaUL),
    (ulong2)(0xfbcd5ead6935a75cUL, 0xb619b3c28e9fd05eUL),
    (ulong2)(0xa9d3ae50f8c6363eUL, 0x2d1bc9f76aaf0df4UL),
    (ulong2)(0x3874b2e8163127c7UL, 0x0cad054f32f96604UL),
    (ulong2)(0x6a6a421587c2b6a5UL, 0x97af7f7ad6c9bbaeUL),
    (ulong2)(0xc3b9ec457f04809bUL, 0xbab4b68dbc66b65aUL),
    (ulong2)(0x91a71cb8eef711f9UL, 0x21b6ccb858566bf0UL),
    (ulong2)(0x0077f3dd83fbd947UL, 0x8ec4fff59680eaaeUL),
    (ulong2)(0x5269032012084825UL, 0x15c685c072b03704UL),
    (ulong2)(0xfbbaad70eace7e1bUL, 0x38dd4c37181f3af0UL),
    (ulong2)(0xa9a45d8d7b3def79UL, 0xa3df3602fc2fe75aUL),
    (ulong2)(0x3803413595cafe80UL, 0x8269fabaa4798caaUL),
    (ulong2)(0x6a1db1c804396fe2UL, 0x196b808f40495100UL),
    (ulong2)(0xc3ce1f98fcff59dcUL, 0x347049782ae65cf4UL),
    (ulong2)(0x91d0ef656d0cc8beUL, 0xaf72334dced6815eUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xcea34c16608a96a7UL, 0x50d8597763331f8dUL),
    (ulong2)(0xdd0d62d96a32751dUL, 0x6d03608d9f2a6e86UL),
    (ulong2)(0x13ae2ecf0ab8e3baUL, 0x3ddb39fafc19710bUL),
    (ulong2)(0x75dea1bb5742ad75UL, 0x49110668fefb4469UL),
    (ulong2)(0xbb7dedad37c83bd2UL, 0x19c95f1f9dc85be4UL),
    (ulong2)(0xa8d3c3623d70d868UL, 0x241266e561d12aefUL),
    (ulong2)(0x66708f745dfa4ecfUL, 0x74ca3f9202e23562UL),
    (ulong2)(0x37cf5d286ba5868aUL, 0xde3c54e5dc0bf891UL),
    (ulong2)(0xf96c113e0b2f102dUL, 0x8ee40d92bf38e71cUL),
    (ulong2)(0xeac23ff10197f397UL, 0xb33f346843219617UL),
    (ulong2)(0x246173e7611d6530UL, 0xe3e76d1f2012899aUL),
    (ulong2)(0x4211fc933ce72bffUL, 0x972d528d22f0bcf8UL),
    (ulong2)(0x8cb2b0855c6dbd58UL, 0xc7f50bfa41c3a375UL),
    (ulong2)(0x9f1c9e4a56d55ee2UL, 0xfa2e3200bddad27eUL),
    (ulong2)(0x51bfd25c365fc845UL, 0xaaf66b77dee9cdf3UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x0fb426800e5b4f0bUL, 0x61121e79a40f6500UL),
    (ulong2)(0xa5ef06f1eda08fd6UL, 0x0996944c65744223UL),
    (ulong2)(0xaa5b2071e3fbc0ddUL, 0x68848a35c17b2723UL),
    (ulong2)(0xcde547094cf05431UL, 0xda3cbe76b9f383e1UL),
    (ulong2)(0xc251618942ab1b3aUL, 0xbb2ea00f1dfce6e1UL),
    (ulong2)(0x680a41f8a150dbe7UL, 0xd3aa2a3adc87c1c2UL),
    (ulong2)(0x67be6778af0b94ecUL, 0xb2b834437888a4c2UL),
    (ulong2)(0x33c11156ff19d609UL, 0xa3a2b75fb155f137UL),
    (ulong2)(0x3c7537d6f1429902UL, 0xc2b0a926155a9437UL),
    (ulong2)(0x962e17a712b959dfUL, 0xaa342313d421b314UL),
    (ulong2)(0x999a31271ce216d4UL, 0xcb263d6a702ed614UL),
    (ulong2)(0xfe24565fb3e98238UL, 0x799e092908a672d6UL),
    (ulong2)(0xf19070dfbdb2cd33UL, 0x188c1750aca917d6UL),
    (ulong2)(0x5bcb50ae5e490deeUL, 0x70089d656dd230f5UL),
    (ulong2)(0x547f762e501242e5UL, 0x111a831cc9dd55f5UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xd9a33f42f0a893adUL, 0xfb4449056e5c6fb2UL),
    (ulong2)(0x3d0743873dc1264aUL, 0x0128f41399db2864UL),
    (ulong2)(0xe4a47cc5cd69b5e7UL, 0xfa6cbd16f78747d6UL),
    (ulong2)(0xbe235156d0bf9197UL, 0xff09c9c044dd9342UL),
    (ulong2)(0x67806e142017023aUL, 0x044d80c52a81fcf0UL),
    (ulong2)(0x832412d1ed7eb7ddUL, 0xfe213dd3dd06bb26UL),
    (ulong2)(0x5a872d931dd62470UL, 0x056574d6b35ad494UL),
    (ulong2)(0xd921f2c49b28d8e7UL, 0xcbb652c3d0896219UL),
    (ulong2)(0x0082cd866b804b4aUL, 0x30f21bc6bed50dabUL),
    (ulong2)(0xe426b143a6e9feadUL, 0xca9ea6d049524a7dUL),
    (ulong2)(0x3d858e0156416d00UL, 0x31daefd5270e25cfUL),
    (ulong2)(0x6702a3924b974970UL, 0x34bf9b039454f15bUL),
    (ulong2)(0xbea19cd0bb3fdaddUL, 0xcffbd206fa089ee9UL),
    (ulong2)(0x5a05e01576566f3aUL, 0x35976f100d8fd93fUL),
    (ulong2)(0x83a6df5786fefc97UL, 0xced3261563d3b68dUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x97b666aa7d3d8d45UL, 0x61102a46cc01cdf6UL),
    (ulong2)(0x9d1e33a8f128eeddUL, 0x717c5e9d4a0731b6UL),
    (ulong2)(0x0aa855028c156398UL, 0x106c74db8606fc40UL),
    (ulong2)(0xb5b84c3d08a26402UL, 0xd3498c6de1db846fUL),
    (ulong2)(0x220e2a97759fe947UL, 0xb259a62b2dda4999UL),
    (ulong2)(0x28a67f95f98a8adfUL, 0xa235d2f0abdcb5d9UL),
    (ulong2)(0xbf10193f84b7079aUL, 0xc325f8b667dd782fUL),
    (ulong2)(0x42bb042dd2decd90UL, 0x1d074123e95f2217UL),
    (ulong2)(0xd50d6287afe340d5UL, 0x7c176b65255eefe1UL),
    (ulong2)(0xdfa5378523f6234dUL, 0x6c7b1fbea35813a1UL),
    (ulong2)(0x4813512f5ecbae08UL, 0x0d6b35f86f59de57UL),
    (ulong2)(0xf7034810da7ca992UL, 0xce4ecd4e0884a678UL),
    (ulong2)(0x60b52ebaa74124d7UL, 0xaf5ee708c4856b8eUL),
    (ulong2)(0x6a1d7bb82b54474fUL, 0xbf3293d3428397ceUL),
    (ulong2)(0xfdab1d125669ca0aUL, 0xde22b9958e825a38UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xe8a3a82b147053beUL, 0x49dd214c370bbb55UL),
    (ulong2)(0xb16b27c0fd1c309fUL, 0x18af31dbbab9458eUL),
    (ulong2)(0x59c88febe96c6321UL, 0x517210978db2fedbUL),
    (ulong2)(0x2289961803263c34UL, 0x61e2d820490e7be3UL),
    (ulong2)(0xca2a3e3317566f8aUL, 0x283ff96c7e05c0b6UL),
    (ulong2)(0x93e2b1d8fe3a0cabUL, 0x794de9fbf3b73e6dUL),
    (ulong2)(0x7b4119f3ea4a5f15UL, 0x3090c8b7c4bc8538UL),
    (ulong2)(0x6bcebc6f2ea6aac5UL, 0x107fa373d6015330UL),
    (ulong2)(0x836d14443ad6f97bUL, 0x59a2823fe10ae865UL),
    (ulong2)(0xdaa59bafd3ba9a5aUL, 0x08d092a86cb816beUL),
    (ulong2)(0x32063384c7cac9e4UL, 0x410db3e45bb3adebUL),
    (ulong2)(0x49472a772d8096f1UL, 0x719d7b539f0f28d3UL),
    (ulong2)(0xa1e4825c39f0c54fUL, 0x38405a1fa8049386UL),
    (ulong2)(0xf82c0db7d09ca66eUL, 0x69324a8825b66d5dUL),
    (ulong2)(0x108fa59cc4ecf5d0UL, 0x20ef6bc412bdd608UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x813397e8a778f8cdUL, 0x3df814508cd896e7UL),
    (ulong2)(0xe353d0c73604d58eUL, 0x4021c8146d9e0d33UL),
    (ulong2)(0x6260472f917c2d43UL, 0x7dd9dc44e1469bd4UL),
    (ulong2)(0x3c5ccee03d280f85UL, 0xee2c21eb40816098UL),
    (ulong2)(0xbd6f59089a50f748UL, 0xd3d435bbcc59f67fUL),
    (ulong2)(0xdf0f1e270b2cda0bUL, 0xae0de9ff2d1f6dabUL),
    (ulong2)(0x5e3c89cfac5422c6UL, 0x93f5fdafa1c7fb4cUL),
    (ulong2)(0x28ab2ed8e3fc8320UL, 0xe77f3ff735b6b82aUL),
    (ulong2)(0xa998b93044847bedUL, 0xda872ba7b96e2ecdUL),
    (ulong2)(0xcbf8fe1fd5f856aeUL, 0xa75ef7e35828b519UL),
    (ulong2)(0x4acb69f77280ae63UL, 0x9aa6e3b3d4f023feUL),
    (ulong2)(0x14f7e038ded48ca5UL, 0x09531e1c7537d8b2UL),
    (ulong2)(0x95c477d079ac7468UL, 0x34ab0a4cf9ef4e55UL),
    (ulong2)(0xf7a430ffe8d0592bUL, 0x4972d60818a9d581UL),
    (ulong2)(0x7697a7174fa8a1e6UL, 0x748ac25894714366UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x5eefff30ae3f6028UL, 0x8eee1c68d1cbc4b5UL),
    (ulong2)(0xb55c0f419db06696UL, 0xfabf471e3d132661UL),
    (ulong2)(0xebb3f071338f06beUL, 0x74515b76ecd8e2d4UL),
    (ulong2)(0xd48dde5999c10f7dUL, 0x69a006d6b32d6e23UL),
    (ulong2)(0x8a62216937fe6f55UL, 0xe74e1abe62e6aa96UL),
    (ulong2)(0x61d1d118047169ebUL, 0x931f41c88e3e4842UL),
    (ulong2)(0x3f3e2e28aa4e09c3UL, 0x1df15da05ff58cf7UL),
    (ulong2)(0xaf55c6a03819c6f1UL, 0x389f96875b52a0cdUL),
    (ulong2)(0xf1ba39909626a6d9UL, 0xb6718aef8a996478UL),
    (ulong2)(0x1a09c9e1a5a9a067UL, 0xc220d199664186acUL),
    (ulong2)(0x44e636d10b96c04fUL, 0x4ccecdf1b78a4219UL),
    (ulong2)(0x7bd818f9a1d8c98cUL, 0x513f9051e87fceeeUL),
    (ulong2)(0x2537e7c90fe7a9a4UL, 0xdfd18c3939b40a5bUL),
    (ulong2)(0xce8417b83c68af1aUL, 0xab80d74fd56ce88fUL),
    (ulong2)(0x906be8889257cf32UL, 0x256ecb2704a72c3aUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x4625d7953d3190bdUL, 0xd349d8dacbf6f4a0UL),
    (ulong2)(0x39f5117acfd01714UL, 0xbe8502448366699eUL),
    (ulong2)(0x7fd0c6eff2e187a9UL, 0x6dccda9e48909d3eUL),
    (ulong2)(0xffc21bd9c630459bUL, 0xa3839a34242c75f7UL),
    (ulong2)(0xb9e7cc4cfb01d526UL, 0x70ca42eeefda8157UL),
    (ulong2)(0xc6370aa309e0528fUL, 0x1d069870a74a1c69UL),
    (ulong2)(0x8012dd3634d1c232UL, 0xce4f40aa6cbce8c9UL),
    (ulong2)(0xf05d8a9a760e9407UL, 0xb3c2ef7bbf449f8aUL),
    (ulong2)(0xb6785d0f4b3f04baUL, 0x608b37a174b26b2aUL),
    (ulong2)(0xc9a89be0b9de8313UL, 0x0d47ed3f3c22f614UL),
    (ulong2)(0x8f8d4c7584ef13aeUL, 0xde0e35e5f7d402b4UL),
    (ulong2)(0x0f9f9143b03ed19cUL, 0x1041754f9b68ea7dUL),
    (ulong2)(0x49ba46d68d0f4121UL, 0xc308ad95509e1eddUL),
    (ulong2)(0x366a80397feec688UL, 0xaec4770b180e83e3UL),
    (ulong2)(0x704f57ac42df5635UL, 0x7d8dafd1d3f87743UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xa7c2e5445f874b2dUL, 0x694d27a4f1ba1074UL),
    (ulong2)(0xb6dff2cf4849ec19UL, 0x0855c18884723bdcUL),
    (ulong2)(0x111d178b17cea734UL, 0x6118e62c75c82ba8UL),
    (ulong2)(0x06afb9ccb802b7dbUL, 0x58d911a330ce147dUL),
    (ulong2)(0xa16d5c88e785fcf6UL, 0x31943607c1740409UL),
    (ulong2)(0xb0704b03f04b5bc2UL, 0x508cd02bb4bc2fa1UL),
    (ulong2)(0x17b2ae47afcc10efUL, 0x39c1f78f45063fd5UL),
    (ulong2)(0xf5db695eda550c2aUL, 0xde87764a4427a4afUL),
    (ulong2)(0x52198c1a85d24707UL, 0xb7ca51eeb59db4dbUL),
    (ulong2)(0x43049b91921ce033UL, 0xd6d2b7c2c0559f73UL),
    (ulong2)(0xe4c67ed5cd9bab1eUL, 0xbf9f906631ef8f07UL),
    (ulong2)(0xf374d0926257bbf1UL, 0x865e67e974e9b0d2UL),
    (ulong2)(0x54b635d63dd0f0dcUL, 0xef13404d8553a0a6UL),
    (ulong2)(0x45ab225d2a1e57e8UL, 0x8e0ba661f09b8b0eUL),
    (ulong2)(0xe269c71975991cc5UL, 0xe74681c501219b7aUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xf2016301eb7e4009UL, 0xbfa47075ed035846UL),
    (ulong2)(0x3f0ff542099a9636UL, 0xd7335e553652ccbcUL),
    (ulong2)(0xcd0e9643e2e4d63fUL, 0x68972e20db5194faUL),
    (ulong2)(0xc1440aa1c612391bUL, 0x00ede815347e14ceUL),
    (ulong2)(0x334569a02d6c7912UL, 0xbf499860d97d4c88UL),
    (ulong2)(0xfe4bffe3cf88af2dUL, 0xd7deb640022cd872UL),
    (ulong2)(0x0c4a9ce224f6ef24UL, 0x687ac635ef2f8034UL),
    (ulong2)(0xaa73764edddd4ff6UL, 0x96e7e4d4efb40213UL),
    (ulong2)(0x5872154f36a30fffUL, 0x294394a102b75a55UL),
    (ulong2)(0x957c830cd447d9c0UL, 0x41d4ba81d9e6ceafUL),
    (ulong2)(0x677de00d3f3999c9UL, 0xfe70caf434e596e9UL),
    (ulong2)(0x6b377cef1bcf76edUL, 0x960a0cc1dbca16ddUL),
    (ulong2)(0x99361feef0b136e4UL, 0x29ae7cb436c94e9bUL),
    (ulong2)(0x543889ad1255e0dbUL, 0x41395294ed98da61UL),
    (ulong2)(0xa639eaacf92ba0d2UL, 0xfe9d22e1009b8227UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x36d286b7e1d3b32bUL, 0x399c2dd474a47a3fUL),
    (ulong2)(0xdc62c5f814d4f79cUL, 0xcaaeb9876b882f04UL),
    (ulong2)(0xeab0434ff50744b7UL, 0xf33294531f2c553bUL),
    (ulong2)(0xfe9954f7999e2f5aUL, 0x5c7127c96b5c4300UL),
    (ulong2)(0xc84bd240784d9c71UL, 0x65ed0a1d1ff8393fUL),
    (ulong2)(0x22fb910f8d4ad8c6UL, 0x96df9e4e00d46c04UL),
    (ulong2)(0x142917b86c996bedUL, 0xaf43b39a7470163bUL),
    (ulong2)(0x59278e0135930986UL, 0xfe1178bc295c981eUL),
    (ulong2)(0x6ff508b6d440baadUL, 0xc78d55685df8e221UL),
    (ulong2)(0x85454bf92147fe1aUL, 0x34bfc13b42d4b71aUL),
    (ulong2)(0xb397cd4ec0944d31UL, 0x0d23ecef3670cd25UL),
    (ulong2)(0xa7bedaf6ac0d26dcUL, 0xa2605f754200db1eUL),
    (ulong2)(0x916c5c414dde95f7UL, 0x9bfc72a136a4a121UL),
    (ulong2)(0x7bdc1f0eb8d9d140UL, 0x68cee6f22988f41aUL),
    (ulong2)(0x4d0e99b9590a626bUL, 0x5152cb265d2c8e25UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x6a9acc3e49877fd2UL, 0xe3a9112535f5f53bUL),
    (ulong2)(0x59ff8f7991cf6badUL, 0x3d6051a6cf2bb75eUL),
    (ulong2)(0x33654347d848147fUL, 0xdec94083fade4265UL),
    (ulong2)(0x717181ec5f826ba3UL, 0x30d97c016d51144bUL),
    (ulong2)(0x1beb4dd216051471UL, 0xd3706d2458a4e170UL),
    (ulong2)(0x288e0e95ce4d000eUL, 0x0db92da7a27aa315UL),
    (ulong2)(0x4214c2ab87ca7fdcUL, 0xee103c82978f562eUL),
    (ulong2)(0xe7e81e99b46920eeUL, 0xe3b2c049622bdaa3UL),
    (ulong2)(0x8d72d2a7fdee5f3cUL, 0x001bd16c57de2f98UL),
    (ulong2)(0xbe1791e025a64b43UL, 0xded291efad006dfdUL),
    (ulong2)(0xd48d5dde6c213491UL, 0x3d7b80ca98f598c6UL),
    (ulong2)(0x96999f75ebeb4b4dUL, 0xd36bbc480f7acee8UL),
    (ulong2)(0xfc03534ba26c349fUL, 0x30c2ad6d3a8f3bd3UL),
    (ulong2)(0xcf66100c7a2420e0UL, 0xee0bedeec05179b6UL),
    (ulong2)(0xa5fcdc3233a35f32UL, 0x0da2fccbf5a48c8dUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x57aacf948f0aca14UL, 0x547744dda2f01454UL),
    (ulong2)(0x1b00d1cf2675dacfUL, 0x822e4b280fbbaf70UL),
    (ulong2)(0x4caa1e5ba97f10dbUL, 0xd6590ff5ad4bbb24UL),
    (ulong2)(0xb735a39898b93504UL, 0x013dae85beaa0a8bUL),
    (ulong2)(0xe09f6c0c17b3ff10UL, 0x554aea581c5a1edfUL),
    (ulong2)(0xac357257beccefcbUL, 0x8313e5adb111a5fbUL),
    (ulong2)(0xfb9fbdc331c625dfUL, 0xd764a17013e1b1afUL),
    (ulong2)(0x299a17f008c4cd8cUL, 0xaeed75387d73a822UL),
    (ulong2)(0x7e30d86487ce0798UL, 0xfa9a31e5df83bc76UL),
    (ulong2)(0x329ac63f2eb11743UL, 0x2cc33e1072c80752UL),
    (ulong2)(0x653009aba1bbdd57UL, 0x78b47acdd0381306UL),
    (ulong2)(0x9eafb468907df888UL, 0xafd0dbbdc3d9a2a9UL),
    (ulong2)(0xc9057bfc1f77329cUL, 0xfba79f606129b6fdUL),
    (ulong2)(0x85af65a7b6082247UL, 0x2dfe9095cc620dd9UL),
    (ulong2)(0xd205aa333902e853UL, 0x7989d4486e92198dUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xb21b66e82f85dea7UL, 0x2d4278deab8e9cdeUL),
    (ulong2)(0x73484e5f3c83ed61UL, 0x05745efd4f8b0dc8UL),
    (ulong2)(0xc15328b7130633c6UL, 0x28362623e4059116UL),
    (ulong2)(0x1b55c9bd216a36cdUL, 0x456a83da121c2fc6UL),
    (ulong2)(0xa94eaf550eefe86aUL, 0x6828fb04b992b318UL),
    (ulong2)(0x681d87e21de9dbacUL, 0x401edd275d97220eUL),
    (ulong2)(0xda06e10a326c050bUL, 0x6d5ca5f9f619bed0UL),
    (ulong2)(0x89547d0e69bac59bUL, 0x6ccd4a5d08191138UL),
    (ulong2)(0x3b4f1be6463f1b3cUL, 0x418f3283a3978de6UL),
    (ulong2)(0xfa1c3351553928faUL, 0x69b914a047921cf0UL),
    (ulong2)(0x480755b97abcf65dUL, 0x44fb6c7eec1c802eUL),
    (ulong2)(0x9201b4b348d0f356UL, 0x29a7c9871a053efeUL),
    (ulong2)(0x201ad25b67552df1UL, 0x04e5b159b18ba220UL),
    (ulong2)(0xe149faec74531e37UL, 0x2cd3977a558e3336UL),
    (ulong2)(0x53529c045bd6c090UL, 0x0191efa4fe00afe8UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x06c93f34451b5abeUL, 0xbec7bd6ab8e7169cUL),
    (ulong2)(0xfaafc4143960829aUL, 0xb9e80fcc7ca8fe72UL),
    (ulong2)(0xfc66fb207c7bd824UL, 0x072fb2a6c44fe8eeUL),
    (ulong2)(0xf8407e5f20d87c6aUL, 0xbbfefb3dd63f00f3UL),
    (ulong2)(0xfe89416b65c326d4UL, 0x053946576ed8166fUL),
    (ulong2)(0x02efba4b19b8fef0UL, 0x0216f4f1aa97fe81UL),
    (ulong2)(0x0426857f5ca3a44eUL, 0xbcd1499b1270e81dUL),
    (ulong2)(0xee6fdbd0738b4c99UL, 0x91b376701a386e5aUL),
    (ulong2)(0xe8a6e4e436901627UL, 0x2f74cb1aa2df78c6UL),
    (ulong2)(0x14c01fc44aebce03UL, 0x285b79bc66909028UL),
    (ulong2)(0x120920f00ff094bdUL, 0x969cc4d6de7786b4UL),
    (ulong2)(0x162fa58f535330f3UL, 0x2a4d8d4dcc076ea9UL),
    (ulong2)(0x10e69abb16486a4dUL, 0x948a302774e07835UL),
    (ulong2)(0xec80619b6a33b269UL, 0x93a58281b0af90dbUL),
    (ulong2)(0xea495eaf2f28e8d7UL, 0x2d623feb08488647UL)
};

// GENERATED from noid_core/src/hardware.rs
// Exact apply_matrix() lookup table: FLAT_TO_TOWER
__constant ulong2 FLAT_TO_TOWER[512] = {
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x0000000000000001UL, 0x0000000000000000UL),
    (ulong2)(0x3426e20fcdbc3b96UL, 0xe9453afbbb5efa68UL),
    (ulong2)(0x3426e20fcdbc3b97UL, 0xe9453afbbb5efa68UL),
    (ulong2)(0x04c63c03208aeb8aUL, 0x1c17484568577f0bUL),
    (ulong2)(0x04c63c03208aeb8bUL, 0x1c17484568577f0bUL),
    (ulong2)(0x30e0de0ced36d01cUL, 0xf55272bed3098563UL),
    (ulong2)(0x30e0de0ced36d01dUL, 0xf55272bed3098563UL),
    (ulong2)(0xca9f6f0b3f58b122UL, 0x04adf5cfe6486e00UL),
    (ulong2)(0xca9f6f0b3f58b123UL, 0x04adf5cfe6486e00UL),
    (ulong2)(0xfeb98d04f2e48ab4UL, 0xede8cf345d169468UL),
    (ulong2)(0xfeb98d04f2e48ab5UL, 0xede8cf345d169468UL),
    (ulong2)(0xce5953081fd25aa8UL, 0x18babd8a8e1f110bUL),
    (ulong2)(0xce5953081fd25aa9UL, 0x18babd8a8e1f110bUL),
    (ulong2)(0xfa7fb107d26e613eUL, 0xf1ff87713541eb63UL),
    (ulong2)(0xfa7fb107d26e613fUL, 0xf1ff87713541eb63UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x90920a4453c26f86UL, 0x4bad34793b579f5cUL),
    (ulong2)(0xf01fbedeb26a8df9UL, 0xfc24da72abcee7f5UL),
    (ulong2)(0x608db49ae1a8e27fUL, 0xb789ee0b909978a9UL),
    (ulong2)(0xc2e119ec5af1fc07UL, 0x1091dcf0350c7dc7UL),
    (ulong2)(0x527313a809339381UL, 0x5b3ce8890e5be29bUL),
    (ulong2)(0x32fea732e89b71feUL, 0xecb506829ec29a32UL),
    (ulong2)(0xa26cad76bb591e78UL, 0xa71832fba595056eUL),
    (ulong2)(0x967e8ef8074dced9UL, 0x472c8b0c136435beUL),
    (ulong2)(0x06ec84bc548fa15fUL, 0x0c81bf752833aae2UL),
    (ulong2)(0x66613026b5274320UL, 0xbb08517eb8aad24bUL),
    (ulong2)(0xf6f33a62e6e52ca6UL, 0xf0a5650783fd4d17UL),
    (ulong2)(0x549f97145dbc32deUL, 0x57bd57fc26684879UL),
    (ulong2)(0xc40d9d500e7e5d58UL, 0x1c1063851d3fd725UL),
    (ulong2)(0xa48029caefd6bf27UL, 0xab998d8e8da6af8cUL),
    (ulong2)(0x3412238ebc14d0a1UL, 0xe034b9f7b6f130d0UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x6fcb07ebd4630981UL, 0xee63773a41b8bbd2UL),
    (ulong2)(0xbe42ae0de5fd0d8dUL, 0x02fc50cfe61e714bUL),
    (ulong2)(0xd189a9e6319e040cUL, 0xec9f27f5a7a6ca99UL),
    (ulong2)(0xa9736c6bb7c2895cUL, 0x168a685e2f21945aUL),
    (ulong2)(0xc6b86b8063a180ddUL, 0xf8e91f646e992f88UL),
    (ulong2)(0x1731c266523f84d1UL, 0x14763891c93fe511UL),
    (ulong2)(0x78fac58d865c8d50UL, 0xfa154fab88875ec3UL),
    (ulong2)(0x6645d4935276b15dUL, 0x0dbec3dae3216981UL),
    (ulong2)(0x098ed3788615b8dcUL, 0xe3ddb4e0a299d253UL),
    (ulong2)(0xd8077a9eb78bbcd0UL, 0x0f429315053f18caUL),
    (ulong2)(0xb7cc7d7563e8b551UL, 0xe121e42f4487a318UL),
    (ulong2)(0xcf36b8f8e5b43801UL, 0x1b34ab84cc00fddbUL),
    (ulong2)(0xa0fdbf1331d73180UL, 0xf557dcbe8db84609UL),
    (ulong2)(0x717416f50049358cUL, 0x19c8fb4b2a1e8c90UL),
    (ulong2)(0x1ebf111ed42a3c0dUL, 0xf7ab8c716ba63742UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xc8bfedc18a3078d9UL, 0x1bcdfffc8342ca4dUL),
    (ulong2)(0x793f115bf0d1ddc0UL, 0x1e81239207e6ef6eUL),
    (ulong2)(0xb180fc9a7ae1a519UL, 0x054cdc6e84a42523UL),
    (ulong2)(0x4e5b36e05726ffafUL, 0xbe1603d9dcb9eef7UL),
    (ulong2)(0x86e4db21dd168776UL, 0xa5dbfc255ffb24baUL),
    (ulong2)(0x376427bba7f7226fUL, 0xa097204bdb5f0199UL),
    (ulong2)(0xffdbca7a2dc75ab6UL, 0xbb5adfb7581dcbd4UL),
    (ulong2)(0x5535ccbca9496a06UL, 0xe1b26ab22e51d658UL),
    (ulong2)(0x9d8a217d237912dfUL, 0xfa7f954ead131c15UL),
    (ulong2)(0x2c0adde75998b7c6UL, 0xff33492029b73936UL),
    (ulong2)(0xe4b53026d3a8cf1fUL, 0xe4feb6dcaaf5f37bUL),
    (ulong2)(0x1b6efa5cfe6f95a9UL, 0x5fa4696bf2e838afUL),
    (ulong2)(0xd3d1179d745fed70UL, 0x4469969771aaf2e2UL),
    (ulong2)(0x6251eb070ebe4869UL, 0x41254af9f50ed7c1UL),
    (ulong2)(0xaaee06c6848e30b0UL, 0x5ae8b505764c1d8cUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x844808cc9a48d50cUL, 0x09f9e05a29dd55faUL),
    (ulong2)(0xc2ded8391e34e8e9UL, 0x021aaba3a74e307cUL),
    (ulong2)(0x4696d0f5847c3de5UL, 0x0be34bf98e936586UL),
    (ulong2)(0x7f157b26e887a38aUL, 0x04966d3e1afc209dUL),
    (ulong2)(0xfb5d73ea72cf7686UL, 0x0d6f8d6433217567UL),
    (ulong2)(0xbdcba31ff6b34b63UL, 0x068cc69dbdb210e1UL),
    (ulong2)(0x3983abd36cfb9e6fUL, 0x0f7526c7946f451bUL),
    (ulong2)(0x7a5602c30e34c669UL, 0xaf7446de9259fba1UL),
    (ulong2)(0xfe1e0a0f947c1365UL, 0xa68da684bb84ae5bUL),
    (ulong2)(0xb888dafa10002e80UL, 0xad6eed7d3517cbddUL),
    (ulong2)(0x3cc0d2368a48fb8cUL, 0xa4970d271cca9e27UL),
    (ulong2)(0x054379e5e6b365e3UL, 0xabe22be088a5db3cUL),
    (ulong2)(0x810b71297cfbb0efUL, 0xa21bcbbaa1788ec6UL),
    (ulong2)(0xc79da1dcf8878d0aUL, 0xa9f880432febeb40UL),
    (ulong2)(0x43d5a91062cf5806UL, 0xa00160190636bebaUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xf9d1882fb0bc5ba0UL, 0x0f25b0fd6d577f77UL),
    (ulong2)(0x3cd4e7a6ec5dfa4bUL, 0x1d459f2a48cefb1cUL),
    (ulong2)(0xc5056f895ce1a1ebUL, 0x12602fd72599846bUL),
    (ulong2)(0xc65ad9ea7ca055a4UL, 0x5177981cdf5b750cUL),
    (ulong2)(0x3f8b51c5cc1c0e04UL, 0x5e5228e1b20c0a7bUL),
    (ulong2)(0xfa8e3e4c90fdafefUL, 0x4c32073697958e10UL),
    (ulong2)(0x035fb6632041f44fUL, 0x4317b7cbfac2f167UL),
    (ulong2)(0xc92da6c12526013eUL, 0x51f9fbcea7da4578UL),
    (ulong2)(0x30fc2eee959a5a9eUL, 0x5edc4b33ca8d3a0fUL),
    (ulong2)(0xf5f94167c97bfb75UL, 0x4cbc64e4ef14be64UL),
    (ulong2)(0x0c28c94879c7a0d5UL, 0x4399d4198243c113UL),
    (ulong2)(0x0f777f2b5986549aUL, 0x008e63d278813074UL),
    (ulong2)(0xf6a6f704e93a0f3aUL, 0x0fabd32f15d64f03UL),
    (ulong2)(0x33a3988db5dbaed1UL, 0x1dcbfcf8304fcb68UL),
    (ulong2)(0xca7210a20567f571UL, 0x12ee4c055d18b41fUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xa4055c77b9a844c3UL, 0x5e5568bae10fd0beUL),
    (ulong2)(0x8af632be1f0e02a4UL, 0xe421662a1e1eec50UL),
    (ulong2)(0x2ef36ec9a6a64667UL, 0xba740e90ff113ceeUL),
    (ulong2)(0x0af93b49a86074d9UL, 0x4fb8a006db40f316UL),
    (ulong2)(0xaefc673e11c8301aUL, 0x11edc8bc3a4f23a8UL),
    (ulong2)(0x800f09f7b76e767dUL, 0xab99c62cc55e1f46UL),
    (ulong2)(0x240a55800ec632beUL, 0xf5ccae962451cff8UL),
    (ulong2)(0xb69a344d34af8f84UL, 0x45ae448d6e7f1d9eUL),
    (ulong2)(0x129f683a8d07cb47UL, 0x1bfb2c378f70cd20UL),
    (ulong2)(0x3c6c06f32ba18d20UL, 0xa18f22a77061f1ceUL),
    (ulong2)(0x98695a849209c9e3UL, 0xffda4a1d916e2170UL),
    (ulong2)(0xbc630f049ccffb5dUL, 0x0a16e48bb53fee88UL),
    (ulong2)(0x186653732567bf9eUL, 0x54438c3154303e36UL),
    (ulong2)(0x36953dba83c1f9f9UL, 0xee3782a1ab2102d8UL),
    (ulong2)(0x929061cd3a69bd3aUL, 0xb062ea1b4a2ed266UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x65e7759b1f401559UL, 0xb9c51ce3b12188adUL),
    (ulong2)(0x8087e2dbc96ad33fUL, 0xabbb0931ab3235c5UL),
    (ulong2)(0xe5609740d62ac666UL, 0x127e15d21a13bd68UL),
    (ulong2)(0x0736ed8ccf038e67UL, 0x5c9cf000628598d6UL),
    (ulong2)(0x62d19817d0439b3eUL, 0xe559ece3d3a4107bUL),
    (ulong2)(0x87b10f5706695d58UL, 0xf727f931c9b7ad13UL),
    (ulong2)(0xe2567acc19294801UL, 0x4ee2e5d2789625beUL),
    (ulong2)(0x5cfaad9450463bedUL, 0xb600769f47150f0bUL),
    (ulong2)(0x391dd80f4f062eb4UL, 0x0fc56a7cf63487a6UL),
    (ulong2)(0xdc7d4f4f992ce8d2UL, 0x1dbb7faeec273aceUL),
    (ulong2)(0xb99a3ad4866cfd8bUL, 0xa47e634d5d06b263UL),
    (ulong2)(0x5bcc40189f45b58aUL, 0xea9c869f259097ddUL),
    (ulong2)(0x3e2b35838005a0d3UL, 0x53599a7c94b11f70UL),
    (ulong2)(0xdb4ba2c3562f66b5UL, 0x41278fae8ea2a218UL),
    (ulong2)(0xbeacd758496f73ecUL, 0xf8e2934d3f832ab5UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xc4a9907ae8a743c2UL, 0x41ff7793986a07faUL),
    (ulong2)(0x85fabe5973520296UL, 0x09285f4c18937b31UL),
    (ulong2)(0x41532e239bf54154UL, 0x48d728df80f97ccbUL),
    (ulong2)(0x3e7a14efcbfb2f95UL, 0x04df8dc9851d9e1cUL),
    (ulong2)(0xfad38495235c6c57UL, 0x4520fa5a1d7799e6UL),
    (ulong2)(0xbb80aab6b8a92d03UL, 0x0df7d2859d8ee52dUL),
    (ulong2)(0x7f293acc500e6ec1UL, 0x4c08a51605e4e2d7UL),
    (ulong2)(0xfca1c8ec05ff86f2UL, 0xf84536296d274eacUL),
    (ulong2)(0x38085896ed58c530UL, 0xb9ba41baf54d4956UL),
    (ulong2)(0x795b76b576ad8464UL, 0xf16d696575b4359dUL),
    (ulong2)(0xbdf2e6cf9e0ac7a6UL, 0xb0921ef6edde3267UL),
    (ulong2)(0xc2dbdc03ce04a967UL, 0xfc9abbe0e83ad0b0UL),
    (ulong2)(0x06724c7926a3eaa5UL, 0xbd65cc737050d74aUL),
    (ulong2)(0x4721625abd56abf1UL, 0xf5b2e4acf0a9ab81UL),
    (ulong2)(0x8388f22055f1e833UL, 0xb44d933f68c3ac7bUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x25d30a95cecef780UL, 0x10a307e4b1866223UL),
    (ulong2)(0x4ddac671e2eb5fe3UL, 0xb707ef2d98cf4418UL),
    (ulong2)(0x6809cce42c25a863UL, 0xa7a4e8c92949263bUL),
    (ulong2)(0x52163d58f1bed352UL, 0xa36bd753c6ba59d0UL),
    (ulong2)(0x77c537cd3f7024d2UL, 0xb3c8d0b7773c3bf3UL),
    (ulong2)(0x1fccfb2913558cb1UL, 0x146c387e5e751dc8UL),
    (ulong2)(0x3a1ff1bcdd9b7b31UL, 0x04cf3f9aeff37febUL),
    (ulong2)(0xfe34ed01757689b0UL, 0xbb51e68d389f63b3UL),
    (ulong2)(0xdbe7e794bbb87e30UL, 0xabf2e16989190190UL),
    (ulong2)(0xb3ee2b70979dd653UL, 0x0c5609a0a05027abUL),
    (ulong2)(0x963d21e5595321d3UL, 0x1cf50e4411d64588UL),
    (ulong2)(0xac22d05984c85ae2UL, 0x183a31defe253a63UL),
    (ulong2)(0x89f1dacc4a06ad62UL, 0x0899363a4fa35840UL),
    (ulong2)(0xe1f8162866230501UL, 0xaf3ddef366ea7e7bUL),
    (ulong2)(0xc42b1cbda8edf281UL, 0xbf9ed917d76c1c58UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xaf168701fe5943e2UL, 0x553399b0b5fc844cUL),
    (ulong2)(0x50b4a4567313dbceUL, 0x149dde950e34d852UL),
    (ulong2)(0xffa223578d4a982cUL, 0x41ae4725bbc85c1eUL),
    (ulong2)(0xa4c65c24c9f26072UL, 0x4a3936263f0c100aUL),
    (ulong2)(0x0bd0db2537ab2390UL, 0x1f0aaf968af09446UL),
    (ulong2)(0xf472f872bae1bbbcUL, 0x5ea4e8b33138c858UL),
    (ulong2)(0x5b647f7344b8f85eUL, 0x0b97710384c44c14UL),
    (ulong2)(0xe372c31b4ad5ad83UL, 0x4104e328f53e6a7dUL),
    (ulong2)(0x4c64441ab48cee61UL, 0x14377a9840c2ee31UL),
    (ulong2)(0xb3c6674d39c6764dUL, 0x55993dbdfb0ab22fUL),
    (ulong2)(0x1cd0e04cc79f35afUL, 0x00aaa40d4ef63663UL),
    (ulong2)(0x47b49f3f8327cdf1UL, 0x0b3dd50eca327a77UL),
    (ulong2)(0xe8a2183e7d7e8e13UL, 0x5e0e4cbe7fcefe3bUL),
    (ulong2)(0x17003b69f034163fUL, 0x1fa00b9bc406a225UL),
    (ulong2)(0xb816bc680e6d55ddUL, 0x4a93922b71fa2669UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xa0a89715d0f4c888UL, 0xb1183d7d5bd62290UL),
    (ulong2)(0x908421c7e6d1808dUL, 0x4d660de92cacf0ddUL),
    (ulong2)(0x302cb6d236254805UL, 0xfc7e3094777ad24dUL),
    (ulong2)(0x8939ab4849c39960UL, 0xb1d657600dafa920UL),
    (ulong2)(0x29913c5d993751e8UL, 0x00ce6a1d56798bb0UL),
    (ulong2)(0x19bd8a8faf1219edUL, 0xfcb05a89210359fdUL),
    (ulong2)(0xb9151d9a7fe6d165UL, 0x4da867f47ad57b6dUL),
    (ulong2)(0x9b64d73cf2f674f4UL, 0x03a20e7aba728cd0UL),
    (ulong2)(0x3bcc40292202bc7cUL, 0xb2ba3307e1a4ae40UL),
    (ulong2)(0x0be0f6fb1427f479UL, 0x4ec4039396de7c0dUL),
    (ulong2)(0xab4861eec4d33cf1UL, 0xffdc3eeecd085e9dUL),
    (ulong2)(0x125d7c74bb35ed94UL, 0xb274591ab7dd25f0UL),
    (ulong2)(0xb2f5eb616bc1251cUL, 0x036c6467ec0b0760UL),
    (ulong2)(0x82d95db35de46d19UL, 0xff1254f39b71d52dUL),
    (ulong2)(0x2271caa68d10a591UL, 0x4e0a698ec0a7f7bdUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x82197d2781f8b96fUL, 0xe43e9984cf41aa08UL),
    (ulong2)(0x54213e279a1c233dUL, 0xbad1c62b0bff4228UL),
    (ulong2)(0xd63843001be49a52UL, 0x5eef5fafc4bee820UL),
    (ulong2)(0x9aac65df948a1cfeUL, 0x4d0e6bd946302e43UL),
    (ulong2)(0x18b518f81572a591UL, 0xa930f25d8971844bUL),
    (ulong2)(0xce8d5bf80e963fc3UL, 0xf7dfadf24dcf6c6bUL),
    (ulong2)(0x4c9426df8f6e86acUL, 0x13e13476828ec663UL),
    (ulong2)(0x86a493942c8bd1dfUL, 0xffd3797479246825UL),
    (ulong2)(0x04bdeeb3ad7368b0UL, 0x1bede0f0b665c22dUL),
    (ulong2)(0xd285adb3b697f2e2UL, 0x4502bf5f72db2a0dUL),
    (ulong2)(0x509cd094376f4b8dUL, 0xa13c26dbbd9a8005UL),
    (ulong2)(0x1c08f64bb801cd21UL, 0xb2dd12ad3f144666UL),
    (ulong2)(0x9e118b6c39f9744eUL, 0x56e38b29f055ec6eUL),
    (ulong2)(0x4829c86c221dee1cUL, 0x080cd48634eb044eUL),
    (ulong2)(0xca30b54ba3e55773UL, 0xec324d02fbaaae46UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xfdb10eba477ab638UL, 0xfe5f1194837be346UL),
    (ulong2)(0x902930dfa570304dUL, 0x5295b8af5c0ddbedUL),
    (ulong2)(0x6d983e65e20a8675UL, 0xaccaa93bdf7638abUL),
    (ulong2)(0x8cd4628ef7af6b4cUL, 0xba080add877d62a1UL),
    (ulong2)(0x71656c34b0d5dd74UL, 0x44571b49040681e7UL),
    (ulong2)(0x1cfd525152df5b01UL, 0xe89db272db70b94cUL),
    (ulong2)(0xe14c5ceb15a5ed39UL, 0x16c2a3e6580b5a0aUL),
    (ulong2)(0x89920b6a510400d3UL, 0x1e25371b9377b580UL),
    (ulong2)(0x742305d0167eb6ebUL, 0xe07a268f100c56c6UL),
    (ulong2)(0x19bb3bb5f474309eUL, 0x4cb08fb4cf7a6e6dUL),
    (ulong2)(0xe40a350fb30e86a6UL, 0xb2ef9e204c018d2bUL),
    (ulong2)(0x054669e4a6ab6b9fUL, 0xa42d3dc6140ad721UL),
    (ulong2)(0xf8f7675ee1d1dda7UL, 0x5a722c5297713467UL),
    (ulong2)(0x956f593b03db5bd2UL, 0xf6b8856948070cccUL),
    (ulong2)(0x68de578144a1edeaUL, 0x08e794fdcb7cef8aUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xe87117633cbdd070UL, 0xac7c0e8e02a2200bUL),
    (ulong2)(0xb7321e9df5959b66UL, 0xf366765716b499d4UL),
    (ulong2)(0x5f4309fec9284b16UL, 0x5f1a78d91416b9dfUL),
    (ulong2)(0x7e547facbe195298UL, 0xb339b133a83acbbeUL),
    (ulong2)(0x962568cf82a482e8UL, 0x1f45bfbdaa98ebb5UL),
    (ulong2)(0xc96661314b8cc9feUL, 0x405fc764be8e526aUL),
    (ulong2)(0x211776527731198eUL, 0xec23c9eabc2c7261UL),
    (ulong2)(0x3e02607bf9356c65UL, 0x1475d3694c484e49UL),
    (ulong2)(0xd6737718c588bc15UL, 0xb809dde74eea6e42UL),
    (ulong2)(0x89307ee60ca0f703UL, 0xe713a53e5afcd79dUL),
    (ulong2)(0x61416985301d2773UL, 0x4b6fabb0585ef796UL),
    (ulong2)(0x40561fd7472c3efdUL, 0xa74c625ae47285f7UL),
    (ulong2)(0xa82708b47b91ee8dUL, 0x0b306cd4e6d0a5fcUL),
    (ulong2)(0xf764014ab2b9a59bUL, 0x542a140df2c61c23UL),
    (ulong2)(0x1f1516298e0475ebUL, 0xf8561a83f0643c28UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x605e21f64226e065UL, 0xe0cef1d5986e8d2dUL),
    (ulong2)(0xd97427c3f9a5f8e4UL, 0xa558f89882728f0aUL),
    (ulong2)(0xb92a0635bb831881UL, 0x4596094d1a1c0227UL),
    (ulong2)(0x2b05093b2bf33d56UL, 0xf912accaae2365e6UL),
    (ulong2)(0x4b5b28cd69d5dd33UL, 0x19dc5d1f364de8cbUL),
    (ulong2)(0xf2712ef8d256c5b2UL, 0x5c4a54522c51eaecUL),
    (ulong2)(0x922f0f0e907025d7UL, 0xbc84a587b43f67c1UL),
    (ulong2)(0xb2eb168465351fa8UL, 0xe131db01ea71d934UL),
    (ulong2)(0xd2b537722713ffcdUL, 0x01ff2ad4721f5419UL),
    (ulong2)(0x6b9f31479c90e74cUL, 0x446923996803563eUL),
    (ulong2)(0x0bc110b1deb60729UL, 0xa4a7d24cf06ddb13UL),
    (ulong2)(0x99ee1fbf4ec622feUL, 0x182377cb4452bcd2UL),
    (ulong2)(0xf9b03e490ce0c29bUL, 0xf8ed861edc3c31ffUL),
    (ulong2)(0x409a387cb763da1aUL, 0xbd7b8f53c62033d8UL),
    (ulong2)(0x20c4198af5453a7fUL, 0x5db57e865e4ebef5UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x8297c34477ceeb64UL, 0xaa8f05ca85112b1eUL),
    (ulong2)(0xd0d4de381700cb51UL, 0x0dc63231f0469178UL),
    (ulong2)(0x52431d7c60ce2035UL, 0xa74937fb7557ba66UL),
    (ulong2)(0xbf0a593c25f52b86UL, 0x41d4d8767a16e1d2UL),
    (ulong2)(0x3d9d9a78523bc0e2UL, 0xeb5bddbcff07caccUL),
    (ulong2)(0x6fde870432f5e0d7UL, 0x4c12ea478a5070aaUL),
    (ulong2)(0xed494440453b0bb3UL, 0xe69def8d0f415bb4UL),
    (ulong2)(0xd2b22cef38dd64e7UL, 0xad26c0aee1dd7aedUL),
    (ulong2)(0x5025efab4f138f83UL, 0x07a9c56464cc51f3UL),
    (ulong2)(0x0266f2d72fddafb6UL, 0xa0e0f29f119beb95UL),
    (ulong2)(0x80f13193581344d2UL, 0x0a6ff755948ac08bUL),
    (ulong2)(0x6db875d31d284f61UL, 0xecf218d89bcb9b3fUL),
    (ulong2)(0xef2fb6976ae6a405UL, 0x467d1d121edab021UL),
    (ulong2)(0xbd6cabeb0a288430UL, 0xe1342ae96b8d0a47UL),
    (ulong2)(0x3ffb68af7de66f54UL, 0x4bbb2f23ee9c2159UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xf64c3d01df6061f8UL, 0x10491ee2eca4e054UL),
    (ulong2)(0x29634f9bc0b49d13UL, 0xfaaf99c9d558bdd1UL),
    (ulong2)(0xdf2f729a1fd4fcebUL, 0xeae6872b39fc5d85UL),
    (ulong2)(0x5713b939774af76eUL, 0x067a7a8aa629a19aUL),
    (ulong2)(0xa15f8438a82a9696UL, 0x163364684a8d41ceUL),
    (ulong2)(0x7e70f6a2b7fe6a7dUL, 0xfcd5e34373711c4bUL),
    (ulong2)(0x883ccba3689e0b85UL, 0xec9cfda19fd5fc1fUL),
    (ulong2)(0x68c10599af589e85UL, 0x1c447ad4acaa6cf4UL),
    (ulong2)(0x9e8d38987038ff7dUL, 0x0c0d6436400e8ca0UL),
    (ulong2)(0x41a24a026fec0396UL, 0xe6ebe31d79f2d125UL),
    (ulong2)(0xb7ee7703b08c626eUL, 0xf6a2fdff95563171UL),
    (ulong2)(0x3fd2bca0d81269ebUL, 0x1a3e005e0a83cd6eUL),
    (ulong2)(0xc99e81a107720813UL, 0x0a771ebce6272d3aUL),
    (ulong2)(0x16b1f33b18a6f4f8UL, 0xe0919997dfdb70bfUL),
    (ulong2)(0xe0fdce3ac7c69500UL, 0xf0d88775337f90ebUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x87a1f1858fe5aa7aUL, 0x1bbe72b8a35a9c3fUL),
    (ulong2)(0x01dc11cce5fa73a6UL, 0x08d64d109f41fd01UL),
    (ulong2)(0x867de0496a1fd9dcUL, 0x13683fa83c1b613eUL),
    (ulong2)(0xd3cf4c1ee4ecd03eUL, 0xf827b63c8f571568UL),
    (ulong2)(0x546ebd9b6b097a44UL, 0xe399c4842c0d8957UL),
    (ulong2)(0xd2135dd20116a398UL, 0xf0f1fb2c1016e869UL),
    (ulong2)(0x55b2ac578ef309e2UL, 0xeb4f8994b34c7456UL),
    (ulong2)(0xb08d89d05152ee9bUL, 0x5bb2d722803b61c1UL),
    (ulong2)(0x372c7855deb744e1UL, 0x400ca59a2361fdfeUL),
    (ulong2)(0xb151981cb4a89d3dUL, 0x53649a321f7a9cc0UL),
    (ulong2)(0x36f069993b4d3747UL, 0x48dae88abc2000ffUL),
    (ulong2)(0x6342c5ceb5be3ea5UL, 0xa395611e0f6c74a9UL),
    (ulong2)(0xe4e3344b3a5b94dfUL, 0xb82b13a6ac36e896UL),
    (ulong2)(0x629ed40250444d03UL, 0xab432c0e902d89a8UL),
    (ulong2)(0xe53f2587dfa1e779UL, 0xb0fd5eb633771597UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x4c19b7fce8aa0805UL, 0xf3cb7ef7f453aef9UL),
    (ulong2)(0xb23d60c579d34dc9UL, 0x450d1ab8d3157a5bUL),
    (ulong2)(0xfe24d739917945ccUL, 0xb6c6644f2746d4a2UL),
    (ulong2)(0x901235280394a449UL, 0xa86d9af6cb03acbdUL),
    (ulong2)(0xdc0b82d4eb3eac4cUL, 0x5ba6e4013f500244UL),
    (ulong2)(0x222f55ed7a47e980UL, 0xed60804e1816d6e6UL),
    (ulong2)(0x6e36e21192ede185UL, 0x1eabfeb9ec45781fUL),
    (ulong2)(0xbfa8bb1d0878b3e4UL, 0xe97768fce8cdf250UL),
    (ulong2)(0xf3b10ce1e0d2bbe1UL, 0x1abc160b1c9e5ca9UL),
    (ulong2)(0x0d95dbd871abfe2dUL, 0xac7a72443bd8880bUL),
    (ulong2)(0x418c6c249901f628UL, 0x5fb10cb3cf8b26f2UL),
    (ulong2)(0x2fba8e350bec17adUL, 0x411af20a23ce5eedUL),
    (ulong2)(0x63a339c9e3461fa8UL, 0xb2d18cfdd79df014UL),
    (ulong2)(0x9d87eef0723f5a64UL, 0x0417e8b2f0db24b6UL),
    (ulong2)(0xd19e590c9a955261UL, 0xf7dc964504888a4fUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xcfcf4ae3ebc3ccfdUL, 0xa1951a61df54b357UL),
    (ulong2)(0x7f54a72f0eddffafUL, 0xb76dfde0d95a8d21UL),
    (ulong2)(0xb09bedcce51e3352UL, 0x16f8e781060e3e76UL),
    (ulong2)(0xbb5efd043338801fUL, 0x0babb93003d8bec9UL),
    (ulong2)(0x7491b7e7d8fb4ce2UL, 0xaa3ea351dc8c0d9eUL),
    (ulong2)(0xc40a5a2b3de57fb0UL, 0xbcc644d0da8233e8UL),
    (ulong2)(0x0bc510c8d626b34dUL, 0x1d535eb105d680bfUL),
    (ulong2)(0xb1dabf8c6eda931dUL, 0x00db4962025555aaUL),
    (ulong2)(0x7e15f56f85195fe0UL, 0xa14e5303dd01e6fdUL),
    (ulong2)(0xce8e18a360076cb2UL, 0xb7b6b482db0fd88bUL),
    (ulong2)(0x014152408bc4a04fUL, 0x1623aee3045b6bdcUL),
    (ulong2)(0x0a8442885de21302UL, 0x0b70f052018deb63UL),
    (ulong2)(0xc54b086bb621dfffUL, 0xaae5ea33ded95834UL),
    (ulong2)(0x75d0e5a7533fecadUL, 0xbc1d0db2d8d76642UL),
    (ulong2)(0xba1faf44b8fc2050UL, 0x1d8817d30783d515UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x9cb76d437afa2af4UL, 0xefd282331287775fUL),
    (ulong2)(0x39157cede80abb56UL, 0x005a68ffc8bb1238UL),
    (ulong2)(0xa5a211ae92f091a2UL, 0xef88eaccda3c6567UL),
    (ulong2)(0x756dd13b5c8f5acaUL, 0xaa8cf4dfecd7c6e8UL),
    (ulong2)(0xe9dabc782675703eUL, 0x455e76ecfe50b1b7UL),
    (ulong2)(0x4c78add6b485e19cUL, 0xaad69c20246cd4d0UL),
    (ulong2)(0xd0cfc095ce7fcb68UL, 0x45041e1336eba38fUL),
    (ulong2)(0xcb7fd58ec495d475UL, 0x021af06bb686259cUL),
    (ulong2)(0x57c8b8cdbe6ffe81UL, 0xedc87258a40152c3UL),
    (ulong2)(0xf26aa9632c9f6f23UL, 0x024098947e3d37a4UL),
    (ulong2)(0x6eddc420566545d7UL, 0xed921aa76cba40fbUL),
    (ulong2)(0xbe1204b5981a8ebfUL, 0xa89604b45a51e374UL),
    (ulong2)(0x22a569f6e2e0a44bUL, 0x4744868748d6942bUL),
    (ulong2)(0x87077858701035e9UL, 0xa8cc6c4b92eaf14cUL),
    (ulong2)(0x1bb0151b0aea1f1dUL, 0x471eee78806d8613UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xdd223ac63f94d3cdUL, 0xecdf1c0a39e0e69eUL),
    (ulong2)(0x0a59b81eb662376dUL, 0x464b5cd033da1525UL),
    (ulong2)(0xd77b82d889f6e4a0UL, 0xaa9440da0a3af3bbUL),
    (ulong2)(0xe1ef0970d9739a93UL, 0xfaa1c4106cecddd1UL),
    (ulong2)(0x3ccd33b6e6e7495eUL, 0x167ed81a550c3b4fUL),
    (ulong2)(0xebb6b16e6f11adfeUL, 0xbcea98c05f36c8f4UL),
    (ulong2)(0x36948ba850857e33UL, 0x503584ca66d62e6aUL),
    (ulong2)(0x76fa81b790ed93c1UL, 0xb8ca7cb682820f38UL),
    (ulong2)(0xabd8bb71af79400cUL, 0x541560bcbb62e9a6UL),
    (ulong2)(0x7ca339a9268fa4acUL, 0xfe812066b1581a1dUL),
    (ulong2)(0xa181036f191b7761UL, 0x125e3c6c88b8fc83UL),
    (ulong2)(0x971588c7499e0952UL, 0x426bb8a6ee6ed2e9UL),
    (ulong2)(0x4a37b201760ada9fUL, 0xaeb4a4acd78e3477UL),
    (ulong2)(0x9d4c30d9fffc3e3fUL, 0x0420e476ddb4c7ccUL),
    (ulong2)(0x406e0a1fc068edf2UL, 0xe8fff87ce4542152UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x9ad4f151c9260931UL, 0xecba8b8b7f03d6c4UL),
    (ulong2)(0xf229556b3903eaefUL, 0x1d60dcb980bbf80cUL),
    (ulong2)(0x68fda43af025e3deUL, 0xf1da5732ffb82ec8UL),
    (ulong2)(0xb6704455f531f9ceUL, 0x05525a3168b2928eUL),
    (ulong2)(0x2ca4b5043c17f0ffUL, 0xe9e8d1ba17b1444aUL),
    (ulong2)(0x4459113ecc321321UL, 0x18328688e8096a82UL),
    (ulong2)(0xde8de06f05141a10UL, 0xf4880d03970abc46UL),
    (ulong2)(0x70225704932e2b1aUL, 0xe799e7eb44a895f5UL),
    (ulong2)(0xeaf6a6555a08222bUL, 0x0b236c603bab4331UL),
    (ulong2)(0x820b026faa2dc1f5UL, 0xfaf93b52c4136df9UL),
    (ulong2)(0x18dff33e630bc8c4UL, 0x1643b0d9bb10bb3dUL),
    (ulong2)(0xc6521351661fd2d4UL, 0xe2cbbdda2c1a077bUL),
    (ulong2)(0x5c86e200af39dbe5UL, 0x0e7136515319d1bfUL),
    (ulong2)(0x347b463a5f1c383bUL, 0xffab6163aca1ff77UL),
    (ulong2)(0xaeafb76b963a310aUL, 0x1311eae8d3a229b3UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x990fba30221753a7UL, 0x4d407b2df1588fdbUL),
    (ulong2)(0x8319c89624300d82UL, 0x5a9bb03388d91678UL),
    (ulong2)(0x1a1672a606275e25UL, 0x17dbcb1e798199a3UL),
    (ulong2)(0x66e124345a17db90UL, 0xa9d77c570bd47c6cUL),
    (ulong2)(0xffee9e0478008837UL, 0xe497077afa8cf3b7UL),
    (ulong2)(0xe5f8eca27e27d612UL, 0xf34ccc64830d6a14UL),
    (ulong2)(0x7cf756925c3085b5UL, 0xbe0cb7497255e5cfUL),
    (ulong2)(0x57e752162bbe4f3cUL, 0x0a9ec560bb73e81dUL),
    (ulong2)(0xcee8e82609a91c9bUL, 0x47debe4d4a2b67c6UL),
    (ulong2)(0xd4fe9a800f8e42beUL, 0x5005755333aafe65UL),
    (ulong2)(0x4df120b02d991119UL, 0x1d450e7ec2f271beUL),
    (ulong2)(0x3106762271a994acUL, 0xa349b937b0a79471UL),
    (ulong2)(0xa809cc1253bec70bUL, 0xee09c21a41ff1baaUL),
    (ulong2)(0xb21fbeb45599992eUL, 0xf9d20904387e8209UL),
    (ulong2)(0x2b100484778eca89UL, 0xb4927229c9260dd2UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x8e2fc970136e0b28UL, 0xfa265c428c9da6f2UL),
    (ulong2)(0xce580031f065e75eUL, 0xa5743cf56a237597UL),
    (ulong2)(0x4077c941e30bec76UL, 0x5f5260b7e6bed365UL),
    (ulong2)(0x4820151b571875b0UL, 0x137972c443474705UL),
    (ulong2)(0xc60fdc6b44767e98UL, 0xe95f2e86cfdae1f7UL),
    (ulong2)(0x8678152aa77d92eeUL, 0xb60d4e3129643292UL),
    (ulong2)(0x0857dc5ab41399c6UL, 0x4c2b1273a5f99460UL),
    (ulong2)(0xd414b37e60366586UL, 0x5c8cdc9126773bb5UL),
    (ulong2)(0x5a3b7a0e73586eaeUL, 0xa6aa80d3aaea9d47UL),
    (ulong2)(0x1a4cb34f905382d8UL, 0xf9f8e0644c544e22UL),
    (ulong2)(0x94637a3f833d89f0UL, 0x03debc26c0c9e8d0UL),
    (ulong2)(0x9c34a665372e1036UL, 0x4ff5ae5565307cb0UL),
    (ulong2)(0x121b6f1524401b1eUL, 0xb5d3f217e9adda42UL),
    (ulong2)(0x526ca654c74bf768UL, 0xea8192a00f130927UL),
    (ulong2)(0xdc436f24d425fc40UL, 0x10a7cee2838eafd5UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0xb70290df3750e40fUL, 0x129391be83f7a47bUL),
    (ulong2)(0xb03de9fc7e321746UL, 0xaeda7d495fc263f9UL),
    (ulong2)(0x073f79234962f349UL, 0xbc49ecf7dc35c782UL),
    (ulong2)(0xbdb5b5394b075ef8UL, 0xb4e1e37de895f7eeUL),
    (ulong2)(0x0ab725e67c57baf7UL, 0xa67272c36b625395UL),
    (ulong2)(0x0d885cc5353549beUL, 0x1a3b9e34b7579417UL),
    (ulong2)(0xba8acc1a0265adb1UL, 0x08a80f8a34a0306cUL),
    (ulong2)(0x2382a35dcc7edc4eUL, 0xe2b5f04d33cf2082UL),
    (ulong2)(0x94803382fb2e3841UL, 0xf02661f3b03884f9UL),
    (ulong2)(0x93bf4aa1b24ccb08UL, 0x4c6f8d046c0d437bUL),
    (ulong2)(0x24bdda7e851c2f07UL, 0x5efc1cbaeffae700UL),
    (ulong2)(0x9e371664877982b6UL, 0x56541330db5ad76cUL),
    (ulong2)(0x293586bbb02966b9UL, 0x44c7828e58ad7317UL),
    (ulong2)(0x2e0aff98f94b95f0UL, 0xf88e6e798498b495UL),
    (ulong2)(0x99086f47ce1b71ffUL, 0xea1dffc7076f10eeUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x152fecdcbcccc914UL, 0xa9bcd291a1cf815fUL),
    (ulong2)(0x613559d3f5f81fa7UL, 0x5aa7ba1307657374UL),
    (ulong2)(0x741ab50f4934d6b3UL, 0xf31b6882a6aaf22bUL),
    (ulong2)(0x93c4698eebae59b5UL, 0x4f5e74a697aee5d6UL),
    (ulong2)(0x86eb8552576290a1UL, 0xe6e2a63736616489UL),
    (ulong2)(0xf2f1305d1e564612UL, 0x15f9ceb590cb96a2UL),
    (ulong2)(0xe7dedc81a29a8f06UL, 0xbc451c24310417fdUL),
    (ulong2)(0x686706af56fc4b90UL, 0x155632caedb80d6bUL),
    (ulong2)(0x7d48ea73ea308284UL, 0xbceae05b4c778c34UL),
    (ulong2)(0x09525f7ca3045437UL, 0x4ff188d9eadd7e1fUL),
    (ulong2)(0x1c7db3a01fc89d23UL, 0xe64d5a484b12ff40UL),
    (ulong2)(0xfba36f21bd521225UL, 0x5a08466c7a16e8bdUL),
    (ulong2)(0xee8c83fd019edb31UL, 0xf3b494fddbd969e2UL),
    (ulong2)(0x9a9636f248aa0d82UL, 0x00affc7f7d739bc9UL),
    (ulong2)(0x8fb9da2ef466c496UL, 0xa9132eeedcbc1a96UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x76d7d9a0790e3456UL, 0xa68b8340c09a94a6UL),
    (ulong2)(0xc4fca4a59fefba1dUL, 0xa12400cbbd51083dUL),
    (ulong2)(0xb22b7d05e6e18e4bUL, 0x07af838b7dcb9c9bUL),
    (ulong2)(0xf06b53646f98b6b9UL, 0x436bbf27feb7ddefUL),
    (ulong2)(0x86bc8ac4169682efUL, 0xe5e03c673e2d4949UL),
    (ulong2)(0x3497f7c1f0770ca4UL, 0xe24fbfec43e6d5d2UL),
    (ulong2)(0x42402e61897938f2UL, 0x44c43cac837c4174UL),
    (ulong2)(0x8e028ccfa403b668UL, 0xf9c43925d9ee8519UL),
    (ulong2)(0xf8d5556fdd0d823eUL, 0x5f4fba65197411bfUL),
    (ulong2)(0x4afe286a3bec0c75UL, 0x58e039ee64bf8d24UL),
    (ulong2)(0x3c29f1ca42e23823UL, 0xfe6bbaaea4251982UL),
    (ulong2)(0x7e69dfabcb9b00d1UL, 0xbaaf8602275958f6UL),
    (ulong2)(0x08be060bb2953487UL, 0x1c240542e7c3cc50UL),
    (ulong2)(0xba957b0e5474baccUL, 0x1b8b86c99a0850cbUL),
    (ulong2)(0xcc42a2ae2d7a8e9aUL, 0xbd0005895a92c46dUL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x61fdd088096c633bUL, 0xe832f276830d4365UL),
    (ulong2)(0x540c1f17d6a3c2f9UL, 0x1bb6e92daca9c758UL),
    (ulong2)(0x35f1cf9fdfcfa1c2UL, 0xf3841b5b2fa4843dUL),
    (ulong2)(0xcb9c4864cb7ebf64UL, 0x0bb665e8a1f6f65dUL),
    (ulong2)(0xaa6198ecc212dc5fUL, 0xe384979e22fbb538UL),
    (ulong2)(0x9f9057731ddd7d9dUL, 0x10008cc50d5f3105UL),
    (ulong2)(0xfe6d87fb14b11ea6UL, 0xf8327eb38e527260UL),
    (ulong2)(0xfb1195e3a64b9e09UL, 0xa58c2b939b7520a6UL),
    (ulong2)(0x9aec456baf27fd32UL, 0x4dbed9e5187863c3UL),
    (ulong2)(0xaf1d8af470e85cf0UL, 0xbe3ac2be37dce7feUL),
    (ulong2)(0xcee05a7c79843fcbUL, 0x560830c8b4d1a49bUL),
    (ulong2)(0x308ddd876d35216dUL, 0xae3a4e7b3a83d6fbUL),
    (ulong2)(0x51700d0f64594256UL, 0x4608bc0db98e959eUL),
    (ulong2)(0x6481c290bb96e394UL, 0xb58ca756962a11a3UL),
    (ulong2)(0x057c1218b2fa80afUL, 0x5dbe5520152752c6UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x534ba48d6aa27e29UL, 0x5d30484d6e9d13e9UL),
    (ulong2)(0x28508f145c89bcb0UL, 0x8948e62e9301d8fcUL),
    (ulong2)(0x7b1b2b99362bc299UL, 0xd478ae63fd9ccb15UL),
    (ulong2)(0x3fc77b1ef5e28fe3UL, 0xe70f02d3ff944a7fUL),
    (ulong2)(0x6c8cdf939f40f1caUL, 0xba3f4a9e91095996UL),
    (ulong2)(0x1797f40aa96b3353UL, 0x6e47e4fd6c959283UL),
    (ulong2)(0x44dc5087c3c94d7aUL, 0x3377acb00208816aUL),
    (ulong2)(0x62a6ac2a434b53f5UL, 0xb0a4e40faf35483bUL),
    (ulong2)(0x31ed08a729e92ddcUL, 0xed94ac42c1a85bd2UL),
    (ulong2)(0x4af6233e1fc2ef45UL, 0x39ec02213c3490c7UL),
    (ulong2)(0x19bd87b37560916cUL, 0x64dc4a6c52a9832eUL),
    (ulong2)(0x5d61d734b6a9dc16UL, 0x57abe6dc50a10244UL),
    (ulong2)(0x0e2a73b9dc0ba23fUL, 0x0a9bae913e3c11adUL),
    (ulong2)(0x75315820ea2060a6UL, 0xdee300f2c3a0dab8UL),
    (ulong2)(0x267afcad80821e8fUL, 0x83d348bfad3dc951UL),
    (ulong2)(0x0000000000000000UL, 0x0000000000000000UL),
    (ulong2)(0x27368426556c796fUL, 0x07ff946d827c42eaUL),
    (ulong2)(0x293d260d4ef9e331UL, 0x1e487747cb1f2330UL),
    (ulong2)(0x0e0ba22b1b959a5eUL, 0x19b7e32a496361daUL),
    (ulong2)(0xeda5fb46a4b26d21UL, 0x5c037a6cfa8c994eUL),
    (ulong2)(0xca937f60f1de144eUL, 0x5bfcee0178f0dba4UL),
    (ulong2)(0xc498dd4bea4b8e10UL, 0x424b0d2b3193ba7eUL),
    (ulong2)(0xe3ae596dbf27f77fUL, 0x45b49946b3eff894UL),
    (ulong2)(0xc981c086e67c361dUL, 0x26f2a0c6d87933fbUL),
    (ulong2)(0xeeb744a0b3104f72UL, 0x210d34ab5a057111UL),
    (ulong2)(0xe0bce68ba885d52cUL, 0x38bad781136610cbUL),
    (ulong2)(0xc78a62adfde9ac43UL, 0x3f4543ec911a5221UL),
    (ulong2)(0x24243bc042ce5b3cUL, 0x7af1daaa22f5aab5UL),
    (ulong2)(0x0312bfe617a22253UL, 0x7d0e4ec7a089e85fUL),
    (ulong2)(0x0d191dcd0c37b80dUL, 0x64b9adede9ea8985UL),
    (ulong2)(0x2a2f99eb595bc162UL, 0x634639806b96cb6fUL)
};


/*
 * Pool PoW nonce-search kernel.
 *
 * One work-item tests one u128 nonce.
 * The template contains 16 tower-basis fields.
 * Field 10 is replaced by the nonce.
 *
 * The sponge is the exact fixed-length/no-pad construction:
 *   state = [0, 0, POWHDR_IV_hi, POWHDR_IV_lo]
 *   8 x (absorb 32 bytes + Poseidon2b permutation)
 *   digest = state[0] || state[1]
 */

#define MAX_SOLUTIONS 64U

typedef struct {
    ulong nonce_lo;
    ulong nonce_hi;
    ulong digest[4];
} miner_solution;

typedef struct {
    uint count;
    uint reserved[3];
    miner_solution solutions[MAX_SOLUTIONS];
} miner_result;

static inline ulong2 tower_to_flat_kernel(ulong2 v)
{
    ulong2 r = (ulong2)(0UL, 0UL);

    /*
     * The two halves are handled separately so the hot nonce path has
     * no per-iteration half-selection branch and no (chunk - 16)
     * expression. The lookup table and field mapping are unchanged.
     */
    for (uint chunk = 0; chunk < 16; ++chunk) {
        const uint nib = (uint)((v.x >> (4U * chunk)) & 0xFUL);
        r ^= TOWER_TO_FLAT[chunk * 16U + nib];
    }

    for (uint chunk = 0; chunk < 16; ++chunk) {
        const uint nib = (uint)((v.y >> (4U * chunk)) & 0xFUL);
        r ^= TOWER_TO_FLAT[(chunk + 16U) * 16U + nib];
    }

    return r;
}

static inline ulong2 flat_to_tower_kernel(ulong2 v)
{
    ulong2 r = (ulong2)(0UL, 0UL);

    for (uint chunk = 0; chunk < 32; ++chunk) {
        uint nib;

        if (chunk < 16)
            nib = (uint)((v.x >> (4 * chunk)) & 0xFUL);
        else
            nib = (uint)((v.y >> (4 * (chunk - 16))) & 0xFUL);

        ulong2 x = FLAT_TO_TOWER[chunk * 16 + nib];
        r ^= x;
    }

    return r;
}

/*
 * 256-bit little-endian comparison:
 *
 *     a < b
 *
 * The Rust reference compares byte 31 down to byte 0.
 * Here digest/target are represented as four little-endian
 * 64-bit words, so compare word 3 down to word 0.
 */
static inline int le256_lt4(
    ulong2 a01,
    ulong2 a23,
    ulong2 b01,
    ulong2 b23)
{
    if (a23.y != b23.y)
        return a23.y < b23.y;

    if (a23.x != b23.x)
        return a23.x < b23.x;

    if (a01.y != b01.y)
        return a01.y < b01.y;

    return a01.x < b01.x;
}

__kernel void poseidon2b_miner_search(
    __global const gf128 *template_fields,
    ulong nonce_start_lo,
    ulong nonce_start_hi,
    ulong nonce_count,
    __global const ulong *target,
    __global miner_result *result,
    __global volatile uint *work_generation,
    uint expected_generation)
{
    const ulong gid = (ulong)get_global_id(0);

    if (gid >= nonce_count)
        return;

    /*
     * Work cancellation / generation check.
     *
     * The host changes work_generation when the current work becomes
     * stale. atomic_cmpxchg(..., expected, expected) provides an
     * atomic read compatible with the existing OpenCL 1.x-style
     * global atomic usage.
     */
    if (atomic_cmpxchg(
            (__global volatile uint *)work_generation,
            expected_generation,
            expected_generation) != expected_generation)
        return;

    /*
     * Construct nonce = nonce_start + gid as a 128-bit value.
     */
    ulong2 nonce;
    nonce.x = nonce_start_lo + gid;
    nonce.y = nonce_start_hi + (nonce.x < nonce_start_lo);

    /*
     * Materialize the immutable template once in private storage for this
     * work-item. Field 10 is the only nonce-dependent field.
     *
     * Keeping the complete template local avoids repeatedly fetching the
     * same 15 global fields during the eight absorb/permutation blocks.
     */
    /*
     * Nonce-only work item.
     *
     * Keep invariant template fields in global memory and substitute
     * the nonce only for field 10.
     */
    const ulong2 nonce_flat = tower_to_flat_kernel(nonce);
    const gf128 nonce_field = (gf128){ nonce_flat.x, nonce_flat.y };

    /*
     * POWHDR__ capacity IV.
     *
     * DomainTag::as_u64() is:
     *     u64::from_be_bytes(b"POWHDR__")
     *
     * The two tower-basis values are:
     *     label << 64
     *     label
     *
     * They are then converted to flat basis.
     */
    const ulong label =
        ((ulong)'P' << 56) |
        ((ulong)'O' << 48) |
        ((ulong)'W' << 40) |
        ((ulong)'H' << 32) |
        ((ulong)'D' << 24) |
        ((ulong)'R' << 16) |
        ((ulong)'_' << 8)  |
        ((ulong)'_');

    const ulong2 iv_hi_tower = (ulong2)(0UL, label);
    const ulong2 iv_lo_tower = (ulong2)(label, 0UL);

    const ulong2 iv_hi = tower_to_flat_kernel(iv_hi_tower);
    const ulong2 iv_lo = tower_to_flat_kernel(iv_lo_tower);

    gf128 state[4];

    state[0].lo = 0UL;
    state[0].hi = 0UL;
    state[1].lo = 0UL;
    state[1].hi = 0UL;
    state[2].lo = iv_hi.x;
    state[2].hi = iv_hi.y;
    state[3].lo = iv_lo.x;
    state[3].hi = iv_lo.y;

    /*
     * 16 fields = 8 complete 32-byte rate blocks.
     *
     * The template fields have already been converted to flat basis.
     * Each block is:
     *     state[0] ^= field[2*b]
     *     state[1] ^= field[2*b+1]
     *     permutation
     */
    for (uint b = 0; b < 8; ++b) {
        /*
         * Stop stale work before another absorb/permutation block.
         */
        if (atomic_cmpxchg(
                (__global volatile uint *)work_generation,
                expected_generation,
                expected_generation) != expected_generation)
            return;

        const uint i0 = 2 * b;
        const uint i1 = i0 + 1;

        const gf128 f0 = (i0 == 10) ? nonce_field : template_fields[i0];
        const gf128 f1 = (i1 == 10) ? nonce_field : template_fields[i1];

        state[0] = gf_xor(state[0], f0);
        state[1] = gf_xor(state[1], f1);

        poseidon2b_permute(state);

        /*
         * Do not publish a result from stale work.
         */
        if (atomic_cmpxchg(
                (__global volatile uint *)work_generation,
                expected_generation,
                expected_generation) != expected_generation)
            return;
    }

    /*
     * finalize_no_pad(): no extra permutation.
     *
     * Convert the two flat digest words back to tower basis exactly
     * like FixedFieldNonceBatch::hash_into().
     */
    ulong2 flat_hi = (ulong2)(state[0].lo, state[0].hi);
    ulong2 flat_lo = (ulong2)(state[1].lo, state[1].hi);

    ulong2 tower_hi = flat_to_tower_kernel(flat_hi);
    ulong2 tower_lo = flat_to_tower_kernel(flat_lo);

    /*
     * Rust digest layout:
     *
     *   digest[..16]  = tower_hi.to_le_bytes()
     *   digest[16..]  = tower_lo.to_le_bytes()
     */
    const ulong2 target01 =
        (ulong2)(target[0], target[1]);

    const ulong2 target23 =
        (ulong2)(target[2], target[3]);

    if (!le256_lt4(tower_hi, tower_lo, target01, target23))
        return;

    /*
     * Publish every valid solution.
     *
     * The atomic counter reserves a unique result slot.
     * A valid share never terminates the work-item.
     */
    const uint idx =
        atomic_inc((__global volatile uint *)&result->count);

    if (idx >= MAX_SOLUTIONS)
        return;

    result->solutions[idx].nonce_lo = nonce.x;
    result->solutions[idx].nonce_hi = nonce.y;

    result->solutions[idx].digest[0] = tower_hi.x;
    result->solutions[idx].digest[1] = tower_hi.y;
    result->solutions[idx].digest[2] = tower_lo.x;
    result->solutions[idx].digest[3] = tower_lo.y;
}
