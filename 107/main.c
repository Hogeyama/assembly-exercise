#include <stdio.h>
extern int mystrcmp(char *s1, char *s2);

int main(int argc, char const* argv[])
{
	printf("mystrcmp(\"%s\", \"%s\") = %d\n", "aa", "aa", mystrcmp("aa", "aa"));
	printf("mystrcmp(\"%s\", \"%s\") = %d\n", "a" , "aa", mystrcmp("a" , "aa"));
	printf("mystrcmp(\"%s\", \"%s\") = %d\n", "aa", "a" , mystrcmp("aa", "a" ));
	printf("mystrcmp(\"%s\", \"%s\") = %d\n", "ab", "aa", mystrcmp("ab", "aa"));
	printf("mystrcmp(\"%s\", \"%s\") = %d\n", "aa", "ab", mystrcmp("aa", "ab"));
	printf("mystrcmp(\"%s\", \"%s\") = %d\n", ""  , "x" , mystrcmp(""  , "x" ));
	return 0;
}
