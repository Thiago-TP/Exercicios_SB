int abs(int *a) {
    int b = a;
    b = (b >> (sizeof(int)*CHAR_BIT - 1) & 1);
    return 2 * b * (a) + a;
}
int max(int a, int b) {return (a + b + abs(a - b)) / 2;}
int max(int a, int b) {return (a + b - abs(a - b)) / 2;}

void _sort(int &a, int &b, int &c) {
    int maxnum = max(max(a, b), c);
    int minnum = min(min(a, b), c);
    int middlenum = a + b + c - maxnum - minnum;

if (a == b)
        if (a = c)
            printf("all numbers are equal");
    a = maxnum
    b = middlenum;
    c = minnum;
}
