probability for sequence is based on $P(u_1,\ldots,u_m)=\prod_{i=1}^m P(u_i|u_1,\ldots,u_{i−1})$, so for sequence (r,c,r,r) first we go through
it to find bigram langauge model and then multiply the probablities of all bigrams in this sequence:

(r,c,r,r): (-,r) ,(r,c) ,(c,r) ,(r,r) 

P((r,c,r,r)) = P(r|-) * P (c|r) * P (r|c) * P(r|r) = 2/6 * 7/10 * 8/14 * 3/10 = 1/3 * 7/10 * 4/7 * 3/10 =
4/21 * 21/100 =4/100

