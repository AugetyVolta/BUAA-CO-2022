#include <stdio.h>

void binary_search(int key, int a[], int n) { //自定义函数binary_search()
	int low, high, mid;
	low = 0;
	high = n - 1;
	while (low <= high) { //査找范围不为0时执行循环体语句
		mid = (low + high) / 2; //求中间位置
		if (key < a[mid]) //key小于中间值时
			high = mid - 1; //确定左子表范围
		else if (key > a[mid]) //key 大于中间值时
			low = mid + 1; //确定右子表范围
		else if (key == a[mid]) { //当key等于中间值时，证明查找成功
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