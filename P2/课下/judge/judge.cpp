#include <stdio.h>

int main() {
	int i;
	int n = 8;
	char str[9] = "abcddcba";
	for (i = 0; i < n / 2;) {
		if (str[i] == str[n - 1 - i]) {
			i++;
		} else {
			break;
		}
	}
	if (i == n / 2) {
		printf("1");
	} else
		printf("0");

}