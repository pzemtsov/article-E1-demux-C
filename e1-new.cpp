/**  Revision 1: Created. Added version Write4
     Revision 2: Added Write8
     Revision 3: Added Read4_Write4
     Revision 4: Unrolled Read4_Write4
     Revision 5: Added Read4_Write4_SSE
     Revision 6: Added Read4_Write16_SSE
     Revision 7: Improved Read4_Write16_SSE
     Revision 8: Added Read8_Write16_SSE (normal and unrolled versions)
     Revision 9: Improved Read8_Write16_SSE (normal and unrolled version)
     Revision 10: Added Read16_Write16_SSE (normal and unrolled versions)
     Revision 11: Added Read4_Write32_AVX
     Revision 12: Improved Read4_Write32_AVX
     Revision 13: Added Read8_Write32_AVX (normal and unrolled versions)
  */

#include <cassert>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <typeinfo>
#include <stdio.h>

#include "timer.h"
#include "mymacros.h"
#include "sse.h"

typedef unsigned char byte;

static const size_t NUM_TIMESLOTS = 32;
static const size_t DST_SIZE = 64;
static const size_t SRC_SIZE = NUM_TIMESLOTS * DST_SIZE;
static const unsigned ITERATIONS = 1000000;

using namespace std;

class Demux
{
public:
    virtual void demux (const byte * src, size_t src_length, byte ** dst) const = 0;
};

class Reference : public Demux
{
public:
    void demux (const byte * src, size_t src_length, byte ** dst) const
    {
        assert (src_length % NUM_TIMESLOTS == 0);

        size_t dst_pos = 0;
        size_t dst_num = 0;
        for (size_t src_pos = 0; src_pos < src_length; src_pos++) {
            dst [dst_num][dst_pos] = src [src_pos];
            if (++ dst_num == NUM_TIMESLOTS) {
                dst_num = 0;
                ++ dst_pos;
            }
        }
    }
};

inline uint32_t make_32 (byte b0, byte b1, byte b2, byte b3)
{
    return ((uint32_t) b0 << 0)
         | ((uint32_t) b1 << 8)
         | ((uint32_t) b2 << 16)
         | ((uint32_t) b3 << 24);
}

class Write4 : public Demux
{
public:
    void demux (const byte * src, size_t src_length, byte ** dst) const
    {
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);
        assert (DST_SIZE % 4 == 0);

        for (size_t dst_num = 0; dst_num < NUM_TIMESLOTS; ++ dst_num) {
            byte * d = dst [dst_num];
            for (size_t dst_pos = 0; dst_pos < DST_SIZE; dst_pos += 4) {
                byte b0 = src [(dst_pos + 0) * NUM_TIMESLOTS + dst_num];
                byte b1 = src [(dst_pos + 1) * NUM_TIMESLOTS + dst_num];
                byte b2 = src [(dst_pos + 2) * NUM_TIMESLOTS + dst_num];
                byte b3 = src [(dst_pos + 3) * NUM_TIMESLOTS + dst_num];
                * (uint32_t*) & d [dst_pos] = make_32 (b0, b1, b2, b3);
            }
        }
    }
};

inline uint64_t make_64 (byte b0, byte b1, byte b2, byte b3, byte b4, byte b5, byte b6, byte b7)
{
    return (uint64_t) make_32 (b0, b1, b2, b3)
         | ((uint64_t) b4 << 32)
         | ((uint64_t) b5 << 40)
         | ((uint64_t) b6 << 48)
         | ((uint64_t) b7 << 56);
}

class Write8 : public Demux
{
public:
    void demux (const byte * src, size_t src_length, byte ** dst) const
    {
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);
        assert (DST_SIZE % 8 == 0);

        for (size_t dst_num = 0; dst_num < NUM_TIMESLOTS; ++ dst_num) {
            byte * d = dst [dst_num];
            for (size_t dst_pos = 0; dst_pos < DST_SIZE; dst_pos += 8) {
                byte b0 = src [(dst_pos + 0) * NUM_TIMESLOTS + dst_num];
                byte b1 = src [(dst_pos + 1) * NUM_TIMESLOTS + dst_num];
                byte b2 = src [(dst_pos + 2) * NUM_TIMESLOTS + dst_num];
                byte b3 = src [(dst_pos + 3) * NUM_TIMESLOTS + dst_num];
                byte b4 = src [(dst_pos + 4) * NUM_TIMESLOTS + dst_num];
                byte b5 = src [(dst_pos + 5) * NUM_TIMESLOTS + dst_num];
                byte b6 = src [(dst_pos + 6) * NUM_TIMESLOTS + dst_num];
                byte b7 = src [(dst_pos + 7) * NUM_TIMESLOTS + dst_num];
                * (uint64_t*) & d [dst_pos] = make_64 (b0, b1, b2, b3, b4, b5, b6, b7);
            }
        }
    }
};

inline byte byte0 (uint32_t x) 
{
    return (byte) x;
}

inline byte byte1 (uint32_t x) 
{
    return (byte) (x >> 8);
}

inline byte byte2 (uint32_t x) 
{
    return (byte) (x >> 16);
}

