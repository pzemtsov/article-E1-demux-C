#include <xmmintrin.h>
#include <pmmintrin.h>
#include <tmmintrin.h>
#include <smmintrin.h>
#include <emmintrin.h>
#include <immintrin.h>

/** Many functions here are defined as macros. The reason for this is that the SSE/AVX shuffle/permute instructions
  * require compile-time constant arguments, and there is no way to provide such requirements in C
  * (or, rather, I don't know of such a way; perhaps, something is possible with templates)
  * Even if the function is inline and is called with constant arguments, compiler still complains when this
  * function calls intrinsics with its parameters. Macros help work it around, however we pay for it with
  * lack of type checking
  */

// ------- loads and stores

/** Load 128-bit integer value from the unsigned char pointer
  * @param p  a pointer to read 128 bits from
  * @return a 128-bit integer value read
  * This is just a convenience routine that takes away pointer cast from the user code.
  */
inline __m128i _128i_load (const unsigned char * p)
{
    return _mm_load_si128 ((const __m128i *) p);
}

/** Store 128-bit integer value to the unsigned char pointer
  * @param p  a pointer to write 128 bits to
  * @param x  a 128-bit integer value to write
  * This is just a convenience routine that takes away pointer cast from the user code.
  */
inline void _128i_store (unsigned char * p, __m128i x)
{
    _mm_store_si128 ((__m128i *) p, x);
}

/** Store 256-bit integer value to the unsigned char pointer
  * @param p  a pointer to write 256 bits to
  * @param x  a 256-bit integer value to write
  * This is just a convenience routine that takes away pointer cast from the user code.
  */
inline void _256i_store (unsigned char * p, __m256i x)
{
    _mm256_store_si256 ( (__m256i *) p, x);
}

/** Combine together two fields of 4 bits each, in lower to high order.
  * Used in permute2f128
  * @param n0 constant integer value of size 4 bits (not checked)
  * @param n1 constant integer value of size 4 bits (not checked)
  * @return combined 8-bit value where lower 4 bits contain n0 and higher 4 bits contain n1 (format used by permute2f128/VPERM2F128)
  */
#define combine_2_4bits(n0, n1) (n0 + (n1<<4))

/** Combine together four fields of 2 bits each, in lower to high order.
  * Used in 128 and 256 bits shuffles and permutations
  * @param n0 constant integer value of size 2 bits (not checked)
  * @param n1 constant integer value of size 2 bits (not checked)
  * @param n2 constant integer value of size 2 bits (not checked)
  * @param n3 constant integer value of size 2 bits (not checked) (guys, was it really so necessary to write these comments?)
  * @return combined 8-bit value where lower 2 bits contain n0 and high 2 bits contain n3 (format used by __mm_shuffle_ps/SHUFPS)
  */
#define combine_4_2bits(n0, n1, n2, n3) (n0 + (n1<<2) + (n2<<4) + (n3<<6))

// ------ General shuffles and permutations

/** shuffles two 128-bit registers according to four 2-bit constants defining positions.
  * @param x   A0    A1    A2    A3    (each element a 32-bit float)
  * @param y   C0    C1    C2    C3    (each element a 32-bit float)
  * @return    A[n0] A[n1] C[n2] C[n3]
  * Note that positions 0, 1 are only filled with data from x, positions 2, 3 only with data from y.
  * Components of a single vector can be shuffled in any order by using this function with x and inself
  * (see __mm_shuffle_ps intrinsic and SHUFPS instruction)
  */
#define _128_shuffle(x, y, n0, n1, n2, n3) _mm_shuffle_ps(x, y, combine_4_2bits (n0, n1, n2, n3))

/** shuffles two 128-bit integer registers according to four 2-bit constants defining positions.
  * @param x   A0    A1    A2    A3    (each element a 32-bit float)
  * @param y   C0    C1    C2    C3    (each element a 32-bit float)
  * @return    A[n0] A[n1] C[n2] C[n3]
  * Note that positions 0, 1 are only filled with data from x, positions 2, 3 only with data from y.
  * Components of a single vector can be shuffled in any order by using this function with x and inself
  * (see __mm_shuffle_ps intrinsic and SHUFPS instruction)
  */
#define _128i_shuffle(x, y, n0, n1, n2, n3) _mm_castps_si128(_128_shuffle(_mm_castsi128_ps(x), _mm_castsi128_ps(y), n0, n1, n2, n3))

