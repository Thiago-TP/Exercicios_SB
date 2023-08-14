Código (fator=0)            Tabela de Símbolos      Código Máquina
00. MOD1:   BEGIN           MOD1:   00
00. MOD2:   EXTERN          MOD2:   00
00. PUBLIC  N1              N1:     15
00. PUBLIC  N2              N2:     16
00. PUBLIC  N3              N3:     17
00. PUBLIC  RETURN          RETURN: 08
    SECTION TEXT    
00.         INPUT   N1      Tabela de Usos          12  N1
02.         INPUT   N2      MOD2:   7+              12  N2
04.         INPUT   N3                              12  N3
06.         JMP     MOD2    Tabela de Definições    05  MOD2
08. RETURN: INPUT   N1      MOD1:   00              12  N1
10.         LOAD    N1      N1:     15              10  N1
12.         JMPP    MOD1    N2:     16              07  MOD1
14.         STOP            N3:     17              14
    SECTION DATA            RETURN: 08
15. N1: SPACE                                       00
16. N2: SPACE                                       00
17. N3: SPACE                                       00
    END