inline byte byte3 (uint32_t x) 
{
    return (byte) (x >> 24);
}

class Read4_Write4 : public Demux
{
public:
    void demux (const byte * src, size_t src_length, byte ** dst) const
    {
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);
        assert (DST_SIZE % 4 == 0);
        assert (NUM_TIMESLOTS % 4 == 0);

        for (size_t dst_num = 0; dst_num < NUM_TIMESLOTS; dst_num += 4) {
            byte * d0 = dst [dst_num + 0];
            byte * d1 = dst [dst_num + 1];
            byte * d2 = dst [dst_num + 2];
            byte * d3 = dst [dst_num + 3];
            for (size_t dst_pos = 0; dst_pos < DST_SIZE; dst_pos += 4) {
                uint32_t w0 = * (uint32_t*) &src [(dst_pos + 0) * NUM_TIMESLOTS + dst_num];
                uint32_t w1 = * (uint32_t*) &src [(dst_pos + 1) * NUM_TIMESLOTS + dst_num];
                uint32_t w2 = * (uint32_t*) &src [(dst_pos + 2) * NUM_TIMESLOTS + dst_num];
                uint32_t w3 = * (uint32_t*) &src [(dst_pos + 3) * NUM_TIMESLOTS + dst_num];
                * (uint32_t*) &d0 [dst_pos] = make_32 (byte0 (w0), byte0 (w1), byte0 (w2), byte0 (w3));
                * (uint32_t*) &d1 [dst_pos] = make_32 (byte1 (w0), byte1 (w1), byte1 (w2), byte1 (w3));
                * (uint32_t*) &d2 [dst_pos] = make_32 (byte2 (w0), byte2 (w1), byte2 (w2), byte2 (w3));
                * (uint32_t*) &d3 [dst_pos] = make_32 (byte3 (w0), byte3 (w1), byte3 (w2), byte3 (w3));
            }
        }
    }
};

class Read4_Write4_Unroll : public Demux
{
public:
    void demux (const byte * src, size_t src_length, byte ** dst) const
    {
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);
        assert (DST_SIZE == 64);
        assert (NUM_TIMESLOTS % 4 == 0);

        for (size_t dst_num = 0; dst_num < NUM_TIMESLOTS; dst_num += 4) {
            byte * d0 = dst [dst_num + 0];
            byte * d1 = dst [dst_num + 1];
            byte * d2 = dst [dst_num + 2];
            byte * d3 = dst [dst_num + 3];
#define MOVE16(dst_pos) do {\
                uint32_t w0 = * (uint32_t*) &src [(dst_pos + 0) * NUM_TIMESLOTS + dst_num];\
                uint32_t w1 = * (uint32_t*) &src [(dst_pos + 1) * NUM_TIMESLOTS + dst_num];\
                uint32_t w2 = * (uint32_t*) &src [(dst_pos + 2) * NUM_TIMESLOTS + dst_num];\
                uint32_t w3 = * (uint32_t*) &src [(dst_pos + 3) * NUM_TIMESLOTS + dst_num];\
                * (uint32_t*) &d0 [dst_pos] = make_32 (byte0 (w0), byte0 (w1), byte0 (w2), byte0 (w3));\
                * (uint32_t*) &d1 [dst_pos] = make_32 (byte1 (w0), byte1 (w1), byte1 (w2), byte1 (w3));\
                * (uint32_t*) &d2 [dst_pos] = make_32 (byte2 (w0), byte2 (w1), byte2 (w2), byte2 (w3));\
                * (uint32_t*) &d3 [dst_pos] = make_32 (byte3 (w0), byte3 (w1), byte3 (w2), byte3 (w3));\
            } while (0)
            MOVE16 (0);
            MOVE16 (4);
            MOVE16 (8);
            MOVE16 (12);
            MOVE16 (16);
            MOVE16 (20);
            MOVE16 (24);
            MOVE16 (28);
            MOVE16 (32);
            MOVE16 (36);
            MOVE16 (40);
            MOVE16 (44);
            MOVE16 (48);
            MOVE16 (52);
            MOVE16 (56);
            MOVE16 (60);
#undef MOVE16
        }
    }
};

class Read4_Write4_SSE : public Demux
{
public:
    void demux (const byte * src, size_t src_length, byte ** dst) const
    {
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);
        assert (DST_SIZE % 4 == 0);
        assert (NUM_TIMESLOTS % 4 == 0);

