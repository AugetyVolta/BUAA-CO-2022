#include <stdio.h>

int main() {
	int i;
	int j;
	int k;
	int l;
	int m1, n1;
	int m2, n2;
	int a[11][11];
	int b[11][11];
	int c[11][11];
	scanf("%d%d%d%d", &m1, &n1, &m2, &n2);
	for (i = 0; i < m1; i++) {
		for (j = 0; j < n1; j++) {
			scanf("%d", &a[i][j]);
		}
	}
	for (i = 0; i < m2; i++) {
		for (j = 0; j < n2; j++) {
			scanf("%d", &b[i][j]);
		}
	}
	int ans = 0;
	for (i = 0; i < m1; i++) {
		for (j = 0; j < n1; j++) {
			for (k = 0; k < m2; k++) {
				for (l = 0; l < n2; l++) {
					ans += a[i + k][j + l] * b[k][l];
				}
			}
			c[i][j] = ans;
			ans = 0;
		}
	}
	for (i = 0; i < m1 - m2 + 1; i++) {
		for (j = 0; j < n1 - n2 + 1; j++) {
			printf("%d ", c[i][j]);
		}
		if (j == n1 - n2 + 1) {
			printf("\n");
		}
	}
}