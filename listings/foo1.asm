foo1:
push ebp
mov ebp, esp
mov edx, [ebp + 8]
mov eax, edx
shl eax, 3
sub eax, edx
pop ebp
ret