        for (size_t dst_num = 0; dst_num < NUM_TIMESLOTS; dst_num += 4) {
            byte * d0 = dst [dst_num + 0];
            byte * d1 = dst [dst_num + 1];
            byte * d2 = dst [dst_num + 2];
            byte * d3 = dst [dst_num + 3];
            for (size_t dst_pos = 0; dst_pos < DST_SIZE; dst_pos += 4) {
                uint32_t w0 = * (uint32_t*) &src [(dst_pos + 0) * NUM_TIMESLOTS + dst_num];
                uint32_t w1 = * (uint32_t*) &src [(dst_pos + 1) * NUM_TIMESLOTS + dst_num];
                uint32_t w2 = * (uint32_t*) &src [(dst_pos + 2) * NUM_TIMESLOTS + dst_num];
                uint32_t w3 = * (uint32_t*) &src [(dst_pos + 3) * NUM_TIMESLOTS + dst_num];
                __m128i m = _mm_setr_epi32 (w0, w1, w2, w3);
                m = transpose_4x4 (m);
                * (uint32_t*) &d0 [dst_pos] = (uint32_t) _mm_extract_epi32 (m, 0);
                * (uint32_t*) &d1 [dst_pos] = (uint32_t) _mm_extract_epi32 (m, 1);
                * (uint32_t*) &d2 [dst_pos] = (uint32_t) _mm_extract_epi32 (m, 2);
                * (uint32_t*) &d3 [dst_pos] = (uint32_t) _mm_extract_epi32 (m, 3);
            }
        }
    }
};

class Read4_Write16_SSE : public Demux
{
public:
    void demux (const byte * src, size_t src_length, byte ** dst) const
    {
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);
        assert (DST_SIZE % 16 == 0);
        assert (NUM_TIMESLOTS % 4 == 0);

        for (size_t dst_num = 0; dst_num < NUM_TIMESLOTS; dst_num += 4) {
            byte * d0 = dst [dst_num + 0];
            byte * d1 = dst [dst_num + 1];
            byte * d2 = dst [dst_num + 2];
            byte * d3 = dst [dst_num + 3];
            for (size_t dst_pos = 0; dst_pos < DST_SIZE; dst_pos += 16) {
#define LOAD16(m, dst_pos) do {\
                    uint32_t w0 = * (uint32_t*) &src [(dst_pos + 0) * NUM_TIMESLOTS + dst_num];\
                    uint32_t w1 = * (uint32_t*) &src [(dst_pos + 1) * NUM_TIMESLOTS + dst_num];\
                    uint32_t w2 = * (uint32_t*) &src [(dst_pos + 2) * NUM_TIMESLOTS + dst_num];\
                    uint32_t w3 = * (uint32_t*) &src [(dst_pos + 3) * NUM_TIMESLOTS + dst_num];\
                    m = _mm_setr_epi32 (w0, w1, w2, w3);\
                    m = transpose_4x4 (m);\
                } while (0)

                __m128i m0, m1, m2, m3;
                LOAD16 (m0, dst_pos);
                LOAD16 (m1, dst_pos + 4);
                LOAD16 (m2, dst_pos + 8);
                LOAD16 (m3, dst_pos + 12);
                transpose_4x4_dwords (m0, m1, m2, m3);
                _128i_store (&d0 [dst_pos], m0);
                _128i_store (&d1 [dst_pos], m1);
                _128i_store (&d2 [dst_pos], m2);
                _128i_store (&d3 [dst_pos], m3);
#undef LOAD16
            }
        }
    }
};

class Read8_Write16_SSE : public Demux
{
public:
    void demux (const byte * src, size_t src_length, byte ** dst) const
    {
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);
        assert (DST_SIZE % 16 == 0);
        assert (NUM_TIMESLOTS % 8 == 0);

        for (size_t dst_num = 0; dst_num < NUM_TIMESLOTS; dst_num += 8) {
            byte * d0 = dst [dst_num + 0];
            byte * d1 = dst [dst_num + 1];
            byte * d2 = dst [dst_num + 2];
            byte * d3 = dst [dst_num + 3];
            byte * d4 = dst [dst_num + 4];
            byte * d5 = dst [dst_num + 5];
            byte * d6 = dst [dst_num + 6];
            byte * d7 = dst [dst_num + 7];
            for (size_t dst_pos = 0; dst_pos < DST_SIZE; dst_pos += 16) {

#define LOAD32(m0, m1, dst_pos) do {\
                    __m64 w0 = * (__m64 *) &src [(dst_pos + 0) * NUM_TIMESLOTS + dst_num];\
                    __m64 w1 = * (__m64 *) &src [(dst_pos + 1) * NUM_TIMESLOTS + dst_num];\
                    __m64 w2 = * (__m64 *) &src [(dst_pos + 2) * NUM_TIMESLOTS + dst_num];\
                    __m64 w3 = * (__m64 *) &src [(dst_pos + 3) * NUM_TIMESLOTS + dst_num];\
                    __m128i x0 = _mm_setr_epi64 (w0, w1);\
                    __m128i x1 = _mm_setr_epi64 (w2, w3);\
                    m0 = _128i_shuffle (x0, x1, 0, 2, 0, 2);\
                    m1 = _128i_shuffle (x0, x1, 1, 3, 1, 3);\
                    m0 = transpose_4x4 (m0);\
                    m1 = transpose_4x4 (m1);\
                } while (0)

                __m128i a0, a1, a2, a3, b0, b1, b2, b3;
                LOAD32 (a0, b0, dst_pos);
                LOAD32 (a1, b1, dst_pos + 4);
                LOAD32 (a2, b2, dst_pos + 8);
                LOAD32 (a3, b3, dst_pos + 12);
                transpose_4x4_dwords (a0, a1, a2, a3);
                _128i_store (&d0 [dst_pos], a0);
                _128i_store (&d1 [dst_pos], a1);
                _128i_store (&d2 [dst_pos], a2);
                _128i_store (&d3 [dst_pos], a3);
                transpose_4x4_dwords (b0, b1, b2, b3);
                _128i_store (&d4 [dst_pos], b0);
                _128i_store (&d5 [dst_pos], b1);
                _128i_store (&d6 [dst_pos], b2);
                _128i_store (&d7 [dst_pos], b3);
#undef LOAD32
            }
        }
    }
};

