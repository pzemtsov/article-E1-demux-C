/**  Revision 1: Created. Added version Write4
     Revision 2: Added Write8
     Revision 3: Added Read4_Write4
     Revision 4: Unrolled Read4_Write4
     Revision 5: Added Read4_Write4_SSE
     Revision 6: Added Read4_Write16_SSE
     Revision 7: Improved Read4_Write16_SSE
     Revision 8: Added Read8_Write16_SSE (normal and unrolled versions)
     Revision 9: Improved Read8_Write16_SSE (normal and unrolled version)
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

    return 0;
}
