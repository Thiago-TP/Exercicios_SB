Códigos não ligados     Tabela Global               Código Máquina
00. 12  STOP1           MOD1:       00+  0 = 00     12  23
02. 10  ZERO            FIM:        16+  0 = 16     10  28
04. 11  BOOL            STOP1:      23+  0 = 23     11  25
06. 11  COUNT_ADD       STOP2:      24+  0 = 24     11  26
08. 11  COUNT_SUB       BOOL:       25+  0 = 25     11  27
10. 02  STOP1           COUNT_ADD:  26+  0 = 26     02  23
12. 11  STOP2           COUNT_SUB:  27+  0 = 27     11  24
14. 05  MOD2            ZERO:       28+  0 = 28     05  29
16. 13  COUNT_ADD       MOD2:       00+ 29 = 29     13  26
18. 13  COUNT_SUB       SOMA:       36+ 29 = 65     13  27
20. 13  RES             CHECK:      48+ 29 = 77     13  95
22. 14                  NUM:        64+ 29 = 93     14
23. 00                  AUX:        65+ 29 = 94     00
24. 00                  RES:        66+ 29 = 95     00
25. 00                  UM:         67+ 29 = 96     00
26. 00                  DOIS:       68+ 29 = 97     00
27. 00                                              00
28. 00                                              00
29. 12  NUM                                         12  93
31. 10  BOOL                                        10  25
33. 01  UM                                          01  96
35. 11  BOOL                                        11  25
37. 04  DOIS                                        04  97
39. 03  DOIS                                        03  97
41. 11  AUX                                         11  94
43. 10  BOOL                                        10  25
45. 02  AUX                                         02  94
47. 11  BOOL                                        11  25
49. 07  SOMA                                        07  65
51. 10  RES                                         10  95
53. 02  NUM                                         02  93
55. 11  RES                                         11  95
57. 10  COUNT_SUB                                   10  27
59. 01  UM                                          01  96
61. 11  COUNT_SUB                                   11  27
63. 05  CHECK                                       05  77
65. 10  RES                                         10  95
67. 01  NUM                                         01  93
69. 11  RES                                         11  95
71. 10  COUNT_ADD                                   10  26
73. 01  UM                                          01  96
75. 11  COUNT_ADD                                   11  26
77. 10  RES                                         10  95
79. 02  STOP1                                       02  23
81. 08  FIM                                         08  16
83. 07  FIM                                         07  16
85. 10  RES                                         10  95
87. 02  STOP2                                       02  24
89. 06  FIM                                         06  16
91. 05  MOD2                                        05  29
93. 00                                              00
94. 00                                              00
95. 00                                              00
96. 01                                              01
97: 02                                              02