class Read8_Write16_SSE_Unroll : public Demux
{
public:
    void demux (const byte * src, size_t src_length, byte ** dst) const
    {
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);
        assert (DST_SIZE == 64);
        assert (NUM_TIMESLOTS % 8 == 0);

        for (size_t dst_num = 0; dst_num < NUM_TIMESLOTS; dst_num += 8) {
            byte * d0 = dst [dst_num + 0];
            byte * d1 = dst [dst_num + 1];
            byte * d2 = dst [dst_num + 2];
            byte * d3 = dst [dst_num + 3];
            byte * d4 = dst [dst_num + 4];
            byte * d5 = dst [dst_num + 5];
            byte * d6 = dst [dst_num + 6];
            byte * d7 = dst [dst_num + 7];

#define LOAD32(m0, m1, dst_pos) do {\
                    __m64 w0 = * (__m64 *) &src [(dst_pos + 0) * NUM_TIMESLOTS + dst_num];\
                    __m64 w1 = * (__m64 *) &src [(dst_pos + 1) * NUM_TIMESLOTS + dst_num];\
                    __m64 w2 = * (__m64 *) &src [(dst_pos + 2) * NUM_TIMESLOTS + dst_num];\
                    __m64 w3 = * (__m64 *) &src [(dst_pos + 3) * NUM_TIMESLOTS + dst_num];\
                    __m128i x0 = _mm_setr_epi64 (w0, w1);\
                    __m128i x1 = _mm_setr_epi64 (w2, w3);\
                    m0 = _128i_shuffle (x0, x1, 0, 2, 0, 2);\
                    m1 = _128i_shuffle (x0, x1, 1, 3, 1, 3);\
                    m0 = transpose_4x4 (m0);\
                    m1 = transpose_4x4 (m1);\
                } while (0)

#define MOVE128(dst_pos) do {\
                __m128i a0, a1, a2, a3, b0, b1, b2, b3;\
                LOAD32 (a0, b0, dst_pos);\
                LOAD32 (a1, b1, dst_pos + 4);\
                LOAD32 (a2, b2, dst_pos + 8);\
                LOAD32 (a3, b3, dst_pos + 12);\
                transpose_4x4_dwords (a0, a1, a2, a3);\
                _128i_store (&d0 [dst_pos], a0);\
                _128i_store (&d1 [dst_pos], a1);\
                _128i_store (&d2 [dst_pos], a2);\
                _128i_store (&d3 [dst_pos], a3);\
                transpose_4x4_dwords (b0, b1, b2, b3);\
                _128i_store (&d4 [dst_pos], b0);\
                _128i_store (&d5 [dst_pos], b1);\
                _128i_store (&d6 [dst_pos], b2);\
                _128i_store (&d7 [dst_pos], b3);\
            } while (0)

            MOVE128 (0);
            MOVE128 (16);
            MOVE128 (32);
            MOVE128 (48);
#undef LOAD32
#undef MOVE128
        }
    }
};

inline void transpose_16x16 (
                __m128i&  x0, __m128i&  x1, __m128i&  x2, __m128i&  x3,
                __m128i&  x4, __m128i&  x5, __m128i&  x6, __m128i&  x7,
                __m128i&  x8, __m128i&  x9, __m128i& x10, __m128i& x11,
                __m128i& x12, __m128i& x13, __m128i& x14, __m128i& x15)
{
    __m128i m00, m01, m02, m03;
    __m128i m10, m11, m12, m13;
    __m128i m20, m21, m22, m23;
    __m128i m30, m31, m32, m33;

    transpose_4x4_dwords ( x0,  x1,  x2,  x3, m00, m01, m02, m03);
    transpose_4x4_dwords ( x4,  x5,  x6,  x7, m10, m11, m12, m13);
    transpose_4x4_dwords ( x8,  x9, x10, x11, m20, m21, m22, m23);
    transpose_4x4_dwords (x12, x13, x14, x15, m30, m31, m32, m33);
    m00 = transpose_4x4 (m00);
    m01 = transpose_4x4 (m01);
    m02 = transpose_4x4 (m02);
    m03 = transpose_4x4 (m03);
    m10 = transpose_4x4 (m10);
    m11 = transpose_4x4 (m11);
    m12 = transpose_4x4 (m12);
    m13 = transpose_4x4 (m13);
    m20 = transpose_4x4 (m20);
    m21 = transpose_4x4 (m21);
    m22 = transpose_4x4 (m22);
    m23 = transpose_4x4 (m23);
    m30 = transpose_4x4 (m30);
    m31 = transpose_4x4 (m31);
    m32 = transpose_4x4 (m32);
    m33 = transpose_4x4 (m33);
    transpose_4x4_dwords (m00, m10, m20, m30,  x0,  x1,  x2, x3);
    transpose_4x4_dwords (m01, m11, m21, m31,  x4,  x5,  x6, x7);
    transpose_4x4_dwords (m02, m12, m22, m32,  x8,  x9, x10, x11);
    transpose_4x4_dwords (m03, m13, m23, m33, x12, x13, x14, x15);
}

