#define MAX 100
int main(void){
    short int a[MAX][MAX];
    int i, j;
    for(i=0; i<MAX; i++)
    for(j=0; j<MAX; j++){
        if (i==j) a[i][j] = 3*i;
        else a[i][j] = 7*i;
    }
    return 0;
}
