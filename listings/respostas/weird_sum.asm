%include "io.mac"
section .bss 
count resd 1
start resb 1
section .text 
global _start 
_start: 
sub esi, esi                ; sum=0
mov DWORD [count], 100      ; count=100
; lê um caracter (dígito) do usuário
mov eax, 3
mov ebx, 0
mov ecx, start 
mov edx, 1
int 80h
; converte para número
sub BYTE [start], "0"
while: 
    mov eax, esi            ; eax = sum
    shr eax, 1              ; eax = sum // 2
    shl eax, 1              ; eax = (sum // 2) * 2
    sub eax, esi            ; eax = -(sum % 2)
    cmp eax, 0              ; sum%2 == 0 ?
    je  sub_start
    add esi, DWORD [start]  ; sum += start
    jmp continue
sub_start: 
    sub esi, DWORD [start]  ; sum -= start
continue:
    inc BYTE [start]        ; start++
    dec DWORD [count]       ; count--
    cmp DWORD [count], 0
    ja while
; return sum
mov eax, 1
mov ebx, esi
int 80h 