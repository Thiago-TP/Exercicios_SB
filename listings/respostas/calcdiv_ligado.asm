    Código não ligado   Tabela Global           Código Máquina
00. 12  VALS            L1:     06              12  22
02. 12  VALS + 1        L2:     14              12  23
04. 05  MOD2            RES:    15              05  16  
06. 10  VALS            MOD2:   00+ 16 = 16     10  22
08. 04  VALS + 1        VALS:   06+ 16 = 22     04  23
10. 11  RES                                     11  15
12. 13  RES                                     13  15
14. 14                                          14
15. 00                                          00      fim do MOD1.o
16. 10  VALS + 1                                10  23
18. 08  L2                                      08  14
20. 05  L1                                      05  06
22. 00  02                                      00  02  fim do MOD2.o