char start;
int count;

int main() {
    char sum=0;
    count = 100;
    scanf("%d", &start);
    while (count) {
        if (sum%2) sum += start;
        else sum -= start;
        start++;
        count--;
    }
    return sum;
}
