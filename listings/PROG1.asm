SECTION TEXT
M_2:    MACRO
        JMP     FAT
FIM:    OUTPUT  N
ENDMACRO
MUL_N:  MACRO
        MUL     N
        STORE   N
        LOAD    AUX
        M_2
END_MACRO
INPUT   N
LOAD    N
FAT:    SUB     ONE
        JMPZ    FIM
        STORE   AUX
        MUL_N
STOP
SECTION DATA
AUX:    SPACE
N:      SPACE
ONE:    CONST 1
