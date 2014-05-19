void sum32 (unsigned *a, unsigned * b, unsigned * c)
{
    unsigned i;
    for (i = 0; i < 256; i++) a[i] = b[i] + c[i];
}

void sum64 (unsigned long *a, unsigned long *b, unsigned long *c)
{
    unsigned long i;
    for (i = 0; i < 256; i++) a[i] = b[i] + c[i];
}
