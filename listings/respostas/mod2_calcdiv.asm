Código (fator=16)       Tabela de Símbolos      Código Máquina
00. MOD2:   BEGIN       MOD2:   00
00. MOD1:   EXTERN      MOD1:   00
00. L1:     EXTERN      L1:     00
00. L2:     EXTERN      L2:     00
00. PUBLIC  VALS        VALS:   06
00. PUBLIC  MOD2        
00. LOAD    VALS + 1    Tabela de Uso           10  VALS + 1
02. JMPZ    L2          L1:     5+              08  L2
04. JMP     L1          L2:     3+              05  L1
06. VALS:   SPACE 2                             00  02
    END                 Tabela de Definições:
                        MOD2:   00
                        VALS:   06