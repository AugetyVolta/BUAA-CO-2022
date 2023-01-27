#include <stdio.h>

int main() {
	for (k = 0; k < n; k++) {
		for (i = 0; i < n; i++) {
			for (j = 0; j < n; j++) {
				ans += a[i][j] * b[j][k];
			}
			c[i][k] = ans;
			ans = 0;
		}
	}