08048384 <g>:
 8048384        55                      push ebp
 8048385        89 e5                   mov ebp, esp
 8048387        8b 45 0c                mov eax, [ebp+0xc]
 804838a        03 45 08                add eax, [ebp+0x8]
 804838d        5d                      pop ebp
 804838e        c3                      ret

0804838f <f>:
 804838f        55                      push ebp
 8048390        89 e5                   mov ebp, esp
 8048392        83 ec 08                sub esp, 0x8
 8048395        c7 44 24 04 18 00 00    mov [esp+0x4], 0x18
 804839c        00
 804839d        c7 04 24 0c 00 00 00    mov [esp], 0xc
 80483a4        e8 db ff ff ff          call 8048384 <g>
 80483a9        89 ec                   mov esp, ebp
 80483ab        5d                      pop ebp
 80483ac        c3                      ret
