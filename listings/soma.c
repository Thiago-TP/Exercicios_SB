#include <stdio.h>
#define N 10

void soma(int M[][N], int *valor) {
    *valor=0;
    int i;
    for (i=0; i<N; i++)
        *valor += M[i][i];
}

int main(void){
    int A[N][N];
    int i, j, res;
    for (i=0; i<N; i++)
        for(j=0; j<N; j++){
            printf("Digite elemento A[%d][%d]: ", i+1, j+1);
            scanf("%d", &A[i][j]);
        }
    soma(A, &res);
    printf("Soma dos elementos da diagonal principal: %d \n", res);
    return 0;
}
