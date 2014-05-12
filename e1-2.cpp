/**  The simplified version of e1.cpp, only used for resolving performance instability issue
     (see article "The mystery of an unstable performance").
     Contains simplified versions of Dst_First_1 and Dst_First_2
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

class Dst_First_1 : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        for (unsigned dst_num = 0; dst_num < NUM_TIMESLOTS; ++ dst_num) {
            for (unsigned dst_pos = 0; dst_pos < src_length / NUM_TIMESLOTS; ++ dst_pos) {
                dst [dst_num][dst_pos] = src [dst_pos * NUM_TIMESLOTS + dst_num];
            }
        }
    }
};

class Dst_First_3 : public Demux
{
public:
    void demux (const byte * src, unsigned src_length, byte ** dst) const
    {
        for (unsigned dst_num = 0; dst_num < NUM_TIMESLOTS; ++ dst_num) {
            for (unsigned dst_pos = 0; dst_pos < DST_SIZE; ++ dst_pos) {
                dst [dst_num][dst_pos] = src [dst_pos * NUM_TIMESLOTS + dst_num];
            }
        }
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
    
byte * src;
byte ** dst;

void measure (const Demux & demux)
{
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

    measure (Dst_First_1 ());
    measure (Dst_First_3 ());

    return 0;
}
