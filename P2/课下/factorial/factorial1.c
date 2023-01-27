#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define maxn 1000000
int f[maxn];

int main() {
	int i, j;
	int n;
	int k = 0, m = 0;
	int C;
	int s;
	scanf("%d", &n);
	f[0] = 1;
	for (i = 2; i <= n; i++) {
		C = 0;
		/*
		优化1：
			阶乘从第一个不为0的数乘起，用一个k来实现更新，
			并且不会在后面非连续0处被改变,f[k]==0，k++，
			保证了0的连续性。
		优化2：
			循环结束的标志，没有一股脑循环到maxn，而是先用
			m 标志出上一次运算结果的非零最高位，再根据进位
			的有无判断是否还需继续计算。
		*/
		for (j = k; j <= m || C != 0; j++) {
			s = f[j] * i + C;
			f[j] = s % 10;
			C = s / 10;
			if (f[k] == 0) {
				k++;
			}
		}
		m = j - 1;
	}
	for (i = m; i >= 0; i--) {
		printf("%d", f[i]);
	}
}


