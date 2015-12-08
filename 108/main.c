#include <stdio.h>
extern int maxof3(int x, int y, int z);

int main(int argc, char const* argv[])
{
	printf("maxof3(%d,%d,%d) = %d\n", 1, 2, 3, maxof3(1,2,3));
	printf("maxof3(%d,%d,%d) = %d\n", 1, 3, 2, maxof3(1,3,2));
	printf("maxof3(%d,%d,%d) = %d\n", 2, 1, 3, maxof3(2,1,3));
	printf("maxof3(%d,%d,%d) = %d\n", 2, 3, 1, maxof3(2,3,1));
	printf("maxof3(%d,%d,%d) = %d\n", 3, 1, 2, maxof3(3,1,2));
	printf("maxof3(%d,%d,%d) = %d\n", 3, 2, 1, maxof3(3,2,1));
	return 0;
}
