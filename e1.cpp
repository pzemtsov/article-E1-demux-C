/**  Revision 1: Created. Converted all non-inlined versions from Java to C++
     Revision 2: Converted all unrolled versions from Java to C++
     Revision 3: Used generic multipliers in unrolled versions
     Revision 4: Used different version of generic multipliers in unrolled versions
     Revision 5: Replaced test code to run just once
  */

#include <cassert>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <typeinfo>

#include "timer.h"
#include "mymacros.h"

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

#define MOVE_BYTES_64(j) DUP2_64 (MOVE_BYTE,j)

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

#define MOVE_TIMESLOT_J(offset) MOVE_TIMESLOT (j + offset)

class Unrolled_1_2 : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (NUM_TIMESLOTS == 32);
        assert (DST_SIZE == 64);
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);

        for (unsigned j = 0; j < NUM_TIMESLOTS; j+=2) {
            DUP_2 (MOVE_TIMESLOT_J);
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
            DUP_4 (MOVE_TIMESLOT_J);
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
            DUP_8 (MOVE_TIMESLOT_J);
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
            DUP_16 (MOVE_TIMESLOT_J);
        }
    }
};

#undef MOVE_TIMESLOT_J
    
class Unrolled_2_Full : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (NUM_TIMESLOTS == 32);
        assert (DST_SIZE == 64);
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);

        DUP_32 (MOVE_TIMESLOT);
    }
};

class Unrolled_3 : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (src_length % NUM_TIMESLOTS == 0);

#define CALL_DEMUX(i) demux_##i (src, dst[i])
        DUP_32 (CALL_DEMUX);
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

        DUP_32 (DEMUX);

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
