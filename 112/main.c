#include <stdio.h>
extern int fact(int);

int main(int argc, char const* argv[])
{
	printf("fact(0) = %d\n", fact(0));
	printf("fact(1) = %d\n", fact(1));
	printf("fact(2) = %d\n", fact(2));
	printf("fact(3) = %d\n", fact(3));
	printf("fact(4) = %d\n", fact(4));
	printf("fact(5) = %d\n", fact(5));
	printf("fact(6) = %d\n", fact(6));
	printf("fact(10) = %d\n", fact(10));
	return 0;
}
