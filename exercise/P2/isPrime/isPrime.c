#include <stdio.h>
#include <math.h>

int main() {
	int n;
	scanf("%d", &n);
	int i;
	if (n <= 3) {
		printf("1");
		return 0;
	} else {
		for (i = 2; i <= sqrt(n); i++) {
			if ((n % i ) == 0) {
				printf("0");
				return 0;
			}
		}
	}
	printf("1");
	return 0;
}