class Read16_Write16_SSE : public Demux
{
public:
    void demux (const byte * src, size_t src_length, byte ** dst) const
    {
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);
        assert (DST_SIZE % 16 == 0);
        assert (NUM_TIMESLOTS % 16 == 0);

        for (size_t dst_num = 0; dst_num < NUM_TIMESLOTS; dst_num += 16) {
            byte * d0 = dst [dst_num + 0];
            byte * d1 = dst [dst_num + 1];
            byte * d2 = dst [dst_num + 2];
            byte * d3 = dst [dst_num + 3];
            byte * d4 = dst [dst_num + 4];
            byte * d5 = dst [dst_num + 5];
            byte * d6 = dst [dst_num + 6];
            byte * d7 = dst [dst_num + 7];
            byte * d8 = dst [dst_num + 8];
            byte * d9 = dst [dst_num + 9];
            byte * d10= dst [dst_num +10];
            byte * d11= dst [dst_num +11];
            byte * d12= dst [dst_num +12];
            byte * d13= dst [dst_num +13];
            byte * d14= dst [dst_num +14];
            byte * d15= dst [dst_num +15];
            for (size_t dst_pos = 0; dst_pos < DST_SIZE; dst_pos += 16) {

#define LOADREG(i) __m128i w##i = _128i_load (&src [(dst_pos + i) * NUM_TIMESLOTS + dst_num])
#define STOREREG(i) _128i_store (&d##i [dst_pos], w##i)

                LOADREG (0);  LOADREG (1);  LOADREG (2);  LOADREG (3);
                LOADREG (4);  LOADREG (5);  LOADREG (6);  LOADREG (7);
                LOADREG (8);  LOADREG (9);  LOADREG (10); LOADREG (11);
                LOADREG (12); LOADREG (13); LOADREG (14); LOADREG (15);
                transpose_16x16 (w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15);
                STOREREG (0);  STOREREG (1);  STOREREG (2);  STOREREG (3);
                STOREREG (4);  STOREREG (5);  STOREREG (6);  STOREREG (7);
                STOREREG (8);  STOREREG (9);  STOREREG (10); STOREREG (11);
                STOREREG (12); STOREREG (13); STOREREG (14); STOREREG (15);
#undef LOADREG
#undef STOREREG 
           }
        }
    }
};

// a macro version of transpose_16x16. The original function is so big that the compiler does not always
// inline it; only defining it as a macro inlines it reliably.

#define _transpose_16x16(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15) do {\
    __m128i m00, m01, m02, m03;\
    __m128i m10, m11, m12, m13;\
    __m128i m20, m21, m22, m23;\
    __m128i m30, m31, m32, m33;\
    transpose_4x4_dwords ( x0,  x1,  x2,  x3, m00, m01, m02, m03);\
    transpose_4x4_dwords ( x4,  x5,  x6,  x7, m10, m11, m12, m13);\
    transpose_4x4_dwords ( x8,  x9, x10, x11, m20, m21, m22, m23);\
    transpose_4x4_dwords (x12, x13, x14, x15, m30, m31, m32, m33);\
    m00 = transpose_4x4 (m00);\
    m01 = transpose_4x4 (m01);\
    m02 = transpose_4x4 (m02);\
    m03 = transpose_4x4 (m03);\
    m10 = transpose_4x4 (m10);\
    m11 = transpose_4x4 (m11);\
    m12 = transpose_4x4 (m12);\
    m13 = transpose_4x4 (m13);\
    m20 = transpose_4x4 (m20);\
    m21 = transpose_4x4 (m21);\
    m22 = transpose_4x4 (m22);\
    m23 = transpose_4x4 (m23);\
    m30 = transpose_4x4 (m30);\
    m31 = transpose_4x4 (m31);\
    m32 = transpose_4x4 (m32);\
    m33 = transpose_4x4 (m33);\
    transpose_4x4_dwords (m00, m10, m20, m30,  x0,  x1,  x2, x3);\
    transpose_4x4_dwords (m01, m11, m21, m31,  x4,  x5,  x6, x7);\
    transpose_4x4_dwords (m02, m12, m22, m32,  x8,  x9, x10, x11);\
    transpose_4x4_dwords (m03, m13, m23, m33, x12, x13, x14, x15);\
} while (0)

class Read16_Write16_SSE_Unroll : public Demux
{
public:
    void demux (const byte * src, size_t src_length, byte ** dst) const
    {
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);
        assert (DST_SIZE == 64);
        assert (NUM_TIMESLOTS % 16 == 0);

