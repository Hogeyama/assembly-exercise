#include <stdio.h>
extern int mystrcmp2(char *s1, char *s2);

int main(int argc, char const* argv[])
{
	printf("mystrcmp2(\"%s\", \"%s\") = %d\n", "aa", "aa", mystrcmp2("aa", "aa"));
	printf("mystrcmp2(\"%s\", \"%s\") = %d\n", "a" , "aa", mystrcmp2("a" , "aa"));
	printf("mystrcmp2(\"%s\", \"%s\") = %d\n", "aa", "a" , mystrcmp2("aa", "a" ));
	printf("mystrcmp2(\"%s\", \"%s\") = %d\n", "ab", "aa", mystrcmp2("ab", "aa"));
	printf("mystrcmp2(\"%s\", \"%s\") = %d\n", "aa", "ab", mystrcmp2("aa", "ab"));
	printf("mystrcmp2(\"%s\", \"%s\") = %d\n", ""  , "x" , mystrcmp2(""  , "x" ));
	return 0;
}
