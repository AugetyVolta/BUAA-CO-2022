#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main() {
	freopen("text_codehanler.txt", "r", stdout);
	freopen("text_codehanler.txt", "w", stdin);
	int code;
	printf("v2.0 raw\n");
	while (scanf("%x", &code) != EOF) {
		printf("%x\n", code);
	}
}