#include <stdio.h>
extern char *mystrcat2(char *s1, char *s2);

int main(int argc, char const* argv[])
{
	char s1[100] = "foo";
	printf("%s\n", mystrcat2(s1, "bar"));
	printf("%s\n", s1);
	return 0;
}
