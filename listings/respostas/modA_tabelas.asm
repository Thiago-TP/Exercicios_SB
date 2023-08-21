Código (fator=0)            Tabela de Símbolos      Código Máquina
00. MOD_A:  BEGIN           MOD_A:  00
00. Y:      EXTERN          Y:      00
00. MOD_B:  EXTERN          MOD_B:  00
00.         PUBLIC  VAL     L1:     10
00.         PUBLIC  L1      VAL:    11
00.         INPUT   Y                               12  00
02.         LOAD    VAL     Tabela de Usos          10  11
04.         ADD     Y       Y:      5+ 7+           01  00
06.         STORE   Y + 2   MOD_B:  9+              11  00 + 2
08.         JMPP    MOD_B                           07  00
10. L1:     STOP            Tabela de Definições    14
11. VAL:    CONST 5         MOD_A:  00              05
    END                     L1:     10
                            VAL:    11