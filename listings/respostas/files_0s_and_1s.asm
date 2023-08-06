section .data
    file_in  db "myfile1.txt"
    file_out db "myfile2.txt"
    BUF_SIZE equ 100
section .bss 
    x   resw BUF_SIZE 
    y   resw BUF_SIZE
section .text 
global _start 
_start:
    ; abre arquivo de entrada
    mov eax, 5
    mov ebx, file_in 
    mov ecx, 00
    mov edx, 777            ; permissão total a todos
    int 80h
    ; lê arquivo de entrada, preenchendo x
    mov ebx, eax            ; ebx = file descriptor da entrada
    mov eax, 3 
    mov ecx, x
    mov edx, BUF_SIZE
    add edx, edx
    int 80h
    ; fecha o arquivo
    mov eax, 6
    int 80h
    ; laço for para preencher y
    mov esi, 0
    for_y:
        cmp esi, BUF_SIZE 
        jae end_for_y
        cmp WORD [x + 2*esi], 0
        ja  write_1
        mov WORD [y + 2*esi], 0
        jmp continue
    write_1:
        mov WORD [y + 2*esi], 1
    continue:
        inc esi
        jmp for_y 
    end_for_y:
    ; abre arquivo de saída
    mov eax, 5
    mov ebx, file_out 
    mov ecx, 01
    mov edx, 744        ; permissão total ao dono, leitura ao resto
    int 80h
    ; escreve o array y 
    mov ebx, eax        ; ebx = file descriptor da saída
    mov eax, 4
    mov ecx, y 
    mov edx, BUF_SIZE
    add edx, edx
    int 80h
    ; fecha o arquivo
    mov eax, 6
    int 80h
    ; fim do programa
    mov eax, 1
    mov ebx, 0
    int 80h