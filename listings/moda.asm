MOD_A:  BEGIN
Y:      EXTERN
MOD_B:  EXTERN
        PUBLIC  VAL
        PUBLIC  _L2
        PUBLIC  ONE
        INPUT   Y
_L1:    JMP     MOD_B
_L2:    LOAD    VAL
        SUB     ONE
        STORE   VAL
        JMPP    _L1
STOP
VAL:    CONST   5
ONE:    CONST   5
END
