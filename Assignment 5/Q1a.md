𝑇𝑟𝑎𝑖𝑛={(𝑐,𝑐,𝑟,𝑟,𝑟),(𝑐,𝑐,𝑟,𝑟,𝑐),(𝑐,𝑐,𝑟,𝑐,𝑟),(𝑟,𝑐,𝑐,𝑟,𝑐),(𝑟,𝑐,𝑐,𝑐,𝑟),(𝑐,𝑟,𝑐,𝑟,𝑐)}

bigram per sequence:

(c,c,r,r,r) : (- ,c), (c,c),(c,r),(r,r),(r,r)

(𝑐,𝑐,𝑟,𝑟,𝑐) : (- ,c), (c,c),(c,r),(r,r),(r,c)

(𝑐,𝑐,𝑟,𝑐,𝑟) : (- ,c), (c,c),(c,r),(r,c),(c,r)

(𝑟,𝑐,𝑐,𝑟,𝑐) : (- ,r), (r,c),(c,c),(c,r),(r,c)

(𝑟,𝑐,𝑐,𝑐,𝑟) : (- ,r), (r,c),(c,c),(c,c),(c,r)

(𝑐,𝑟,𝑐,𝑟,𝑐) :(- ,c), (c,r),(r,c),(c,r),(r,c)

 The occurrences of each Bigram:

 (-,c)=4

 (-.r)=2

 (c,c)=6

 (r,r)=3

 (r,c)=7

 (c,r)=8

 all probabilities of the bigram model from  𝑇𝑟𝑎𝑖𝑛:

P(c|-) = 4/6

P(r|-)= 2/6

P(c|c)= 6/14

P(c|r)= 7/10

P(r|r)= 3/10

P(r|c)= 8/14

