(01) i = 0
(02) if i >= n goto (14)
(03) j = 0
(04) if j >= n goto (12)
(05) t1 = n * i
(06) t2 = t1 + j
(07) t3 = t2 * 8
(08) c1[t3] = 0.0
(09) m = n * n
(10) j = j + 1
(11) goto (4)
(12) i = i + 1
(13) goto (2)
(14) i = 0
(15) if i >= m goto (19)
(16) c2[i] = 0
(17) i = i + 1
(18) goto (15)
