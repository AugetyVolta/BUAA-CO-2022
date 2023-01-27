#include <stdio.h>

void move(int id, char from, char to) {
	printf("move disk %d from %c to %c\n", id, from, to);
}

void hanoi(int base, char from, char via, char to) {
	if (base == 0) {
		move(base, from, via);
		move(base, via, to);
		return;
	}
	hanoi(base - 1, from, via, to);
	move(base, from, via);
	hanoi(base - 1, to, via, from);
	move(base, via, to);
	hanoi(base - 1, from, via, to);
}

int main() {
	int n;
	scanf("%d", &n);
	hanoi(n, 'A', 'B', 'C');
	return 0;
}