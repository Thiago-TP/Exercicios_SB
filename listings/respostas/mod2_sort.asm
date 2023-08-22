Código (fator=18)                 Tabela de Símbolos           Código Máquina
00. MOD2:   BEGIN                 MOD2:   00
00. N1:     EXTERN                N1:     00
00. N2:     EXTERN                N2:     00
00. N3:     EXTERN                N3:     00
00. RETURN: EXTERN                RETURN: 00
00. PUBLIC  MOD2                  N2_MAIOR_QUE_N1_E_N3:   18
    SECTION TEXT                  CASO_N3_N2:             30
00. LOAD    N1                    N1_MAIOR_QUE_N2:        36          10  N1              		
02. SUB     N2                    N1_MAIOR_QUE_N2_E_N3:   48          02  N2
04. JMPP    N1_MAIOR_QUE_N2       CASO_N3_N1:             60          07  
    ;N2_MAIOR_QUE_N1:               
06. LOAD    N2                    Tabela de Usos                      10  N2
08. SUB     N3                    N1: 1+ 15+ 19+ 27+ 37+ 55+ 61+      02  N3
10. JMPP    N2_MAIOR_QUE_N1_E_N3  N2: 3+  7+ 25+ 31+ 45+ 49+ 57+      07  
    ;CASO_N1_N3:                  N3: 9+ 13+ 21+ 33+ 39+ 43+ 51+ 63+
12. OUTPUT  N1                    RETURN: 17+ 29+ 35+ 47+ 59+ 65+     13  N3
14. OUTPUT  N3                                                        13  N1
16. JMP     RETURN                Tabela de Definições                05  RET
18. N2_MAIOR_QUE_N1_E_N3:         MOD2:                   00                  
    LOAD    N1                    N2_MAIOR_QUE_N1_E_N3:   18          10  N1
20. SUB     N3                    CASO_N3_N2:             30          02  N3
22. JMPP    CASO_N3_N2            N1_MAIOR_QUE_N2:        36          07  
    ;CASO_N1_N2:                  N1_MAIOR_QUE_N2_E_N3:   48
24. OUTPUT  N1                    CASO_N3_N1:             60          13  N1
26. OUTPUT  N2                                                        13  N2
28. JMP     RETURN                                                    05  RET
30. CASO_N3_N2:
    OUTPUT  N3                                                        13  N3
32. OUTPUT  N2                                                        13  N2
34. JMP     RETURN                                                    05  RET
36. N1_MAIOR_QUE_N2:
    LOAD    N1                                                        10  N1				
38. SUB     N3                                                        02  N3					
40. JMPP    N1_MAIOR_QUE_N2_E_N3                                      07  
    ;CASO_N2_N3:
42. OUTPUT  N2                                                        13  N2
44. OUTPUT  N3                                                        13  N3
46. JMP     RETURN                                                    05  RET
48. N1_MAIOR_QUE_N2_E_N3:
    LOAD    N2                                                        10  N2	
50. SUB     N3                                                        02  N3		
52. JMPP    CASO_N3_N1                                                07        
    ;CASO_N2_N1:
54. OUTPUT  N2                                                        13  N2
56. OUTPUT  N1                                                        13  N1
58. JMP     RETURN                                                    05  RET      
60. CASO_N3_N1:
    OUTPUT  N3                                                        13  N3
62. OUTPUT  N1                                                        13  N1
64. JMP     RETURN                                                    05  RET
    SECTION DATA 
    END