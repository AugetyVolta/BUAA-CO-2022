#include <stdio.h>

void binary_search(int key, int a[], int n) { //�Զ��庯��binary_search()
	int low, high, mid;
	low = 0;
	high = n - 1;
	while (low <= high) { //���ҷ�Χ��Ϊ0ʱִ��ѭ�������
		mid = (low + high) / 2; //���м�λ��
		if (key < a[mid]) //keyС���м�ֵʱ
			high = mid - 1; //ȷ�����ӱ�Χ
		else if (key > a[mid]) //key �����м�ֵʱ
			low = mid + 1; //ȷ�����ӱ�Χ
		else if (key == a[mid]) { //��key�����м�ֵʱ��֤�����ҳɹ�
			printf("1");
			return;
		}
	}
	printf("0");
	return;
}

int main() {
	int n;
	int i;
	int a[1001];
	scanf("%d", & n);
	for (i = 0; i < n; i++) {
		scanf("%d", &a[i]);
	}
	int n1;
	int key;
	scanf("%d", &n1);
	for (i = 0; i < n1; i++) {
		scanf("%d", &key);
		binary_search(key, a, n);
	}
}