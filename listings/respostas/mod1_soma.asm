Código (fator=0)                Tabela de Símbolos        Código Máquina
00. MOD1:   BEGIN               MOD1:       00
00. MOD2:   EXTERN              MOD2:       00
00. RES:    EXTERN              RES:        00
00. PUBLIC  STOP1               FIM:        16
00. PUBLIC  STOP2               STOP1:      23
00. PUBLIC  BOOL                STOP2:      24
00. PUBLIC  COUNT_ADD           BOOL:       25
00. PUBLIC  COUNT_SUB           COUNT_ADD:  26
00. PUBLIC  FIM                 COUNT_SUB:  27
00. INPUT   STOP1               ZERO:       28              12  STOP1
02. LOAD    ZERO                                            10  ZERO
04. STORE   BOOL                Tabela de Usos              11  BOOL
06. STORE   COUNT_ADD           MOD2:       15+             11  COUNT_ADD
08. STORE   COUNT_SUB           RES:        21+             11  COUNT_SUB
10. SUB     STOP1                                           02  STOP1
12. STORE   STOP2               Tabela de Definições        11  STOP2
14. JMP     MOD2                MOD1:       00              05  MOD2
16. FIM:    OUTPUT  COUNT_ADD   FIM:        16              13  COUNT_ADD
18.         OUTPUT  COUNT_SUB   STOP1:      23              13  COUNT_SUB
20.         OUTPUT  RES         STOP2:      24              13  RES
22.         STOP                BOOL:       25              14
23. STOP1:      SPACE           COUNT_ADD:  26              00
24. STOP2:      SPACE           COUNT_SUB:  27              00
25. BOOL:       SPACE           ZERO:       28              00
26. COUNT_ADD:  SPACE                                       00
27. COUNT_SUB:  SPACE                                       00 
28. ZERO:       CONST   0                                   00
    END