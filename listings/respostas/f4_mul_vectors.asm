f4: 
enter 4, 0                  ; variável local: DWORD para o resultado 
mov esi, DWORD [ebp + 8]    ; esi recebe o ponteiro/vetor de shorts x
mov edi, DWORD [ebp + 12]   ; edi recebe o ponteiro/vetor de shorts y
mov ecx, DWORD [ebp + 16]   ; ecx recebe o número de elementos n
for_loop:
    cmp ecx, 0
    jle end_f4
    mov ax, WORD [esi] 
    cwd                         ; estende o sinal de ax em eax
    cdq                         ; estende o sinal de eax em edx
    mul WORD [edi]              ; dx.ax = short_x * short_y
    shl edx, 16                 ; edx = dx.000...
    shl eax, 16                 ; eax = ax.000...
    shr eax, 16                 ; eax = ...000.ax
    add eax, edx                ; eax = dx.ax
    add DWORD [ebp - 4], eax    ; atualiza montante
    dec ecx                     ; um par a menos a ser multiplicado
    add esi, 2                  ; esi aponta para o próximo elemento
    add edi, 2                  ; edi aponta para o próximo elemento
    jmp for_loop
end_f4:
mov eax, DWORD [ebp - 4]        ; eax recebe o resultado
leave
ret