Código (fator=0)           Tabela de Símbolos      Código Máquina
00. MOD1:   BEGIN           MOD1:   00              
00. MOD2:   EXTERN          MOD2:   00
00. VALS:   EXTERN          VALS:   00
00. PUBLIC  _L1             L1:     06
00. PUBLIC  _L2             L2:     14
00.     INPUT   VALS        R:      15              12  VALS
02.     INPUT   VALS + 1                            12  VALS + 1
04.     JMP     MOD2        Tabela de Uso           05  MOD2
06. L1: LOAD    VALS        MOD2:   5+              10  VALS
08.     DIV     VALS + 1    VALS:   1+ 3+ 7+ 9+     04  VALS + 1
10.     STORE   RES                                 11  RES
12.     OUTPUT  RES         Tabela de Definições    13  RES
14. L2: STOP                _L1:    06              14
15. R:  SPACE               _L2:    14              00
    END                     R:      15