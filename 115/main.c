#include <stdio.h>
extern void add128(unsigned long long int*, unsigned long long int*, unsigned long long int*);

int main(int argc, char const* argv[])
{
    unsigned long long int a[2] = {0x1ULL, 0xf000000000000000ULL};
    unsigned long long int b[2] = {0x2ULL, 0x1000000000000000ULL};
    unsigned long long int c[2];
    add128(a,b,c);
    printf("%016llx %016llx + %016llx %016llx = %016llx %016llx\n",a[0], a[1], b[0], b[1], c[0], c[1]);
    return 0;
}
