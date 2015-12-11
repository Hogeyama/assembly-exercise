#include <stdio.h>
#include <stdlib.h>
extern double mkdouble(int s, int e, long long f); // 1bit, 11bit, 52bit

int main(int argc, char const* argv[])
{
	long long l = 1;

	// 2.50		0 10000000000 0100000000000000000000000000000000000000000000000000
	// 			= (0, 1024, 1<<50)
	printf("mkdouble(0, 1024, 1<<50) = %lf\n", mkdouble(0, 1024, l<<50));

	// 1.00		0 01111111111 0000000000000000000000000000000000000000000000000000
	// 			= (0, 1023, 0)
	printf("mkdouble(0, 1023, 0)     = %lf\n", mkdouble(0, 1023, 0));

	//-1.25		1 01111111111 0100000000000000000000000000000000000000000000000000
	//			= (1, 1023, 1<<50)
	printf("mkdouble(1, 1023, 1<<50) = %lf\n", mkdouble(1, 1023, l<<50));
	return 0;
}

