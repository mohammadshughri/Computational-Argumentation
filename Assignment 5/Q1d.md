𝑇𝑒𝑠𝑡={(𝑐,𝑐,𝑐,𝑟,𝑟),(𝑟,𝑐,𝑐,𝑟,𝑟)}

bigram per sequence in test set:

(c,c,c,r,r): (-,c),(c,c),(c,c),(c,r),(r,r)

(r,c,c,r,r): (-,r),(r,c),(c,c),(c,r),(r,r)

all probabilities of the bigram model from  𝑇𝑟𝑎𝑖𝑛:

P(c|-) = 4/6

P(r|-)= 2/6

P(c|c)= 6/14

P(c|r)= 7/10

P(r|r)= 3/10

P(r|c)= 8/14

P((c,c,c,r,r)) = 4/6 * 6/14 * 6/14 * 8/14 * 3/10 =0.02

P((r,c,c,r,r)) = 2/6 * 7/10 * 6/14 * 8/14 * 3/10 =0.01

$$Perplexity(D) = \sqrt[N]{\prod_{i=1}^{N}{P(u_i\mid u_{i-1})}}$$
$$ = \sqrt[10]{0.02 * 0.01} = 0.43$$

