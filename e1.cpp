/**  Revision 1: Created. Converted all non-inlined versions from Java to C++
     Revision 2: Converted all unrolled versions from Java to C++
  */

#include <cassert>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <typeinfo>

#include "timer.h"

typedef unsigned char byte;

static const unsigned NUM_TIMESLOTS = 32;
static const unsigned DST_SIZE = 64;
static const unsigned SRC_SIZE = NUM_TIMESLOTS * DST_SIZE;
static const unsigned ITERATIONS = 1000000;
static const unsigned REPETITIONS = 2;

using namespace std;

class Demux
{
public:
    virtual void demux (const byte * src, unsigned src_length, byte ** dst) const = 0;
};

class Reference : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (src_length % NUM_TIMESLOTS == 0);

        unsigned dst_pos = 0;
        unsigned dst_num = 0;
        for (unsigned src_pos = 0; src_pos < src_length; src_pos++) {
            dst [dst_num][dst_pos] = src [src_pos];
            if (++ dst_num == NUM_TIMESLOTS) {
                dst_num = 0;
                ++ dst_pos;
            }
        }
    }
};

class Src_First_1 : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (src_length % NUM_TIMESLOTS == 0);

        unsigned src_pos = 0;
        unsigned dst_pos = 0;
        while (src_pos < src_length) {
            for (unsigned dst_num = 0; dst_num < NUM_TIMESLOTS; ++ dst_num) {
                dst [dst_num][dst_pos] = src [src_pos ++];
            }
            ++ dst_pos;
        }
    }
};

class Src_First_2 : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (src_length % NUM_TIMESLOTS == 0);
            
        for (unsigned dst_pos = 0; dst_pos < src_length / NUM_TIMESLOTS; ++ dst_pos) {
            for (unsigned dst_num = 0; dst_num < NUM_TIMESLOTS; ++ dst_num) {
                dst [dst_num][dst_pos] = src [dst_pos * NUM_TIMESLOTS + dst_num];
            }
        }
    }
};

class Src_First_3 : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (src_length % NUM_TIMESLOTS == 0);

        for (unsigned i = 0; i < src_length; i++) {
            dst [i % NUM_TIMESLOTS][i / NUM_TIMESLOTS] = src [i];
        }
    }
};

class Dst_First_1 : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (src_length % NUM_TIMESLOTS == 0);

        for (unsigned dst_num = 0; dst_num < NUM_TIMESLOTS; ++ dst_num) {
            for (unsigned dst_pos = 0; dst_pos < src_length / NUM_TIMESLOTS; ++ dst_pos) {
                dst [dst_num][dst_pos] = src [dst_pos * NUM_TIMESLOTS + dst_num];
            }
        }
    }
};

class Dst_First_2 : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (src_length % NUM_TIMESLOTS == 0);

        unsigned dst_size = src_length / NUM_TIMESLOTS;
        for (unsigned dst_num = 0; dst_num < NUM_TIMESLOTS; ++ dst_num) {
            byte * d = dst [dst_num];
            unsigned src_pos = dst_num;
            for (unsigned dst_pos = 0; dst_pos < dst_size; ++ dst_pos) {
                d[dst_pos] = src[src_pos];
                src_pos += NUM_TIMESLOTS;
            }
        }
    }
};

class Dst_First_3 : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);

        for (unsigned dst_num = 0; dst_num < NUM_TIMESLOTS; ++ dst_num) {
            for (unsigned dst_pos = 0; dst_pos < DST_SIZE; ++ dst_pos) {
                dst [dst_num][dst_pos] = src [dst_pos * NUM_TIMESLOTS + dst_num];
            }
        }
    }
};

#define MOVE_BYTE(i,j) d[i] = src [(j)+(i)*32]