        for (size_t dst_num = 0; dst_num < NUM_TIMESLOTS; dst_num += 16) {
            byte * d0 = dst [dst_num + 0];
            byte * d1 = dst [dst_num + 1];
            byte * d2 = dst [dst_num + 2];
            byte * d3 = dst [dst_num + 3];
            byte * d4 = dst [dst_num + 4];
            byte * d5 = dst [dst_num + 5];
            byte * d6 = dst [dst_num + 6];
            byte * d7 = dst [dst_num + 7];
            byte * d8 = dst [dst_num + 8];
            byte * d9 = dst [dst_num + 9];
            byte * d10= dst [dst_num +10];
            byte * d11= dst [dst_num +11];
            byte * d12= dst [dst_num +12];
            byte * d13= dst [dst_num +13];
            byte * d14= dst [dst_num +14];
            byte * d15= dst [dst_num +15];

#define LOADREG(dst_pos, i) __m128i w##i = _128i_load (&src [(dst_pos + i) * NUM_TIMESLOTS + dst_num])
#define STOREREG(dst_pos, i) _128i_store (&d##i [dst_pos], w##i)

#define MOVE256(dst_pos) do {\
                LOADREG (dst_pos, 0);  LOADREG (dst_pos, 1);  LOADREG (dst_pos, 2);  LOADREG (dst_pos, 3);\
                LOADREG (dst_pos, 4);  LOADREG (dst_pos, 5);  LOADREG (dst_pos, 6);  LOADREG (dst_pos, 7);\
                LOADREG (dst_pos, 8);  LOADREG (dst_pos, 9);  LOADREG (dst_pos, 10); LOADREG (dst_pos, 11);\
                LOADREG (dst_pos, 12); LOADREG (dst_pos, 13); LOADREG (dst_pos, 14); LOADREG (dst_pos, 15);\
                _transpose_16x16 (w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15);\
                STOREREG (dst_pos, 0);  STOREREG (dst_pos, 1);  STOREREG (dst_pos, 2);  STOREREG (dst_pos, 3);\
                STOREREG (dst_pos, 4);  STOREREG (dst_pos, 5);  STOREREG (dst_pos, 6);  STOREREG (dst_pos, 7);\
                STOREREG (dst_pos, 8);  STOREREG (dst_pos, 9);  STOREREG (dst_pos, 10); STOREREG (dst_pos, 11);\
                STOREREG (dst_pos, 12); STOREREG (dst_pos, 13); STOREREG (dst_pos, 14); STOREREG (dst_pos, 15);\
            } while (0)

            MOVE256 (0);
            MOVE256 (16);
            MOVE256 (32);
            MOVE256 (48);
#undef MOVE256
#undef LOADREG
#undef STOREREG 
        }
    }
};

class Read4_Write32_AVX : public Demux
{
public:
    void demux (const byte * src, size_t src_length, byte ** dst) const
    {
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);
        assert (DST_SIZE % 32 == 0);
        assert (NUM_TIMESLOTS % 4 == 0);

        for (size_t dst_num = 0; dst_num < NUM_TIMESLOTS; dst_num += 4) {
            byte * d0 = dst [dst_num + 0];
            byte * d1 = dst [dst_num + 1];
            byte * d2 = dst [dst_num + 2];
            byte * d3 = dst [dst_num + 3];
            for (size_t dst_pos = 0; dst_pos < DST_SIZE; dst_pos += 32) {

#define LOAD16(m, dst_pos) do {\
                    uint32_t w0 = * (uint32_t*) &src [(dst_pos + 0) * NUM_TIMESLOTS + dst_num];\
                    uint32_t w1 = * (uint32_t*) &src [(dst_pos + 1) * NUM_TIMESLOTS + dst_num];\
                    uint32_t w2 = * (uint32_t*) &src [(dst_pos + 2) * NUM_TIMESLOTS + dst_num];\
                    uint32_t w3 = * (uint32_t*) &src [(dst_pos + 3) * NUM_TIMESLOTS + dst_num];\
                    m = _mm_setr_epi32 (w0, w1, w2, w3);\
                    m = transpose_4x4 (m);\
                } while (0)

                __m128i a0, a1, a2, a3;
                LOAD16 (a0, dst_pos);
                LOAD16 (a1, dst_pos + 4);
                LOAD16 (a2, dst_pos + 8);
                LOAD16 (a3, dst_pos + 12);

                __m128i b0, b1, b2, b3;
                LOAD16 (b0, dst_pos + 16);
                LOAD16 (b1, dst_pos + 20);
                LOAD16 (b2, dst_pos + 24);
                LOAD16 (b3, dst_pos + 28);

                __m256i w0 = _256i_combine_lo_hi (a0, b0);
                __m256i w1 = _256i_combine_lo_hi (a1, b1);
                __m256i w2 = _256i_combine_lo_hi (a2, b2);
                __m256i w3 = _256i_combine_lo_hi (a3, b3);

                transpose_avx_4x4_dwords (w0, w1, w2, w3);
                _256i_store (&d0 [dst_pos], w0);
                _256i_store (&d1 [dst_pos], w1);
                _256i_store (&d2 [dst_pos], w2);
                _256i_store (&d3 [dst_pos], w3);
#undef LOAD16
            }
        }
    }
};

