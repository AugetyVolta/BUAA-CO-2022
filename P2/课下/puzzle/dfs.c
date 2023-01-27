#include <stdio.h>
int puzzle[9][9];
int flag[9][9];
int m, n;
int cnt = 0;

void dfs(int x1, int y1, int x2, int y2) {
	flag[x1][y1] = 1;
	if (x1 == x2 && y1 == y2) {
		flag[x1][y1] = 0;
		cnt++;
		return;
	}
	if (puzzle[x1 - 1][y1] == 0 && flag[x1 - 1][y1] == 0) {
		dfs(x1 - 1, y1, x2, y2);
	}
	if (puzzle[x1 + 1][y1] == 0 && flag[x1 + 1][y1] == 0) {
		dfs(x1 + 1, y1, x2, y2);
	}
	if (puzzle[x1][y1 + 1] == 0 && flag[x1][y1 + 1] == 0) {
		dfs(x1, y1 + 1, x2, y2);
	}
	if (puzzle[x1][y1 - 1] == 0 && flag[x1][y1 - 1] == 0) {
		dfs(x1, y1 - 1, x2, y2);
	}
	flag[x1][y1] = 0;
	return;
}

int main() {
	int i, j;
	scanf("%d%d", &m, &n);
	for (i = 0; i <= 8; i++) {
		for (j = 0; j <= 8; j++) {
			puzzle[i][j] = 1;
		}
	}
	for (i = 1; i <= m; i++) {
		for (j = 1; j <= n; j++) {
			scanf("%d", &puzzle[i][j]);
		}
	}
	int x1, y1, x2, y2;
	scanf("%d%d%d%d", &x1, &y1, &x2, &y2);
	dfs(x1, y1, x2, y2);
	printf("%d\n", cnt);
}