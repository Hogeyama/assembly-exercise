#include <stdio.h>
extern void mul128(unsigned long long int*, unsigned long long int*, unsigned long long int*);

int main(int argc, char const* argv[])
{
    unsigned long long int a[2] = {0xffffffffffffffffULL, 0xffffffffffffffffULL};
    unsigned long long int b[2] = {0xffffffffffffffffULL, 0xffffffffffffffffULL};
    unsigned long long int c[4];
    mul128(a,b,c);
    printf("                                  %016llx %016llx\n",a[1], a[0]);
    printf("                               *) %016llx %016llx\n",b[1], b[0]);
    printf("-------------------------------------------------------------------\n");
    printf("%016llx %016llx %016llx %016llx\n "   ,c[3], c[2], c[1], c[0]);
    return 0;
}
