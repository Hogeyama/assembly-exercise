#include <stdio.h>
#include <math.h>
#include <assert.h>
#define N 8
#define toggle(n) 1-(n)

int main(int argc, char const* argv[])
{
	int i,j;
	int tmp;
	int byte_length;
	int num;
	int binum[10][N];
	int carry;

	num = atoi(argv[1]);

	byte_length = 1;
	while(1){
		if(-1<<(byte_length*N-1) <= num && num < 1<<(byte_length*N-1))
			break;
		byte_length++;
	}

	if(num>=0){
		for(i=0; i<byte_length; i++){
			for(j=0; j<N; j++){
				binum[i][j] = num % 2;
				num /= 2;
			}
		}
	} else {
		num *= -1;
		carry = 1;
		for(i=0; i<byte_length; i++){
			for(j=0; j<N; j++){
				binum[i][j] = (carry + toggle(num % 2)) % 2;
				carry = carry && toggle(num % 2);
				num /= 2;
			}
		}
	}

	//リトルエンディアン方式で表示
	for(i=0; i<byte_length; i++){
		for(j=N; j>0; j--) printf("%d", binum[i][j-1]);
		printf(" ");
	}
	printf("\n");

	return 0;
}
