f4: 
enter 0, 0
mov ebx, DWORD [ebp + 8]    ; ebx recebe o ponteiro/vetor de shorts x
mov ecx, DWORD [ebp + 12]   ; ecx recebe o número de elementos n
mov ax, WORD 1              
for_loop:
    cmp ecx, 0
    jle end_f4
    cwd                     ; estende o sinal de ax em eax
    cdq                     ; estende o sinal de eax em edx
    mul WORD [ebx]          ; dx.ax = ax * elemento
    dec ecx                 ; um elemento a menos a ser multiplicado
    add ebx, 2              ; ebx aponta para o próximo elemento
    jmp for_loop
end_f4:
shl edx, 16                 ; edx = dx.000...
shl eax, 16                 ; eax = ax.000...
shr eax, 16                 ; eax = ...000.ax
add eax, edx                ; eax = dx.ax
leave
ret