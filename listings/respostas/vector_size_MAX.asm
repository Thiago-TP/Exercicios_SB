section .data 
MAX equ 100
section .bss 
a resd MAX
section .text 
global _start 
_start: 
sub esi, esi    ; i=0 
for: 
    cmp esi, MAX 
    jae end_for 
    mov eax, esi 
    shr eax, 1                  ; eax = i >> 1
    mov DWORD [a + 4*esi], eax  ; a[i] = i >> i
    inc esi 
    jmp for 
end_for:
mov eax, 1
mov ebx, 0
int 80h 