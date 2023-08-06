section .data 
SIZE    equ 11
vetor   dd 0x10002231, 0x80154491, 0x91929394,
        dd 0x11223344, 0x12131415, 0x79270601,
        dd 0x55127380, 0x16112212, 0x39089607,
        dd 0x51557721, 0x16846676
section .text 
global _start 
_start: 
sub eax, eax    ; res=0
mov ecx, SIZE   ; i=SIZE 
while: 
    ; res += vetor[i++] 
    add eax, DWORD [vetor + 4*ecx - 4]
    loop while
mov eax, 1
mov ebx, 0
int 80h 