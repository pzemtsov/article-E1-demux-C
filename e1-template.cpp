/**  Revision 1: Created, based on e1.cpp.
                 Converted all macro-based implementations into templated versions.
                 Templated partially-unrolled versions on the unroll factor.
                 Removed Unrolled_3 and Unrolled_4.
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

template<unsigned N> inline void move_bytes (const byte * src, byte * d, unsigned j)
{
    move_bytes<N-1> (src, d, j);
    d[N-1] = src [j + (N-1) * 32];
}

template<> inline void move_bytes<0> (const byte * src, byte * d, unsigned j) {}

inline void move_timeslot (const byte * src, byte ** dst, unsigned j)
{
    move_bytes<DST_SIZE> (src, dst [j], j);
}

class Unrolled_1 : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);

        for (unsigned j = 0; j < NUM_TIMESLOTS; j++) {
            move_timeslot (src, dst, j);
        }
    }
};

template<unsigned N> inline void move_timeslots (const byte * src, byte ** dst, unsigned j)
{
    move_timeslots<N-1> (src, dst, j);
    move_timeslot (src, dst, j+N-1);
}

template<> inline void move_timeslots<0> (const byte * src, byte ** dst, unsigned j) {}

template<unsigned F> class Unrolled_1_F : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);

        for (unsigned j = 0; j < NUM_TIMESLOTS; j+=F) {
            move_timeslots<F> (src, dst, j);
        }
    }
};

class Unrolled_2_Full : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        assert (src_length == NUM_TIMESLOTS * DST_SIZE);

        move_timeslots<NUM_TIMESLOTS> (src, dst, 0);
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
    measure (Unrolled_1 ());
    measure (Unrolled_1_F<2> ());
    measure (Unrolled_1_F<4> ());
    measure (Unrolled_1_F<8> ());
    measure (Unrolled_1_F<16>());
    measure (Unrolled_2_Full ());

    return 0;
}