#define MOVE_BYTES_64(j) do {\
        MOVE_BYTE ( 0, j); MOVE_BYTE ( 1, j); MOVE_BYTE ( 2, j); MOVE_BYTE ( 3, j);\
        MOVE_BYTE ( 4, j); MOVE_BYTE ( 5, j); MOVE_BYTE ( 6, j); MOVE_BYTE ( 7, j);\
        MOVE_BYTE ( 8, j); MOVE_BYTE ( 9, j); MOVE_BYTE (10, j); MOVE_BYTE (11, j);\
        MOVE_BYTE (12, j); MOVE_BYTE (13, j); MOVE_BYTE (14, j); MOVE_BYTE (15, j);\
        MOVE_BYTE (16, j); MOVE_BYTE (17, j); MOVE_BYTE (18, j); MOVE_BYTE (19, j);\
        MOVE_BYTE (20, j); MOVE_BYTE (21, j); MOVE_BYTE (22, j); MOVE_BYTE (23, j);\
        MOVE_BYTE (24, j); MOVE_BYTE (25, j); MOVE_BYTE (26, j); MOVE_BYTE (27, j);\
        MOVE_BYTE (28, j); MOVE_BYTE (29, j); MOVE_BYTE (30, j); MOVE_BYTE (31, j);\
        MOVE_BYTE (32, j); MOVE_BYTE (33, j); MOVE_BYTE (34, j); MOVE_BYTE (35, j);\
        MOVE_BYTE (36, j); MOVE_BYTE (37, j); MOVE_BYTE (38, j); MOVE_BYTE (39, j);\
        MOVE_BYTE (40, j); MOVE_BYTE (41, j); MOVE_BYTE (42, j); MOVE_BYTE (43, j);\
        MOVE_BYTE (44, j); MOVE_BYTE (45, j); MOVE_BYTE (46, j); MOVE_BYTE (47, j);\
        MOVE_BYTE (48, j); MOVE_BYTE (49, j); MOVE_BYTE (50, j); MOVE_BYTE (51, j);\
        MOVE_BYTE (52, j); MOVE_BYTE (53, j); MOVE_BYTE (54, j); MOVE_BYTE (55, j);\
        MOVE_BYTE (56, j); MOVE_BYTE (57, j); MOVE_BYTE (58, j); MOVE_BYTE (59, j);\
        MOVE_BYTE (60, j); MOVE_BYTE (61, j); MOVE_BYTE (62, j); MOVE_BYTE (63, j);\
    } while (0)

#define MOVE_TIMESLOT(j) do {\
        byte * const d = dst[j];\
        MOVE_BYTES_64 (j);\
    } while (0)

class Unrolled_1 : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (NUM_TIMESLOTS == 32);
        assert (DST_SIZE == 64);
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);

        for (unsigned j = 0; j < NUM_TIMESLOTS; j++) {
            MOVE_TIMESLOT (j);
        }
    }
};

class Unrolled_1_2 : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (NUM_TIMESLOTS == 32);
        assert (DST_SIZE == 64);
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);

        for (unsigned j = 0; j < NUM_TIMESLOTS; j+=2) {
            MOVE_TIMESLOT (j);
            MOVE_TIMESLOT (j+1);
        }
    }
};
   
class Unrolled_1_4 : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (NUM_TIMESLOTS == 32);
        assert (DST_SIZE == 64);
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);
        for (unsigned j = 0; j < NUM_TIMESLOTS; j+=4) {
            MOVE_TIMESLOT (j);
            MOVE_TIMESLOT (j+1);
            MOVE_TIMESLOT (j+2);
            MOVE_TIMESLOT (j+3);
        }
    }
};

class Unrolled_1_8 : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (NUM_TIMESLOTS == 32);
        assert (DST_SIZE == 64);
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);
        for (unsigned j = 0; j < NUM_TIMESLOTS; j+=8) {
            MOVE_TIMESLOT (j);
            MOVE_TIMESLOT (j+1);
            MOVE_TIMESLOT (j+2);
            MOVE_TIMESLOT (j+3);
            MOVE_TIMESLOT (j+4);
            MOVE_TIMESLOT (j+5);
            MOVE_TIMESLOT (j+6);
            MOVE_TIMESLOT (j+7);
        }
    }
};
   
