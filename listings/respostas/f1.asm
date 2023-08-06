%include "io.mac"
f1:
enter 0, 0
mov esi, DWORD [ebp + 8]        ; esi recebe a matriz 1/ponteiro de int 1
mov ebx, 0                      ; ebx = offset da linha em elementos (0,m,...)
mov ecx, 0                      ; ecx = contador c
for_c:
    cmp ecx, DWORD [ebp + 20]
    jae end_f1                  ; c >= n ? fim da função
    mov edx, 0                  ; edx = contador d
    for_d:
        cmp edx, DWORD [ebp + 16]
        jae end_for_d           ; d >= m ? fim do laço
        mov eax, ebx            ; eax = c*sizeof(int)
        add eax, edx            ; eax = c*sizeof(int) + d
        ; printf("%d\t", (matrix + c*sizeof(int ) + d))
        PutLInt DWORD [esi + 4*eax]
        PutCh 9 ; ascii 9 = \t
        inc edx                 ; d++
        jmp for_d
    end_for_d:
    nwln
    add ebx, edx                ; ebx = c*sizeof(int)                      
    inc ecx                     ; c++
    jmp for_c
end_f1:
leave
ret