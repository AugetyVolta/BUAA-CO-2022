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
		�Ż�1��
			�׳˴ӵ�һ����Ϊ0����������һ��k��ʵ�ָ��£�
			���Ҳ����ں��������0�����ı�,f[k]==0��k++��
			��֤��0�������ԡ�
		�Ż�2��
			ѭ�������ı�־��û��һ����ѭ����maxn����������
			m ��־����һ���������ķ������λ���ٸ��ݽ�λ
			�������ж��Ƿ���������㡣
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


