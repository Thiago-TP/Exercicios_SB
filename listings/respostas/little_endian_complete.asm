SIZE EQU 6
section .data 
little dd 42434445h, 45454545h, 4A4B4C4Dh,
       dd 414D4E4Fh, 46454948h, 4C474D46h

section .bss
big resd SIZE
temp resd 1

section .start
global _start
_start:
    mov ecx, SIZE 
    mov eax, little
    mov esi, big 
    laco1: mov ebx, esi
    add ebx, 3           ; ebx aponta para o último byte da dword big endian
    laco2: mov dl, [eax]
    mov [ebx], dl
    dec ebx
    inc eax
    cmp ebx, esi         ; 4 bytes foram preenchidos? se não, repete 
    jae laco2
    add esi, 4
    dec ecx              ; mais um número convertido
    cmp ecx, 0
    ja laco1             ; tem mais número? se sim, repete 
    done: mov eax, 1
    mov ebx, 0
    int 80h
