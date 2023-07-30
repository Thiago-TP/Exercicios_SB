char Start;
int Count;

int main() {
    char sum=0;
    Count = 100;
    scanf("%d", &Start);

    while(Count) {
        if (sum%2)
            sum += Start;
        else
            sum -= Start;
        Start++;
        Count--;
    }
    return sum;
}
