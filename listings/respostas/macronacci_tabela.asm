Código sem macro                Tabela de Símbolos+Lista    Código Máquina
    SECTION TEXT                FRONT:  10  29
00. COPY    ZERO, OLDER         FINAL:  30  19              09  33  35
03. COPY    ONE, OLD            ZERO:   33  01              09  34  36
06. INPUT   LIMIT               ONE:    34  04              12  37
08. OUTPTUT OLD                 OLDER:  35  02 11 24        13  36
10. FRONT:  LOAD    OLDER       OLD:    36  05 09 13 23 27  10  35
12.         ADD     OLD         LIMIT:  37  07 17 31        01  36
14.         STORE   NEW         NEW:    38  15 21 26        11  38
16.         SUB     LIMIT                                   02  37
18.         JMPP    FINAL       MNT                         07  30
20.         OUTPUT  NEW         Nome    Args    Linha       13  38
22.         COPY    OLD, OLDER  M1      3       1           09  36  35
25.         COPY    NEW, OLD    M2      3       5           09  38  36
28.         JMP     FRONT                                   05  10
30. FINAL:  OUTPUT  LIMIT       MDT                         13  37
32. STOP                        Linha   Código              14
    SECTION DATA                1       COPY    #1, #2
33. ZERO:   CONST 0             2       INPUT   #3          00
34. ONE:    CONST 1             3       OUTPUT  #2          01
35. OLDER:  SPACE               4       ENDMACRO            00
36. OLD:    SPACE               5       OUTPUT  #1          00
37. LIMIT:  SPACE               6       COPY    #2, #3      00
38. NEW:    SPACE               7       COPY    #1, #2      00
                                8       ENDMACRO 