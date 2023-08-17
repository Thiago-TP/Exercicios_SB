Código sem macro            Tabela de Símbolos      Código Máquina
    SECTION TEXT            FAT:    04              
00. INPUT   N               FIM:    18              T   12a 22r
02. LOAD    N               AUX:    21              T   10a 22r
04. FAT:    SUB     ONE     N:      22              T   02a 23r
06.         JMPZ    FIM     ONE:    23              T   08a 18r
08.         STORE   AUX                             T   11a 21r
10.         MUL     N                               H   03a 22r ; ACC *= N
12.         STORE   N                               H   11a 22r ; N = ACC
14.         LOAD    AUX                             H   10a 21r ; ACC = AUX
16.         JMP     FAT                             H   05a 04r ; laço for
18. FIM:    OUTPUT  N                               H   13a 22r ; print(N!)
20. STOP                                            T   14a
    SECTION DATA
21. AUX:    SPACE                                       00a
22. N:      SPACE                                       00a
23. ONE:    CONST 1                                     01a