/** shuffles two 256-bit registers according to four 2-bit constants defining positions.
  * An operation is performed as two parallel identical operations on two 128-bit halves of the registers.
  * @param x   A0    A1    A2    A3    B0    B1    B2    B3     (each element a 32-bit float)
  * @param y   C0    C1    C2    C3    D0    D1    D2    D3     (each element a 32-bit float)
  * @return    A[n0] A[n1] C[n2] C[n3] B[n0] B[n1] D[n2] D[n3]
  * Note that positions 0, 1, 4, 5 are only filled with data from x, positions 2, 3, 6, 7 only with data from y.
  * Also note that data is never transferred between halves of AVX registers.
  * Operation is identical to _256_permute when x==y
  * (see __mm256_shuffle_ps intrinsic and VSHUFPS instruction)
  */
#define _256_shuffle(x, y, n0, n1, n2, n3) _mm256_shuffle_ps(x, y, combine_4_2bits (n0, n1, n2, n3))

/** shuffles two 256-bit integer registers according to four 2-bit constants defining positions.
  * An operation is performed as two parallel identical operations on two 128-bit halves of the registers.
  * @param x   A0    A1    A2    A3    B0    B1    B2    B3     (each element a 32-bit int)
  * @param y   C0    C1    C2    C3    D0    D1    D2    D3     (each element a 32-bit int)
  * @return     A[n0] A[n1] C[n2] C[n3] B[n0] B[n1] D[n2] D[n3]
  * Note that positions 0, 1, 4, 5 are only filled with data from x, positions 2, 3, 6, 7 only with data from y.
  * Also note that data is never transferred between halves of AVX registers.
  * The actual generated code is the same as for _256_shuffle, but this macro allows integer registers to pass type control
  * (see __mm256_shuffle_ps intrinsic and VSHUFPS instruction)
  */
#define _256i_shuffle(x, y, n0, n1, n2, n3) _mm256_castps_si256 (_256_shuffle (_mm256_castsi256_ps (x), _mm256_castsi256_ps (y), n0, n1, n2, n3))

/** Combine two 128-bit values (4 dwords each) into one 256-bit value (8 dwords)
  * @param lo ABCD     (each element is a dword)
  * @param hi EFGH     (each element is a dword)
  * @return   ABCDEFGH
  */
inline __m256i _256i_combine_lo_hi (__m128i lo, __m128i hi)
{
    __m256i a = _mm256_setzero_si256 ();
    a = _mm256_insertf128_si256 (a, lo, 0);
    a = _mm256_insertf128_si256 (a, hi, 1);
    return a;
}

// ------ More specific permutations

/** transposes a 4x4 byte matrix stored in a 128-bit register
  * @param m a source matrix, stored as rows, containing 16 byte values:
  *          m00 m01 m02 m03
  *          m10 m11 m12 m13
  *          m20 m21 m22 m23
  *          m30 m31 m32 m33
  * @return a transposed matrix, stored as rows, containing values:
  *          m00 m10 m20 m30
  *          m01 m11 m21 m31
  *          m02 m12 m22 m32
  *          m03 m13 m23 m33
  */
inline __m128i transpose_4x4 (__m128i m)
{
    return _mm_shuffle_epi8 (m, _mm_setr_epi8 (0, 4, 8, 12, 1, 5, 9, 13, 2, 6, 10, 14, 3, 7, 11, 15));
}

/** Combines together 4-byte portions of the four given 128-bit registers
  * @param i  position of portions to combine (a constant)
  * @param m0  m00 m01 m02 m03
  * @param m1  m10 m11 m12 m13
  * @param m2  m20 m21 m22 m23
  * @param m3  m30 m31 m32 m33
  * Result: m0[i] m1[i] m2[i] m3[i]
  */
template<unsigned i> inline __m128i combine_sse (__m128i m0, __m128i m1, __m128i m2, __m128i m3)
{
    __m128i x = _128i_shuffle (m0, m1, i, i, i, i);  // m0[i] m0[i] m1[i] m1[i]
    __m128i y = _128i_shuffle (m2, m3, i, i, i, i);  // m2[i] m2[i] m3[i] m3[i]
    return _128i_shuffle (x, y, 0, 2, 0, 2);
}

