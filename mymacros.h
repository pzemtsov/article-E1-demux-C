// duplicators for macros with one parameter;
// DUP_4(p) will be expanded as equivalent of p(0);p(1);p(2);p(3);
// DUP_4_(p, 10) will be expanded as equivalent of p(10);p(11);p(12);p(13);

#define DUP_2_(macro, index)  do { macro  (index); macro  (index+1); } while (0)
#define DUP_4_(macro, index)  do { DUP_2_ (macro, index); DUP_2_ (macro, index+2); } while (0)
#define DUP_8_(macro, index)  do { DUP_4_ (macro, index); DUP_4_ (macro, index+4); } while (0)
#define DUP_16_(macro, index) do { DUP_8_ (macro, index); DUP_8_ (macro, index+8); } while (0)
#define DUP_32_(macro, index) do { DUP_16_(macro, index); DUP_16_(macro, index+16);} while (0)
#define DUP_64_(macro, index) do { DUP_32_(macro, index); DUP_32_(macro, index+32);} while (0)

#define DUP_2(macro)  DUP_2_ (macro, 0)
#define DUP_4(macro)  DUP_4_ (macro, 0)
#define DUP_8(macro)  DUP_8_ (macro, 0)
#define DUP_16(macro) DUP_16_(macro, 0)
#define DUP_32(macro) DUP_32_(macro, 0)
#define DUP_64(macro) DUP_64_(macro, 0)

// duplicators for macros with two parameters;
// DUP2_4(p, j) will be expanded as equivalent of p(0,j);p(1,j);p(2,j);p(3,j);
// DUP2_4_(p, 10, j) will be expanded as equivalent of p(10,j);p(11,j);p(12,j);p(13,j);

#define DUP2_2_(macro, index, param)  do { macro   (index, param); macro (index+1, param); } while (0)
#define DUP2_4_(macro, index, param)  do { DUP2_2_ (macro, index, param); DUP2_2_ (macro, index+2, param); } while (0)
#define DUP2_8_(macro, index, param)  do { DUP2_4_ (macro, index, param); DUP2_4_ (macro, index+4, param); } while (0)
#define DUP2_16_(macro, index, param) do { DUP2_8_ (macro, index, param); DUP2_8_ (macro, index+8, param); } while (0)
#define DUP2_32_(macro, index, param) do { DUP2_16_(macro, index, param); DUP2_16_(macro, index+16, param);} while (0)
#define DUP2_64_(macro, index, param) do { DUP2_32_(macro, index, param); DUP2_32_(macro, index+32, param);} while (0)

#define DUP2_2(macro, param)  DUP2_2_ (macro, 0, param)
#define DUP2_4(macro, param)  DUP2_4_ (macro, 0, param)
#define DUP2_8(macro, param)  DUP2_8_ (macro, 0, param)
#define DUP2_16(macro, param) DUP2_16_(macro, 0, param)
#define DUP2_32(macro, param) DUP2_32_(macro, 0, param)
#define DUP2_64(macro, param) DUP2_64_(macro, 0, param)
