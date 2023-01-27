#include <stdio.h>
int str[101];
int cnt[30];
int flag[30];

int main() {
	int n;
	int i;
	int count = 0;
	char c;
	scanf("%d", &n);
	for (i = 0; i < n; i++) {
		scanf(" %c", &c);
		cnt[c - 'a']++;
		str[count++] = c - 'a';
	}
	for (i = 0; i < count; i++) {
		if (flag[str[i]] == 0) {
			printf("%c ", 'a' + str[i]);
			printf("%d\n", cnt[str[i]]);
			flag[str[i]] = 1;
		}
	}
}