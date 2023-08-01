section .data
count db 2
wList dw 0003h, 2000h
array db 0Ah, 0Bh, 0Ch, 0Dh

section .text
global _start
_start:
    mov esi, wList
    mov ax, [esi]
    mov bx, ax
    mov al, [array + bx]
    add al, [count]
    mov ax, 40
    sub ax, [wList + 2]
    mov [count], 50
    mov eax, 1
    mov ebx, 0
    int 80h
