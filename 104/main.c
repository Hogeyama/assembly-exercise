#include <stdio.h>
extern int maxof2(int x, int y);

int main(int argc, char const* argv[])
{
	printf("maxof2(2,3) = %d\n", maxof2(2,3));
	printf("maxof2(4,3) = %d\n", maxof2(4,3));
	printf("maxof2(5,5) = %d\n", maxof2(5,5));
	return 0;
}
