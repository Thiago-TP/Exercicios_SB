foo3:
push ebp
mov ebp, esp
mov eax, [ebp + 8]
mov eax, [eax]
add eax, eax
pop ebp
ret
