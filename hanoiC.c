#include <stdio.h>

void hanoi(int n, char inicio, char destino, char apoyo) {
    if (n == 1) {
        printf("Mover disco 1 de %c a %c\n", inicio, destino);
        return;
    }
    hanoi(n - 1, inicio, apoyo, destino);
    printf("Mover disco %d de %c a %c\n", n, inicio, destino);
    hanoi(n - 1, apoyo, destino, inicio);
}

int main() {
    int n = 3;
    hanoi(n, 'A', 'C', 'B');
    return 0;
}