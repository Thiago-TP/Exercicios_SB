%include "io.mac"
section .data
MAX equ 100
section .bss
a TIMES MAX resw MAX  
section .text
global _start 
_start:
mov esi, 0          ; i=0
for_i:
    cmp esi, MAX
    jae end_for_i
    mov edi, 0      ; j=0
    for_j:
    cmp edi, MAX 
    jae end_for_j
    mov ecx, esi    ; ecx = i
    cmp esi, edi    
    je set_as_3i    ; i==j?
    shl ecx, 3      ; ecx = 8*i
    sub ecx, esi    ; ecx = 7*i
    jmp continue
set_as_3i:
    shl ecx, 2      ; ecx = 4*i
    sub ecx, esi    ; ecx = 3*i
continue:
    imul eax, esi, MAX
    imul ebx, edi, 2
    mov WORD [a + 2*eax + ebx], cx  ; atualiza matriz 
    inc edi 
    jmp for_j 
    end_for_j:
    inc esi
    jmp for_i 
end_for_i:          ; return 0
mov eax, 1
mov ebx, 0
int 80h