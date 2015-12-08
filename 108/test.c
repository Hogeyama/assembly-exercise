#include <stdio.h>
extern int maxof2(int x, int y);

int maxof3(int x, int y, int z){
	int w = maxof2(x,y);
	return maxof2(w,z);
}

int main(int argc, char const* argv[])
{
	printf("%d\n",maxof3(1,5,3));
	return 0;
}
