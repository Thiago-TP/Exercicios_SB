Código (fator=29)               Tabela de Símbolos          Código Máquina
00. MOD2:       BEGIN           MOD2:       00
00. STOP1:      EXTERN          STOP1:      00
00. STOP2:      EXTERN          STOP2:      00
00. BOOL:       EXTERN          BOOL:       00
00. COUNT_ADD:  EXTERN          COUNT_ADD:  00
00. COUNT_SUB:  EXTERN          COUNT_SUB:  00
00. FIM:        EXTERN          FIM:        00
00. PUBLIC      MOD2            SOMA:       36
00. PUBLIC      RES             CHECK:      48   
00.         INPUT   NUM         NUM:        64              12  NUM
02.         LOAD    BOOL        AUX:        65              10  BOOL
04.         ADD     UM          RES:        66              01  UM
06.         STORE   BOOL        UM:         67              11  BOOL
08.         DIV     DOIS        DOIS:       68              04  DOIS
10.         MUL     DOIS                                    03  DOIS
12.         STORE   AUX         Tabela de Usos              11  AUX
14.         LOAD    BOOL        STOP1:      51+             10  BOOL
16.         SUB     AUX         STOP2:      59+             02  AUX
            ; BOOL=(BOOL+1)%2   BOOL:       3+ 7+ 15+ 19+ 
18.         STORE   BOOL        COUNT_ADD:  43+ 47+         11  BOOL
20.         JMPP    SOMA        COUNT_SUB:  29+ 33+         07  SOMA
22.         LOAD    RES         FIM:        53+ 55+ 61+     10  RES
24.         SUB     NUM                                     02  NUM
26.         STORE   RES         Tabela de Definições        11  RES
28.         LOAD    COUNT_SUB   MOD2:   00                  10  COUNT_SUB
30.         ADD     UM          SOMA:   36                  01  UM
32.         STORE   COUNT_SUB   CHECK:  48                  11  COUNT_SUB
34.         JMP     CHECK       NUM:    64                  05  CHECK
36. SOMA:   LOAD    RES         AUX:    65                  10  RES
38.         ADD     NUM         RES:    66                  01  NUM
40.         STORE   RES         UM:     67                  11  RES
42.         LOAD    COUNT_ADD   DOIS:   68                  10  COUNT_ADD
44.         ADD     UM                                      01  UM
46.         STORE   COUNT_ADD                               11  COUNT_ADD
48. CHECK:  LOAD    RES                                     10  RES
50.         SUB     STOP1       ; ACC = RES-STOP1           02  STOP1
52.         JMPZ    FIM         ; res = stop1 ? fim         08  FIM
54.         JMPP    FIM         ; res > stop1 ? fim         07  FIM
56.         LOAD    RES                                     10  RES
58.         SUB     STOP2       ; ACC = RES-STOP2           02  STOP2
60.         JMPN    FIM         ; res < stop2? fim          06  FIM
62.         JMP     MOD2                                    05  14
64. NUM:        SPACE                                       00
65. AUX:        SPACE                                       00
66. RES:        SPACE                                       00
67. UM:         CONST   1                                   01
68: DOIS:       CONST   2                                   02
    END