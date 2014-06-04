#include <xmmintrin.h>
#include <pmmintrin.h>
#include <tmmintrin.h>
#include <smmintrin.h>
#include <emmintrin.h>

/** Many functions here are defined as macros. The reason for this is that the SSE/AVX shuffle/permute instructions
  * require compile-time constant arguments, and there is no way to provide such requirements in C
  * (or, rather, I don't know of such a way; perhaps, something is possible with templates)
  * Even if the function is inline and is called with constant arguments, compiler still complains when this
  * function calls intrinsics with its parameters. Macros help work it around, however we pay for it with
  * lack of type checking
  */

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
