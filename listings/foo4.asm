foo4:
push ebp
mov ebp, esp
mov ax, [ebp + 8]
sub ax, [ebp + 10]
pop ebp
ret
