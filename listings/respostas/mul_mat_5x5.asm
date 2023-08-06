%include "io.mac"
section .data
    ROWS1 equ 5
    COLS1 equ 5
    ROWS2 equ COLS1 
    COLS2 equ 5
section .bss 
    mat1 TIMES ROWS1 resd COLS1
    mat2 TIMES ROWS2 resd COLS2
    mat3 TIMES ROWS1 resd COLS2  
section .text 
global _start 
_start: 
; preenche a matriz do lado esquerdo do produto
push ROWS1 
push COLS1
push mat1 
call GetMat
add esp, 12 ; esp restaurado
; preenche a matriz do lado direito do produto
push COLS2 
push ROWS2 
push mat2 
call GetMat
add esp, 12 ; esp restaurado
; realiza a operação mat1 * mat2 = mat3
; mat1 -> m x l = ROWS1 x COLS1
; mat2 -> l x n = ROWS2 x COLS2
; mat3 -> m x n = ROWS1 x COLS2
mov esi, 0
for_i:
    cmp esi, ROWS1 
    jae end_prod                            ; 0 <= i < m
    mov edi, 0
    for_j:
        cmp edi, COLS2 
        jae end_for_j                      ; 0 <= j < n
        imul eax, esi, COLS2
        add eax, edi                       ; offset3 = n*i+j = COLS2*esi+edi
        mov DWORD [mat3 + 4*eax], 0
        mov ecx, 0
        for_k:
            cmp ecx, ROWS2
            jae end_for_k                   ; 0 <= k < l
            imul eax, esi, COLS1
            add eax, ecx                    ; offset1 = l*i+k = COLS1*esi+ecx          
            mov ebx, DWORD [mat1 + 4*eax]
            imul eax, ecx, COLS2
            add eax, edi                    ; offset2 = n*k+j = COLS2*ecx+edi
            imul ebx, DWORD [mat2 + 4*eax]  ; m1[i][k] * m2[k][j]            
            imul eax, esi, COLS2
            add eax, edi                    ; offset3 = n*i+j = COLS2*esi+edi
            add DWORD [mat3 + 4*eax], ebx   ; m3[i][j] += m1[i][k] * m2[k][j]             
            inc ecx
            jmp for_k 
        end_for_k:
        inc edi     ; j++
        jmp for_j   ; próxima coluna da m2
    end_for_j:        
    inc esi     ; i++
    jmp for_i   ; próxima linha da m1
end_prod:   
; fim do programa
mov eax, 1
mov ebx, 0
int 80h

GetMat:
enter 0, 0
mov esi, DWORD [ebp + 8]        ; esi recebe a matriz 1/ponteiro de int
mov ebx, 0                      ; ebx = offset da linha em elementos
mov ecx, 0                      ; ecx = contador i
row_for:
    cmp ecx, DWORD [ebp + 16]
    jae end_GetMat              ; i >= ROWS ? fim da função
    mov edx, 0                  ; edx = contador j
    column_for:
        cmp edx, DWORD [ebp + 12]
        jae end_column_for      ; j >= COLS ? fim do laço
        mov eax, ebx            ; eax = i*sizeof(int)
        add eax, edx            ; eax = i*sizeof(int) + j       
        GetLInt edi
        mov DWORD [esi + 4*eax], edi
        inc edx                 ; j++
        jmp column_for
    end_column_for:
    add ebx, edx                ; ebx = i*sizeof(int)                      
    inc ecx                     ; i++
    jmp row_for
end_GetMat:
leave
ret