class Unrolled_1_16 : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (NUM_TIMESLOTS == 32);
        assert (DST_SIZE == 64);
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);
        for (unsigned j = 0; j < NUM_TIMESLOTS; j+=16) {
            MOVE_TIMESLOT (j);
            MOVE_TIMESLOT (j+1);
            MOVE_TIMESLOT (j+2);
            MOVE_TIMESLOT (j+3);
            MOVE_TIMESLOT (j+4);
            MOVE_TIMESLOT (j+5);
            MOVE_TIMESLOT (j+6);
            MOVE_TIMESLOT (j+7);
            MOVE_TIMESLOT (j+8);
            MOVE_TIMESLOT (j+9);
            MOVE_TIMESLOT (j+10);
            MOVE_TIMESLOT (j+11);
            MOVE_TIMESLOT (j+12);
            MOVE_TIMESLOT (j+13);
            MOVE_TIMESLOT (j+14);
            MOVE_TIMESLOT (j+15);
        }
    }
};
    
class Unrolled_2_Full : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (NUM_TIMESLOTS == 32);
        assert (DST_SIZE == 64);
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);

        MOVE_TIMESLOT ( 0); MOVE_TIMESLOT ( 1); MOVE_TIMESLOT ( 2); MOVE_TIMESLOT ( 3);
        MOVE_TIMESLOT ( 4); MOVE_TIMESLOT ( 5); MOVE_TIMESLOT ( 6); MOVE_TIMESLOT ( 7);
        MOVE_TIMESLOT ( 8); MOVE_TIMESLOT ( 9); MOVE_TIMESLOT (10); MOVE_TIMESLOT (11);
        MOVE_TIMESLOT (12); MOVE_TIMESLOT (13); MOVE_TIMESLOT (14); MOVE_TIMESLOT (15);
        MOVE_TIMESLOT (16); MOVE_TIMESLOT (17); MOVE_TIMESLOT (18); MOVE_TIMESLOT (19);
        MOVE_TIMESLOT (20); MOVE_TIMESLOT (21); MOVE_TIMESLOT (22); MOVE_TIMESLOT (23);
        MOVE_TIMESLOT (24); MOVE_TIMESLOT (25); MOVE_TIMESLOT (26); MOVE_TIMESLOT (27);
        MOVE_TIMESLOT (28); MOVE_TIMESLOT (29); MOVE_TIMESLOT (30); MOVE_TIMESLOT (31);
    }
};

class Unrolled_3 : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (src_length % NUM_TIMESLOTS == 0);

#define CALL_DEMUX(i) demux_##i (src, dst[i])

        CALL_DEMUX ( 0); CALL_DEMUX ( 1); CALL_DEMUX ( 2); CALL_DEMUX ( 3);
        CALL_DEMUX ( 4); CALL_DEMUX ( 5); CALL_DEMUX ( 6); CALL_DEMUX ( 7);
        CALL_DEMUX ( 8); CALL_DEMUX ( 9); CALL_DEMUX (10); CALL_DEMUX (11);
        CALL_DEMUX (12); CALL_DEMUX (13); CALL_DEMUX (14); CALL_DEMUX (15);
        CALL_DEMUX (16); CALL_DEMUX (17); CALL_DEMUX (18); CALL_DEMUX (19);
        CALL_DEMUX (20); CALL_DEMUX (21); CALL_DEMUX (22); CALL_DEMUX (23);
        CALL_DEMUX (24); CALL_DEMUX (25); CALL_DEMUX (26); CALL_DEMUX (27);
        CALL_DEMUX (28); CALL_DEMUX (29); CALL_DEMUX (30); CALL_DEMUX (31);
#undef CALL_DEMUX
    }

private:

