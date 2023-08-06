%include "io.mac"
section .data 
    BUF_SIZE            equ 256
    type_entry_name     db "Digite o nome do arquivo de entrada: "
    type_output_name    db "Digite o nome do arquivo de saída: "
section .bss    
    fd1         resd 1
    fd2         resd 1
    file_in     resb 30
    file_out    resb 30
    buf         resb BUF_SIZE
section .text 
global _start
_start:
    ; printfs/scanfs
    PutStr type_entry_name
    GetStr file_in
    PutStr type_output_name
    GetStr file_out
    ; fd1 = fopen(file_in, "r")
    mov eax, 5              
    mov ebx, file_in 
    mov ecx, 00             ; modo leitura
    mov edx, 777            ; permisão completa a todos
    int 80h
    mov DWORD [fd1], eax    ; fd1 = file descriptor da entrada
    ; fd2 = fopen(file_out, "w")
    mov eax, 5              ; syscall open file
    mov ebx, file_out
    mov ecx, 01             ; modo escrita
    mov edx, 777            ; permisão completa a todos
    int 80h
    mov DWORD [fd2], eax    ; fd2 = file descriptor da saída
    ; fread(buf, sizeof(char), BUF_SIZE, fd1)
    mov eax, 3              
    mov ebx, DWORD [fd1]
    mov ecx, buf
    mov edx, BUF_SIZE 
    int 80h
    ; fwrite(buf, sizeof(char), BUF_SIZE, fd2)
    mov eax, 4
    mov ebx, DWORD [fd2]
    mov ecx, buf
    mov edx, BUF_SIZE 
    int 80h
    ; fclose(fd1)
    mov eax, 6
    mov ebx, DWORD [fd1]
    int 80h
    ; fclose(fd2)
    mov eax, 6
    mov ebx, DWORD [fd2]
    int 80h
    ; return 0
    mov eax, 1
    mov ebx, 0
    int 80h