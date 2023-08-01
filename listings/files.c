#include <stdio.h>
#define BUF_SIZE 256

int main() {
    FILE *fd1, *fd2;
    char file_in[30];
    char file_out[30];
    char buf[BUF_SIZE];

    printf("Digite o nome do arquivo de entrada: ");
    scanf("%s", file_in);

    printf("Digite o nome do arquivo de saída: ");
    scanf("%s", file_out);

    fd1 = fopen(file_in, "r");
    fd2 = fopen(file_out, "w");

    fread(buf, sizeof(char), BUF_SIZE, fd1);
    fwrite(buf, sizeof(char), BUF_SIZE, fd2);

    fclose(fd1);
    fclose(fd2);

    return 0;
}
