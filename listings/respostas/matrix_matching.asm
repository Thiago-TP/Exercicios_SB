section .data
ROW equ 5
COL equ 5
array1  dd  1, 89, 99, 91, 92,
        dd  79, 2, 70, 60, 55,
        dd  70, 60, 3, 90, 89,
        dd  60, 55, 68, 4, 66,
        dd  51, 59, 57, 2, 5
array2  TIMES ROW dd 1, 2, 3, 4, 5
section .bss 
array3  TIMES ROW resb COL
section .text
global _start
_start:
    mov esi, 0      ; i=0
    for_i:
        cmp esi, ROW 
        jae end_for_i 
        mov edi, 0
        for_j:
            cmp edi, COL 
            jae end_for_j
            imul eax, esi, ROW  ; eax = offset da linha em elementos
            mov ebx, edi 
            shl ebx, 2          ; ebx = offset da coluna em bytes
            mov ecx, DWORD [array1 + 4*eax + ebx]
            cmp ecx, DWORD [array2 + 4*eax + ebx]   ; array1 == array2 ?
            je set_1
            mov BYTE [array3 + eax + edi], "0"
            jmp continue
        set_1:
            mov BYTE [array3 + eax + edi], "1"
        continue:
            ; printf("%c", array3[i][j])
            mov ecx, eax
            mov eax, 4
            mov ebx, 1
            add ecx, array3 
            add ecx, edi
            mov edx, 1
            int 80h
            inc edi             ; j++
            jmp for_j
        end_for_j:
        inc esi
        jmp for_i
    end_for_i:
    mov eax, 1
    mov ebx, 0
    int 80h