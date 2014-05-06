// duplicators for macros with one parameter;
// DUP_4(p) will be expanded as equivalent of p(0);p(1);p(2);p(3);

#define DUP_2(m)  do {            m( 0); m( 1); } while (0)
#define DUP_4(m)  do { DUP_2(m);  m( 2); m( 3); } while (0)
#define DUP_8(m)  do { DUP_4(m);  m( 4); m( 5); m( 6); m( 7); } while (0)

#define DUP_16(m) do { DUP_8(m);  m( 8); m( 9); m(10); m(11);\
                                  m(12); m(13); m(14); m(15); } while (0)

#define DUP_32(m) do { DUP_16(m); m(16); m(17); m(18); m(19);\
                                  m(20); m(21); m(22); m(23);\
                                  m(24); m(25); m(26); m(27);\
                                  m(28); m(29); m(30); m(31); } while (0)

#define DUP_64(m) do { DUP_32(m); m(32); m(33); m(34); m(35);\
                                  m(36); m(37); m(38); m(39);\
                                  m(40); m(41); m(42); m(43);\
                                  m(44); m(45); m(46); m(47);\
                                  m(48); m(49); m(50); m(51);\
                                  m(52); m(53); m(54); m(55);\
                                  m(56); m(57); m(58); m(59);\
                                  m(60); m(61); m(62); m(63); } while (0)


// duplicators for macros with two parameters;
// DUP2_4(p, j) will be expanded as equivalent of p(0,j);p(1,j);p(2,j);p(3,j);

#define DUP2_2(m,j)  do {               m( 0,j); m( 1,j); } while (0)
#define DUP2_4(m,j)  do { DUP2_2(m,j);  m( 2,j); m( 3,j); } while (0)
#define DUP2_8(m,j)  do { DUP2_4(m,j);  m( 4,j); m( 5,j); m( 6,j); m( 7,j); } while (0)

#define DUP2_16(m,j) do { DUP2_8(m,j);  m( 8,j); m( 9,j); m(10,j); m(11,j);\
                                        m(12,j); m(13,j); m(14,j); m(15,j); } while (0)

#define DUP2_32(m,j) do { DUP2_16(m,j); m(16,j); m(17,j); m(18,j); m(19,j);\
                                        m(20,j); m(21,j); m(22,j); m(23,j);\
                                        m(24,j); m(25,j); m(26,j); m(27,j);\
                                        m(28,j); m(29,j); m(30,j); m(31,j); } while (0)

#define DUP2_64(m,j) do { DUP2_32(m,j); m(32,j); m(33,j); m(34,j); m(35,j);\
                                        m(36,j); m(37,j); m(38,j); m(39,j);\
                                        m(40,j); m(41,j); m(42,j); m(43,j);\
                                        m(44,j); m(45,j); m(46,j); m(47,j);\
                                        m(48,j); m(49,j); m(50,j); m(51,j);\
                                        m(52,j); m(53,j); m(54,j); m(55,j);\
                                        m(56,j); m(57,j); m(58,j); m(59,j);\
                                        m(60,j); m(61,j); m(62,j); m(63,j); } while (0)

