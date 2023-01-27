#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int symbol[7], array[7];
int n;

void FullArray(int index) {
	int i;
	if (index >= n) {
		for (i = 0; i < n ; i++) {
			printf("%d ", array[i]);
		}
		printf("\n");
		return;
	}
	for (i = n; i > 0 ; i--) {
		if (symbol[i] == 0) {
			array[index] = i;
			symbol[i] = 1;
			FullArray(index + 1);
			symbol[i] = 0;
		}
	}


}

int main() {
	int i;
	scanf("%d", &n);
	FullArray(0);
	return 0;
}