void f1(int matrix[100], int matrix2[100], int m, int n) { // 0 < m, n < 100
    for (c=0; c<n; c++) {
        for (d=0; d<m; d++) {
            printf("%d\t", (matrix + c*sizeof(int) + d));
        }
        printf("\n");
    }
}
