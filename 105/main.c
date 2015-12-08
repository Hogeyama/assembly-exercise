#include <stdio.h>
extern int mystrlen(char *str);

int main(int argc, char const* argv[])
{
	printf("mystrlen(\"%s\") = %d\n", "hoge", mystrlen("hoge"));
	printf("mystrlen(\"%s\") = %d\n", "",     mystrlen(""));
	return 0;
}
