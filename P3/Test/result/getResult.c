#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main() {
	freopen("tmp.txt", "r", stdin);
	freopen("result.txt", "w", stdout);
	int i;
	int num = 0;
	int cnt = 0, cnt1 = 0;
	char line[1000];
	while (gets(line) != NULL) {
		num = 0;
		for (i = 0; i < 40; i++) {
			if (line[i] >= '0' && line[i] <= '9') {
				num = num * 2 + line[i] - '0';
				cnt++;
				if ((cnt % 4) == 0 && cnt != 0) {
					printf("%x", num);
					num = 0;
				}
			}
		}
		printf(" %c ", line[i]);
		i += 2;
		cnt = 0;
		num = 0;
		for (; line[i]; i++) {
			if (line[i] >= '0' && line[i] <= '9') {
				printf("%c", line[i]);
				cnt++;
				if (cnt == 5)
					break;
			}
		}
		printf(" ");
		cnt = 0;
		cnt1 = 0;
		i++;
		for (; line[i]; i++) {
			if (line[i] >= '0' && line[i] <= '9') {
				num = num * 2 + line[i] - '0';
				cnt++;
				if ((cnt % 4) == 0 && cnt != 0) {
					printf("%x", num);
					num = 0;
					cnt1++;
					if (cnt1 == 8) {
						break;
					}
				}
			}
		}
		i = i + 2;
		printf(" %c ", line[i]);
		i += 2;
		cnt = 0;
		num = 0;
		for (; line[i]; i++) {
			if (line[i] >= '0' && line[i] <= '9') {
				printf("%c", line[i]);
				cnt++;
				if (cnt == 5)
					break;
			}
		}
		printf(" ");
		cnt = 0;
		cnt1 = 0;
		i++;
		for (; line[i]; i++) {
			if (line[i] >= '0' && line[i] <= '9') {
				num = num * 2 + line[i] - '0';
				cnt++;
				if ((cnt % 4) == 0 && cnt != 0) {
					printf("%x", num);
					num = 0;
					cnt1++;
					if (cnt1 == 8) {
						break;
					}
				}
			}
		}
		printf("\n");
	}
}