/** transposes a 4x4 matrix of doublewords stored in four 128-bit registers
  * At input:
  * @param w0: w00 w01 w02 w03
  * @param w1: w10 w11 w12 w13
  * @param w2: w20 w21 w22 w23
  * @param w3: w30 w31 w32 w33
  * At output:
  *        w0: w00 w10 w20 w30
  *        w1: w01 w11 w21 w31
  *        w2: w02 w12 w22 w32
  *        w3: w03 w13 w23 w33
  */
inline void transpose_4x4_dwords (__m128i &w0, __m128i &w1, __m128i &w2, __m128i &w3)
{
    // w0 = 0  1  2  3
    // w1 = 4  5  6  7
    // w2 = 8  9  10 11
    // w3 = 12 13 14 15

    __m128i x0 = _128i_shuffle (w0, w1, 0, 1, 0, 1); //  0  1  4  5
    __m128i x1 = _128i_shuffle (w0, w1, 2, 3, 2, 3); //  2  3  6  7
    __m128i x2 = _128i_shuffle (w2, w3, 0, 1, 0, 1); //  8  9 12 13
    __m128i x3 = _128i_shuffle (w2, w3, 2, 3, 2, 3); // 10 11 14 15

    w0 = _128i_shuffle (x0, x2, 0, 2, 0, 2); //  0  4  8 12
    w1 = _128i_shuffle (x0, x2, 1, 3, 1, 3); //  1  5  9 13
    w2 = _128i_shuffle (x1, x3, 0, 2, 0, 2); //  2  6 10 14
    w3 = _128i_shuffle (x1, x3, 1, 3, 1, 3); //  3  7 11 15
}

/** transposes a 4x4 matrix of doublewords stored in four 128-bit registers and returns result in four other registers
  * At input:
  * @param w0: w00 w01 w02 w03
  * @param w1: w10 w11 w12 w13
  * @param w2: w20 w21 w22 w23
  * @param w3: w30 w31 w32 w33
  * At output:
  *        r0: w00 w10 w20 w30
  *        r1: w01 w11 w21 w31
  *        r2: w02 w12 w22 w32
  *        r3: w03 w13 w23 w33
  */
inline void transpose_4x4_dwords (__m128i w0, __m128i w1, __m128i w2, __m128i w3, __m128i &r0, __m128i &r1, __m128i &r2, __m128i &r3)
{
    // 0  1  2  3
    // 4  5  6  7
    // 8  9  10 11
    // 12 13 14 15

    __m128i x0 = _128i_shuffle (w0, w1, 0, 1, 0, 1); // 0 1 4 5
    __m128i x1 = _128i_shuffle (w0, w1, 2, 3, 2, 3); // 2 3 6 7
    __m128i x2 = _128i_shuffle (w2, w3, 0, 1, 0, 1); // 8 9 12 13
    __m128i x3 = _128i_shuffle (w2, w3, 2, 3, 2, 3); // 10 11 14 15

    r0 = _128i_shuffle (x0, x2, 0, 2, 0, 2);
    r1 = _128i_shuffle (x0, x2, 1, 3, 1, 3);
    r2 = _128i_shuffle (x1, x3, 0, 2, 0, 2);
    r3 = _128i_shuffle (x1, x3, 1, 3, 1, 3);
}

inline void transpose_avx_4x4_dwords (__m256i &w0, __m256i &w1, __m256i &w2, __m256i &w3)
{
    // 0  1  2  3
    // 4  5  6  7
    // 8  9  10 11
    // 12 13 14 15

    __m256i x0 = _256i_shuffle (w0, w1, 0, 1, 0, 1); // 0 1 4 5
    __m256i x1 = _256i_shuffle (w0, w1, 2, 3, 2, 3); // 2 3 6 7
    __m256i x2 = _256i_shuffle (w2, w3, 0, 1, 0, 1); // 8 9 12 13
    __m256i x3 = _256i_shuffle (w2, w3, 2, 3, 2, 3); // 10 11 14 15

    w0 = _256i_shuffle (x0, x2, 0, 2, 0, 2);
    w1 = _256i_shuffle (x0, x2, 1, 3, 1, 3);
    w2 = _256i_shuffle (x1, x3, 0, 2, 0, 2);
    w3 = _256i_shuffle (x1, x3, 1, 3, 1, 3);
}
