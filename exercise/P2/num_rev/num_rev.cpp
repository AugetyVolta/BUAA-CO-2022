#include <stdio.h>

int mian() {
	int n;
	int tmp;
	scanf("%d", &n);
	if (n < 100)
		printf("small\n");
	else if (n > 999)
		printf("big\n");
	else {
		tmp = n % 10;
		n = n / 10;
		printf("%d", tmp);
		tmp = n % 10;
		n = n / 10;
		printf("%d", tmp);
		tmp = n % 10;
		n = n / 10;
		printf("%d", tmp);
	}
	printf("\n");
	return 0;
}