Código (fator=12)           Tabela de Símbolos      Código Máquina
00. MOD_B:  BEGIN           MOD_B:  00
00. VAL:    EXTERN          VAL:    00
00. L1:     EXTERN          L1:     00
00.         PUBLIC  Y       Y:      08
00.         PUBLIC  MOD_B   
00.         OUTPUT  Y       Tabela de Usos          13  08
02.         OUTPUT  VAL     VAL:    3+              13  00
04.         OUTPUT  Y + 2   L1:     7+              13  10
06.         JMP     L1                              05  00
08. Y:      SPACE   3       Tabela de Definições    00
    END                     MOD_B:  00              00
                            Y:      08              00
