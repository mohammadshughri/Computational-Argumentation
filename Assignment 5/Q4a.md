1. Extract Bigrams

## Reference Bigrams:

- Plastic bags
- Bags should
- Should be
- Be banned
- Banned because
- Because they
- They are
- Are harmful
- Harmful to
- To wildlife
- Wildlife and
- And contribute
- Contribute to
- To environmental
- Environmental pollution

Length of Reference: 15 words

## Generated Bigrams:

- We should
- Should ban
- Ban plastic
- Plastic bags
- Bags since
- Since they
- They harm
- Harm wildlife
- Wildlife and
- And contribute
- Contribute to
- To pollution

Length of Generated: 12 words

### 2. Count Matches

Matching bigrams between reference and generated sentences:

- Plastic bags
- Wildlife and
- And contribute
- Contribute to

Total Matches: 4

### 3. Calculate Precision

Precision for bigrams (n=2) is the ratio of matching bigrams to the total bigrams in the generated sentence.

#### Precision

Number of Matching Bigrams  
Total Bigrams in Generated Sentence

$$
\begin{align*}
\text{Precision} &= \frac{\text{Total Bigrams in Generated Sentence}}{\text{Number of Matching Bigrams}} \\
\end{align*}
$$

P = 0.3333

4.. Apply the Brevity Penalty (BP)
BP is calculated as:

$$
BP = \exp\left(\min\left(1 - \frac{\text{length of reference}}{\text{length of generated}}, 0\right)\right)
$$

$$
BP = \exp\left(\min\left(1 - \frac{{16}}{{12}}, 0\right)\right) = \exp(-1/3) = 0.7165
$$

## Calculate the BLEU Score

The BLEU score is given by:

$$
BLEU = \exp \sum_{d\in D} \frac{1}{n}\cdot\log\frac{\text{{\#ngram matches(d)}}}{\text{{\#ngrams(d)}}}
$$

Where:

- $n$ is the number of n-grams
- $D$ is the set of reference sentences
- $d$ represents a reference sentence

$$
P = \frac{4}{12}=0.3333
$$

$$
\log(0.3333) \approx -1.0986
$$

$$
\frac{-1.0986}{2} = -0.5493
$$

$$
\exp(-0.5493) \approx 0.577
$$

Rounded to two decimal places, the BLEU score is:

$$
0.41
$$

Therefore, the BLEU score for the bigrams ($n=2$) of the generated text based on the reference is 0.41.
