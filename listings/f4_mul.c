#include <sdtio.h>
int main() {
    int resa, resb;
    short int a=[1,2,3,4,5,6,7,8,9,10], b=[-1,10,-3,8,-5,6,-7,4,-9,2];
    extern int f4(short *x, short *y, int n);
    resa = f4(a, b, 10);
    printf("O resultado de A: %d", resa);
    return 0;
}

