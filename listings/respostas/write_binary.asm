Código                      Tabela de símbolos  Código Máquina
00  INPUT   N               N:      29          12  N
02  LOAD    N               AUX:    30          10  N
04  WHILE:  JUMPZ   FIM     DOIS:   31          08  28
06          DIV     DOIS                        04  DOIS
08          MUL     DOIS                        03  DOIS
10          STORE   AUX                         11  AUX
12          LOAD    N                           10  N
14          SUB     AUX                         02  AUX
16          STORE   AUX                         11  AUX
18          OUTPUT  AUX                         13  AUX
20          LOAD    N                           10  N
22          DIV     DOIS                        04  DOIS
24          STORE   N                           11  N
26          JUMP    WHILE                       05  04
28  FIM:    STOP                                14
29  N:      SPACE                               00
30  AUX:    SPACE                               00
31  DOIS:   CONST   2                           02