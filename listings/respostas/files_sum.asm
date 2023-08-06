section .data
    file_in     db "myfile1.txt"
    file_out    db "myfile2.txt"
    n           equ 100
section .bss 
    x    resb n
    soma resd 1 
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
    mov edx, n
    int 80h
    ; fecha o arquivo
    mov eax, 6
    int 80h
    ; laço for para somar os elementos
    mov esi, 0
    mov eax, 0
    for_x:
        cmp esi, n 
        jae end_for_x
        mov al, BYTE [x + esi]
        movsx eax, al 
        add DWORD [soma], eax 
        inc esi
        jmp for_x 
    end_for_x:
    ; abre arquivo de saída
    mov eax, 5
    mov ebx, file_out 
    mov ecx, 01
    mov edx, 700        ; permissão total ao dono, nada ao resto
    int 80h
    ; escreve a soma 
    mov ebx, eax        ; ebx = file descriptor da saída
    mov eax, 4
    mov ecx, soma 
    mov edx, 4          ; soma é inteiro => 4 bytes
    int 80h
    ; fecha o arquivo
    mov eax, 6
    int 80h
    ; fim do programa
    mov eax, 1
    mov ebx, 0
    int 80h