#include <stdio.h>
int symbol[101];

int main() {
	int n;
	int m;
	int cnt = 0;
	int i = 1;
	int all = 0;
	scanf("%d%d", &n, &m);
	while (all < n) {
		if (symbol[i] == 0) {
			cnt++;
			if (cnt == m) {
				printf("%d\n", i);
				symbol[i] = 1;
				cnt = 0;
				all++;
			}
		}
		i++;
		if (i == n + 1)
			i = 1;
	}
}