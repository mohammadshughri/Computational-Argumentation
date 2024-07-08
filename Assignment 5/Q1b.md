
Compute next three symbole for (𝑟,𝑐,𝑟,𝑟): compute (r,c,r,r,u1,u2,u3)
the last symbol is r, so probabilities for next symbol is base on P(u1|r) which u1 is next symbol:
P(u1|r) : if u1 = r : P(r|r) = 3/10
          if u1 = c : P(c|r) = 7/10

P(c|r)> P(r|r) : u1= c , compute u2 base on P(u2|c)

P(u2|c) :  if u2 = c : P(c|c) = 6/14
           if u2 = r : P(r|c) = 8/14

P(r|c)> P(c|c) : u2=r , compute u3 base on P(u3|r)    

P(u3|r) : if u3 = r : P(r|r) = 3/10
          if u3 = c : P(c|r) = 7/10

P(c|r)> P(r|r) : u3= c 

new sequence is : (r,c,r,r,c,r,c)

