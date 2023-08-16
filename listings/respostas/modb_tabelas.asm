Código (fator=15)           Tabela de Símbolos      Código Máquina
00. MOD_B:  BEGIN           MOD_B:  00
00. MOD_C:  EXTERN          MOD_C:  00
00. ONE:    EXTERN          ONE:    00
00.         PUBLIC  Y       Y:      08
00.         PUBLIC  MOD_B   
00.         LOAD    Y       Tabela de Usos          10  Y
02.         ADD     ONE     MOD_C:  7+              01  ONE
04.         STORE   Y       ONE:    3+              11  Y
06.         JMP     MOD_C                           05  MOD_C
08. Y:      SPACE           Tabela de Definições    00
    END                     MOD_B:  00
                            Y:      08