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
    ______
    laco2: mov dl, [eax]
    mov [ebx], dl
    dec ebx
    inc eax
    ______
    jae laco2
    add esi, 4
    ______
    cmp ecx, 0
    ______
    done: mov eax, 1
    mov ebx, 0
    int 80h
