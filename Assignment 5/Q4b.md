To calculate ROUGE-2 for the generated text and the reference text, we'll use the following definitions:

**Precision:**

$$
\frac{\text{Number of n-gram matches}}{\text{Number of n-grams in the generated text}}
$$

$$
\frac{4}{12}=0.3333
$$

**Recall:**

$$
\frac{\text{Number of n-gram matches}}{\text{Number of n-grams in the reference text}}
$$

$$
\frac{4}{15}=0.2667
$$

Calculate F1 Score:

$$
F_1 = 2 \cdot\frac{ \text{Precision} \cdot \text{Recall}}{\text{Precision} + \text{Recall}} = 2 \cdot\frac{ 0.3333 \cdot 0.2667}{0.3333 + 0.2667} \approx 0.2963
$$

Rounded to two decimal places, the F1 score for ROUGE-2 is:

$$
0.30
$$

Therefore, the ROUGE-2 score for the generated text based on the reference is 0.30.
