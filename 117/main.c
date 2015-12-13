#include <stdio.h>
extern double inner_s(double*, double*, int);

int main(int argc, char const* argv[])
{
    double a[] = {1,2,3,4};
    double b[] = {1,2,3,4};
    printf("(1.0, 2.0, 3.0, 4.0)・(1.0, 2.0, 3.0, 4.0) = %lf\n", inner_s(a,b,4));
    return 0;
}
