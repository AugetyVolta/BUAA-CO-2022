#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int cnt = 0;
int str[100];
int r;

void dfs(int n, int m) {
	int i;
	if (m == 0) {
		for (i = 0; i < cnt; i++) {
			printf("%d", str[i]);
			if (i != cnt - 1) {
				printf("+");
			} else
				printf("\n");
		}
		return;
	}
	for (i = n ; i <= m && i < r; i++) {
		str[cnt++] = i;
		dfs(i, m - i);
		cnt--;
	}
	return;
}

int main() {
	int n;
	scanf("%d", &n);
	r = n;
	dfs(1, n);
}