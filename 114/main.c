#include <stdio.h>
extern long long ack(int, int);

int main(int argc, char const* argv[])
{
    ack(1,0);
    printf("ack(1,0)  = %ld\n", ack(1,0));
    printf("ack(3,0)  = %ld\n", ack(3,0));
    printf("ack(3,1)  = %ld\n", ack(3,1));
    printf("ack(3,2)  = %ld\n", ack(3,2));
    printf("ack(3,3)  = %ld\n", ack(3,3));
    printf("ack(4,0)  = %ld\n", ack(4,0));
    return 0;
}