class Read8_Write32_AVX : public Demux
{
public:
    void demux (const byte * src, size_t src_length, byte ** dst) const
    {
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);
        assert (DST_SIZE % 32 == 0);
        assert (NUM_TIMESLOTS % 8 == 0);

        for (size_t dst_num = 0; dst_num < NUM_TIMESLOTS; dst_num += 8) {
            byte * d0 = dst [dst_num + 0];
            byte * d1 = dst [dst_num + 1];
            byte * d2 = dst [dst_num + 2];
            byte * d3 = dst [dst_num + 3];
            byte * d4 = dst [dst_num + 4];
            byte * d5 = dst [dst_num + 5];
            byte * d6 = dst [dst_num + 6];
            byte * d7 = dst [dst_num + 7];
            for (size_t dst_pos = 0; dst_pos < DST_SIZE; dst_pos += 32) {

#define LOAD32(m0, m1, dst_pos) do {\
                    __m64 w0 = * (__m64 *) &src [(dst_pos + 0) * NUM_TIMESLOTS + dst_num];\
                    __m64 w1 = * (__m64 *) &src [(dst_pos + 1) * NUM_TIMESLOTS + dst_num];\
                    __m64 w2 = * (__m64 *) &src [(dst_pos + 2) * NUM_TIMESLOTS + dst_num];\
                    __m64 w3 = * (__m64 *) &src [(dst_pos + 3) * NUM_TIMESLOTS + dst_num];\
                    __m128i x0 = _mm_setr_epi64 (w0, w1);\
                    __m128i x1 = _mm_setr_epi64 (w2, w3);\
                    m0 = _128i_shuffle (x0, x1, 0, 2, 0, 2);\
                    m1 = _128i_shuffle (x0, x1, 1, 3, 1, 3);\
                    m0 = transpose_4x4 (m0);\
                    m1 = transpose_4x4 (m1);\
                } while (0)

                __m128i a0, a1, a2, a3, b0, b1, b2, b3;
                LOAD32 (a0, b0, dst_pos);
                LOAD32 (a1, b1, dst_pos + 4);
                LOAD32 (a2, b2, dst_pos + 8);
                LOAD32 (a3, b3, dst_pos + 12);

                __m128i c0, c1, c2, c3, e0, e1, e2, e3;
                LOAD32 (c0, e0, dst_pos + 16);
                LOAD32 (c1, e1, dst_pos + 20);
                LOAD32 (c2, e2, dst_pos + 24);
                LOAD32 (c3, e3, dst_pos + 28);

                __m256i w0 = _256i_combine_lo_hi (a0, c0);
                __m256i w1 = _256i_combine_lo_hi (a1, c1);
                __m256i w2 = _256i_combine_lo_hi (a2, c2);
                __m256i w3 = _256i_combine_lo_hi (a3, c3);
                __m256i w4 = _256i_combine_lo_hi (b0, e0);
                __m256i w5 = _256i_combine_lo_hi (b1, e1);
                __m256i w6 = _256i_combine_lo_hi (b2, e2);
                __m256i w7 = _256i_combine_lo_hi (b3, e3);

                transpose_avx_4x4_dwords (w0, w1, w2, w3);
                _256i_store (&d0 [dst_pos], w0);
                _256i_store (&d1 [dst_pos], w1);
                _256i_store (&d2 [dst_pos], w2);
                _256i_store (&d3 [dst_pos], w3);

                transpose_avx_4x4_dwords (w4, w5, w6, w7);
                _256i_store (&d4 [dst_pos], w4);
                _256i_store (&d5 [dst_pos], w5);
                _256i_store (&d6 [dst_pos], w6);
                _256i_store (&d7 [dst_pos], w7);
#undef LOAD32
            }
        }
    }
};

class Read8_Write32_AVX_Unroll : public Demux
{
public:
    void demux (const byte * src, size_t src_length, byte ** dst) const
    {
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);
        assert (DST_SIZE == 64);
        assert (NUM_TIMESLOTS % 8 == 0);

