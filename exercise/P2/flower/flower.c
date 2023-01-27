#include <stdio.h>

int main() {
	int m, n, i;
	int tmp, ans = 0;
	scanf("%d", &m);
	scanf("%d", &n);
	for (i = m; i < n; i++) {
		ans = 0;
		tmp = i;
		ans += (tmp % 10) * (tmp % 10) * (tmp % 10);
		tmp = tmp / 10;
		ans += (tmp % 10) * (tmp % 10) * (tmp % 10);
		tmp = tmp / 10;
		ans += (tmp % 10) * (tmp % 10) * (tmp % 10);
		if (ans == i)
			printf("%d\n", ans);
	}
	return 0;
}