Due to $\alpha=1$, $p(d)$ can be ignored. After removing all 0-summands or 1-multipliers, our formula
for $\hat{p}$ looks like this:

$$ \hat{p}(c) = \sum_i \frac{\hat{p}(c_i)}{|P_i|} $$

Iteration 1: 

$ \hat{p}(c_1) = \hat{p}(c_2)/2 + \hat{p}(c_3)/2 = \frac{1}{4} $

$ \hat{p}(c_2) = \hat{p}(c_1) + \hat{p}(c_3)/2 = \frac{1}{4} + \frac{1}{8} = \frac{3}{8} $

$ \hat{p}(c_3) = \hat{p}(c_2)/2 = \frac{3}{8}/2 = \frac{3}{16} $

Iteration 2

$ \hat{p}(c_1) = \hat{p}(c_2)/2 + \hat{p}(c_3)/2 = \frac{3}{8}/2 + \frac{3}{16}/2 = \frac{9}{32}$

$ \hat{p}(c_2) = \hat{p}(c_1) + \hat{p}(c_3)/2 = \frac{9}{32} + \frac{3}{32} = \frac{12}{32} = \frac{3}{8} $

$ \hat{p}(c_3) = \hat{p}(c_2)/2 = \frac{3}{8}/2 = \frac{3}{16} $

That was all asked iterations, but the iterative process is stable now anyways.

Explanation:

$|P_i|$ is the number of premises that conclusion $c_i$ has.
For the sum term, only other conclusions are counted that have the currently
calculated argument as a premise.
