Código (fator=16)       Tabela de Símbolos      Código Máquina
00. MOD2:   BEGIN       MOD2:   00
00. MOD1:   EXTERN      MOD1:   00
00. _L1:    EXTERN      _L1:    00
00. _L2:    EXTERN      _L2:    00
00. PUBLIC  VALS        VALS:   06
00. PUBLIC  MOD2        
00. LOAD    VALS + 1    Tabela de Uso           10  VALS + 1
02. JMPZ    _L2         _L1:    5+              08  _L2
04. JMP     _L1         _L2:    3+              05  _L1
06. VALS:   SPACE 2                             00  02
    END                 Tabela de Definições:
                        MOD2:   00
                        VALS:   06