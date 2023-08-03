soma:
enter 0, 0
mov esi, DWORD [ebp + 8]    ; esi = ponteiro de inteiros/matriz
mov ecx, DWORD [ebp + 12]   ; ecx = contador
mov edi, 0                  ; edi = offset da matriz
mov eax, 0                  ; eax = resultado da soma
do_while:
    add eax, DWORD [esi + 4*edi]    ; incrementa montante 
    add edi, DWORD [ebp + 12]       ; desce um "linha"
    inc edi                         ; avança uma "coluna"
    loop do_while                   ; --ecx > 0 ? repete
mov ecx, DWORD [ebp + 16]   ; ecx = ponteiro de saída
mov DWORD [ecx], eax        ; resultado da saída = montante
leave
ret 