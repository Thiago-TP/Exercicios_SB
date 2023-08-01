MOD_B:  BEGIN
MOD_C:  EXTERN
ONE:    EXTERN
        PUBLIC  Y
        PUBLIC  MOD_B
        LOAD    Y
        ADD     ONE
        STORE   Y
        JMP     MOD_C
Y:      SPACE
END
