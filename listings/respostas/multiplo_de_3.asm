Código                      Tabela de Símbolos+Lista    Código Máquina
02. EH_MUL: MACRO &N        PRINT1: 16  11              
02.     LOAD    &N          FIM:    18  15              10  N   
04.     DIV     TRES        N:      19  01 03 09        04  TRES 
06.     MUL     TRES        TRES:   20  05 07           03  TRES
08.     SUB     &N          UM:     21  17              02  N
10.     JMPZ    PRINT1      ZERO:   22  13              08  PRINT1                              
    END_MACRO
00.         INPUT   N                                   12  N 
02.         EH_MUL  N                                   ; escrito acima
12.         OUTPUT  ZERO                                13  ZERO
14.         JMP     FIM                                 05  FIM
16. PRINT1: OUTPUT  UM                                  13  UM
18. FIM:    STOP                                        14
19. N:      SPACE                                       00
20. TRES:   CONST   3                                   03
21. UM:     CONST   1                                   01
22. ZERO:   CONST   0                                   00