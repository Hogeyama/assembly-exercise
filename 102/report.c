#include <stdio.h>
#include <stdlib.h>

void show_float(float f){
    int i;
    union {float f; int i;} a;
    a.f = f;
    printf("%d ", (a.i)>>31 & i); //符号部
    for( i = 30; i >= 23; i-- )
        printf( "%d", ( a.i >> i ) & 1 ); //指数部
    printf(" ");
    for( i = 22; i >= 0; i-- )
        printf( "%d", ( a.i >> i ) & 1 ); //仮数部
    printf("\n");
}

int main( void ) {
    show_float(1.0f);
    show_float(0.1f);
    show_float(atof("Nan"));
    show_float(atof("INF"));
    return 0;
}
