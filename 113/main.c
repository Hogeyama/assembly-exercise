#include <stdio.h>
extern int fib(int);

int main(int argc, char const* argv[])
{
	printf("fib(0) = %d\n", fib(0));
	printf("fib(1) = %d\n", fib(1));
	printf("fib(2) = %d\n", fib(2));
	printf("fib(3) = %d\n", fib(3));
	printf("fib(4) = %d\n", fib(4));
	printf("fib(5) = %d\n", fib(5));
	printf("fib(6) = %d\n", fib(6));
	printf("fib(7) = %d\n", fib(7));
	printf("fib(8) = %d\n", fib(8));
	printf("fib(9) = %d\n", fib(9));
	printf("fib(10) = %d\n", fib(10));
	return 0;
}