#define DEF_DEMUX(i) \
    inline void demux_##i (const byte * src, byte * d) const\
    {\
        MOVE_BYTES_64 (i);\
    }

    DEF_DEMUX ( 0) DEF_DEMUX ( 1) DEF_DEMUX ( 2) DEF_DEMUX ( 3)
    DEF_DEMUX ( 4) DEF_DEMUX ( 5) DEF_DEMUX ( 6) DEF_DEMUX ( 7)
    DEF_DEMUX ( 8) DEF_DEMUX ( 9) DEF_DEMUX (10) DEF_DEMUX (11)
    DEF_DEMUX (12) DEF_DEMUX (13) DEF_DEMUX (14) DEF_DEMUX (15)
    DEF_DEMUX (16) DEF_DEMUX (17) DEF_DEMUX (18) DEF_DEMUX (19)
    DEF_DEMUX (20) DEF_DEMUX (21) DEF_DEMUX (22) DEF_DEMUX (23)
    DEF_DEMUX (24) DEF_DEMUX (25) DEF_DEMUX (26) DEF_DEMUX (27)
    DEF_DEMUX (28) DEF_DEMUX (29) DEF_DEMUX (30) DEF_DEMUX (31)
#undef DEF_DEMUX
};

class Unrolled_4 : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (NUM_TIMESLOTS == 32);
        assert (DST_SIZE == 64);
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);

#define DEMUX(i) demux_0 (src, dst[i], i)
        DEMUX ( 0); DEMUX ( 1); DEMUX ( 2); DEMUX ( 3);
        DEMUX ( 4); DEMUX ( 5); DEMUX ( 6); DEMUX ( 7);
        DEMUX ( 8); DEMUX ( 9); DEMUX (10); DEMUX (11);
        DEMUX (12); DEMUX (13); DEMUX (14); DEMUX (15);
        DEMUX (16); DEMUX (17); DEMUX (18); DEMUX (19);
        DEMUX (20); DEMUX (21); DEMUX (22); DEMUX (23);
        DEMUX (24); DEMUX (25); DEMUX (26); DEMUX (27);
        DEMUX (28); DEMUX (29); DEMUX (30); DEMUX (31);
#undef DEMUX
    }

private:
    inline void demux_0 (const byte * src, byte * d, unsigned i) const
    {
        MOVE_BYTES_64 (i);
    }

};

byte * generate ()
{
    byte * buf = new byte [SRC_SIZE];
    srand (0);
    for (unsigned i = 0; i < SRC_SIZE; i++) buf[i] = (byte) (rand () % 256);
    return buf;
}
    
byte ** allocate_dst ()
{
    byte ** result = new byte * [NUM_TIMESLOTS];
    for (unsigned i = 0; i < NUM_TIMESLOTS; i++) {
        result [i] = new byte [DST_SIZE];
    }
    return result;
}

void delete_dst (byte ** dst)
{
    for (unsigned i = 0; i < NUM_TIMESLOTS; i++) {
        delete dst [i];
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
            cout << "Results not equal\n";
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

    cout << typeid (demux).name() << ":";

    for (unsigned loop = 0; loop < REPETITIONS; loop ++) {
        uint64_t t0 = currentTimeMillis ();
        for (int i = 0; i < ITERATIONS; i++) {
            demux.demux (src, SRC_SIZE, dst);
        }
        uint64_t t = currentTimeMillis () - t0;
        cout << " " << t;
    }
    cout << endl;
}

int main (void)
{
    src = generate ();
    dst = allocate_dst ();

    measure (Reference ());
    measure (Src_First_1 ());
    measure (Src_First_2 ());
    measure (Src_First_3 ());
    measure (Dst_First_1 ());
    measure (Dst_First_2 ());
    measure (Dst_First_3 ());
    measure (Unrolled_1 ());
    measure (Unrolled_1_2 ());
    measure (Unrolled_1_4 ());
    measure (Unrolled_1_8 ());
    measure (Unrolled_1_16 ());
    measure (Unrolled_2_Full ());
    measure (Unrolled_3 ());
    measure (Unrolled_4 ());

    return 0;
}
