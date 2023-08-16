Código (fator=0)            Tabela de Símbolos      Código Máquina
00. MOD_A:  BEGIN           MOD_A:  00              
00. Y:      EXTERN          Y:      00
00. MOD_B:  EXTERN          MOD_B:  00
00.         PUBLIC  VAL     _L1:    02
00.         PUBLIC  _L2     _L2:    04
00.         PUBLIC  ONE     VAL:    13
00.         INPUT   Y       ONE:    14              12  Y
02. _L1:    JMP     MOD_B                           05  MOD_B
04. _L2:    LOAD    VAL     Tabela de Usos          10  VAL
06.         SUB     ONE     Y:      1+              02  ONE
08.         STORE   VAL     MOD_B:  3+              11  VAL
10.         JMPP    _L1                             07  _L1
12. STOP                    Tabela de Definições    14
13. VAL:    CONST   5       MOD_A:  00              05
14. ONE:    CONST   1       _L1:    02              01
    END                     _L2:    04
                            VAL:    13
                            ONE:    14