        for (size_t dst_num = 0; dst_num < NUM_TIMESLOTS; dst_num += 8) {
            byte * d0 = dst [dst_num + 0];
            byte * d1 = dst [dst_num + 1];
            byte * d2 = dst [dst_num + 2];
            byte * d3 = dst [dst_num + 3];
            byte * d4 = dst [dst_num + 4];
            byte * d5 = dst [dst_num + 5];
            byte * d6 = dst [dst_num + 6];
            byte * d7 = dst [dst_num + 7];

#define LOAD32(m0, m1, dst_pos) do {\
                    __m64 w0 = * (__m64 *) &src [(dst_pos + 0) * NUM_TIMESLOTS + dst_num];\
                    __m64 w1 = * (__m64 *) &src [(dst_pos + 1) * NUM_TIMESLOTS + dst_num];\
                    __m64 w2 = * (__m64 *) &src [(dst_pos + 2) * NUM_TIMESLOTS + dst_num];\
                    __m64 w3 = * (__m64 *) &src [(dst_pos + 3) * NUM_TIMESLOTS + dst_num];\
                    __m128i x0 = _mm_setr_epi64 (w0, w1);\
                    __m128i x1 = _mm_setr_epi64 (w2, w3);\
                    m0 = _128i_shuffle (x0, x1, 0, 2, 0, 2);\
                    m1 = _128i_shuffle (x0, x1, 1, 3, 1, 3);\
                    m0 = transpose_4x4 (m0);\
                    m1 = transpose_4x4 (m1);\
                } while (0)

#define MOVE256(dst_pos) do {\
                __m128i a0, a1, a2, a3, b0, b1, b2, b3;\
                LOAD32 (a0, b0, dst_pos);\
                LOAD32 (a1, b1, dst_pos + 4);\
                LOAD32 (a2, b2, dst_pos + 8);\
                LOAD32 (a3, b3, dst_pos + 12);\
\
                __m128i c0, c1, c2, c3, e0, e1, e2, e3;\
                LOAD32 (c0, e0, dst_pos + 16);\
                LOAD32 (c1, e1, dst_pos + 20);\
                LOAD32 (c2, e2, dst_pos + 24);\
                LOAD32 (c3, e3, dst_pos + 28);\
\
                __m256i w0 = _256i_combine_lo_hi (a0, c0);\
                __m256i w1 = _256i_combine_lo_hi (a1, c1);\
                __m256i w2 = _256i_combine_lo_hi (a2, c2);\
                __m256i w3 = _256i_combine_lo_hi (a3, c3);\
                __m256i w4 = _256i_combine_lo_hi (b0, e0);\
                __m256i w5 = _256i_combine_lo_hi (b1, e1);\
                __m256i w6 = _256i_combine_lo_hi (b2, e2);\
                __m256i w7 = _256i_combine_lo_hi (b3, e3);\
\
                transpose_avx_4x4_dwords (w0, w1, w2, w3);\
                _256i_store (&d0 [dst_pos], w0);\
                _256i_store (&d1 [dst_pos], w1);\
                _256i_store (&d2 [dst_pos], w2);\
                _256i_store (&d3 [dst_pos], w3);\
\
                transpose_avx_4x4_dwords (w4, w5, w6, w7);\
                _256i_store (&d4 [dst_pos], w4);\
                _256i_store (&d5 [dst_pos], w5);\
                _256i_store (&d6 [dst_pos], w6);\
                _256i_store (&d7 [dst_pos], w7);\
            } while (0)

            MOVE256 (0);
            MOVE256 (32);
#undef LOAD32
#undef MOVE256
        }
    }
};

byte * generate ()
{
    byte * buf = new byte [SRC_SIZE];
    srand (0);
    for (size_t i = 0; i < SRC_SIZE; i++) buf[i] = (byte) (rand () % 256);
    return buf;
}
    
byte ** allocate_dst ()
{
    byte ** result = new byte * [NUM_TIMESLOTS];
    for (size_t i = 0; i < NUM_TIMESLOTS; i++) {
        result [i] = (byte *) _mm_malloc (DST_SIZE, 32); // new byte [DST_SIZE];
        memset (result [i], 0, DST_SIZE);
    }
    return result;
}

void delete_dst (byte ** dst)
{
    for (size_t i = 0; i < NUM_TIMESLOTS; i++) {
        _mm_free (dst [i]); // delete dst [i];
    }
    delete dst;
}
    
void check (const Demux & demux)
{
    byte * src = generate ();
    byte ** dst0 = allocate_dst ();
    byte ** dst = allocate_dst ();
    Reference().demux (src, SRC_SIZE, dst0);
    demux.demux (src, SRC_SIZE, dst);

    for (int i = 0; i < NUM_TIMESLOTS; i++) {
        if (memcmp (dst0[i], dst[i], DST_SIZE)) {
            cout << "Results not equal: line " << i << "\n";
            exit (1);
        }
    }
    delete src;
    delete_dst (dst0);
    delete_dst (dst);
}

byte * src;
byte ** dst;

void measure (const Demux & demux)
{
    check (demux);

    uint64_t t0 = currentTimeMillis ();
    for (int i = 0; i < ITERATIONS; i++) {
        demux.demux (src, SRC_SIZE, dst);
    }
    uint64_t t = currentTimeMillis () - t0;
    cout << typeid (demux).name() << ": " << t << endl;
}

int main (void)
{
    src = generate ();
    dst = allocate_dst ();

    measure (Reference ());
    measure (Write4 ());
    measure (Write8 ());
    measure (Read4_Write4 ());
    measure (Read4_Write4_Unroll ());
    measure (Read4_Write4_SSE ());
    measure (Read4_Write16_SSE ());
    measure (Read8_Write16_SSE ());
    measure (Read8_Write16_SSE_Unroll ());
    measure (Read16_Write16_SSE ());
    measure (Read16_Write16_SSE_Unroll ());
    measure (Read4_Write32_AVX ());
    measure (Read8_Write32_AVX ());
    measure (Read8_Write32_AVX_Unroll ());

    return 0;
}
