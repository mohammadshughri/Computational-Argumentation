---
jupyter:
  jupytext:
    text_representation:
      extension: .md
      format_name: markdown
      format_version: '1.3'
      jupytext_version: 1.16.1
  kernelspec:
    display_name: Python 3 (ipykernel)
    language: python
    name: python3
---

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "e992e5f0f6e0a177efc20ce2f6a4aa1f", "grade": false, "grade_id": "cell-40860fed0967cc2b", "locked": true, "schema_version": 3, "solution": false, "task": false} slideshow={"slide_type": "slide"} -->
 ## Assignment 1: NLP Basics 
 
 _Solution will be submitted by May 6, 23:59._
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "2417dac730a8e25ffacd8356904a8d0f", "grade": false, "grade_id": "cell-fc97745f1a1c55e0", "locked": true, "points": 2, "schema_version": 3, "solution": false, "task": true} slideshow={"slide_type": "slide"} -->
#### Exercise 1  (2 points: 0.5 + 0.5 + 0.5 + 0.5)

Mark which of the following sentences are correct and provide one or two sentences as an explanation for your answer:

a) Regularization favors complex models more than simpler models.

b) Topic modeling should be modeled as a hard clustering task.

c) Part of speech tags can be modeled with an ordinal variable.

d) Accuracy is a suitable metric for quantifying how effective an approach in tasks with an unbalanced class distribution (i.e., when there is a clearly over-represented majority class).
<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "ebd4da3f637b27ea289b9ce5274cdad1", "grade": true, "grade_id": "cell-3b09d1bd9eae5c5c", "locked": false, "points": 0, "schema_version": 3, "solution": true, "task": false} slideshow={"slide_type": "skip"} -->
##### Answers 1

a) Wrong

Regularization is done with the purpose to prevent overfitting and overfitted models are by definition more complex. 

b) Wrong

It's hard to find disjunctive clusters, and even if you manage to do that, even single words will often belong to multiple ones unless you have a very restrictive set of clusters

c) Wrong

While it's true that arithmetic operations like addition and multiplications make no sense of POS-tags, it also doesn't make sense to order them. A nominal variable is better

d) Wrong.

Accuracy will only tell you about how good the classifier is for the overrepresented class. A constant classifier will already have a pretty good accuracy for for unbalanced data, which is often not what we want.
    
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "1a614278f39abee2928f2cf6ff069f28", "grade": false, "grade_id": "cell-615003803b803ed7", "locked": true, "points": 3, "schema_version": 3, "solution": false, "task": true} slideshow={"slide_type": "slide"} -->
#### Exercise 2 (3 points: 1 + 2)

You are asked to develop a classifier that detects spam emails. You model the task as follows: given an email it is labeled with 1 if it is a spam, and 0 if it is ham. You know that only 1 % of the emails are actually spam. Given the two variants of $F_{1}\mbox{-}score$, $micro\mbox{ }F_{1}\mbox{-}score$ and $macro \mbox{ }F_{1}\mbox{-}score$ that can be computed using the following equation. Given a split $D$ that contains $N$ instances, the variables $c_{1}, c_{2}, \dots, c_{M}$ that represent the size of the instances in the split that are labeled with the classes ${1, 2, \dots, M}$. $micro\mbox{ }F_{1}\mbox{-}score$ and $macro \mbox{ }F_{1}\mbox{-}score$ can be computed as follows:



$$ micro\mbox{ }F_{1}\textrm{-score} = \sum_{i=1}^{M}\frac{c_{i}}{D}{F_{1}^{i}}\mbox{-}score$$
$$ macro\mbox{ }F_{1}\textrm{-score} = \sum_{i=1}^{M}\frac{1}{M}{F_{1}^{i}}\mbox{-}score$$

<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "251ed7634d7835dd89869997254d7d9c", "grade": false, "grade_id": "cell-3e8eee2183611eb0", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} slideshow={"slide_type": "slide"} -->

a) Given the following ground-truth and predictions of a classifier. Calculate the $micro\mbox{ }F_{1}\mbox{-}score$ and $macro \mbox{ }F_{1}\mbox{-}score$ on the given split. Please round the metrics to two decimal points. 


$$ground-truth = [0, 0, 0, 0, 0, 0, 0, 0, 0, 1 ]$$
$$predictions  = [0, 0, 0, 0, 0, 0, 0, 0, 1, 1]$$

b) Which of the two metrics would you use for spam detection, explain your answer.

<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "9285922b6ff7d4b54c030339f549e2fe", "grade": true, "grade_id": "cell-e178f05aa435eaa5", "locked": false, "points": 0, "schema_version": 3, "solution": true, "task": false} slideshow={"slide_type": "skip"} -->
# Computation of Micro and Macro F1-Score

Given:

-   Ground-truth: $[0, 0, 0, 0, 0, 0, 0, 0, 0, 1]$

-   Predictions: $[0, 0, 0, 0, 0, 0, 0, 0, 1, 1]$

We define the terms used for computation:

-   **True Positives (TP)**: Correctly predicted instances of a class.

-   **False Positives (FP)**: Incorrectly predicted instances of a
    class.

-   **False Negatives (FN)**: Missed instances of a class.

-   **Precision**: $\frac{TP}{TP + FP}$

-   **Recall**: $\frac{TP}{TP + FN}$

-   **F1-Score**:
    $2 \times \frac{\text{Precision} \times \text{Recall}}{\text{Precision} + \text{Recall}}$

## Confusion Matrix for Class 0 (Ham)

-   TP = 8

-   FP = 0

-   FN = 1

The Precision for Class 0 is: $$\text{Precision} = \frac{8}{8} = 1$$

The Recall for Class 0 is: $$\text{Recall} = \frac{8}{9} = 0.89$$

The F1-Score for Class 0 is:
$$\text{F1-Score} = 2 \times \frac{1.0 \times 0.89}{1.0 + 0.89} \approx 0.94$$

## Confusion Matrix for Class 1 (Spam)

-   TP = 1

-   FP = 1

-   FN = 0

The Precision for Class 1 is: $$\text{Precision} = \frac{1}{2} = 0.5$$

The Recall for Class 1 is: $$\frac{1}{1} = 1$$

The F1-Score for Class 1 is:
$$\text{F1-Score} = 2 \times \frac{0.5 \times 1.0}{0.5 + 1} \approx 0.67$$

## Micro F1-Score

Given that the number of instances of Class 0 is 9 and Class 1 is 1, the
weighted F1-Scores are:

-   Weighted F1-Score for Class 0: $0.94 \times 9 = 8.46$

-   Weighted F1-Score for Class 1: $0.67 \times 1 = 0.67$

Thus, the total weighted F1-Score is: $$8.46 + 0.67 = 9.13$$

The Micro F1-Score is: $$\frac{9.13}{10} \approx 0.91$$

## Macro F1-Score

The Macro F1-Score is calculated by averaging the F1-Scores for each
class:

$$\frac{0.94 + 0.67}{2} \approx 0.80$$

# Which Metric to Use for Spam Detection?

For spam detection, the Macro F1-Score is generally preferable because
it treats each class equally, which is crucial for tasks with class
imbalance, as is typical with spam detection. This metric ensures that
each class, even if underrepresented, has equal importance in assessing
the classifier's performance. Using Micro F1-Score can result in biases
toward the majority class, potentially masking poor performance in the
minority class (spam in this case).

Therefore, for tasks where class imbalance is present and each class is
equally important, the Macro F1-Score is the preferred metric.
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "dd9960eb300e1274211315b3bf6bd71f", "grade": false, "grade_id": "cell-f92a048a370c6304", "locked": true, "points": 7, "schema_version": 3, "solution": false, "task": true} slideshow={"slide_type": "slide"} -->
#### Exercise 3 (points 7: 1 + 1 + 3 + 1 +1)
While developing a text summarization model, you get the following scores in a 5-fold cross-validation setting ($bleu$ stands for the scores of your model and $bleu'$ for the baseline). The $bleu$ score calculates the quality of machine-generated text using the count of common tokens in the generated text the occur in the ground-truth texts (usually a generated-text is compared against multiple candidates). You will learn about the formula of the bleu score later in the lecture. It is not needed here.

$$bleu = [0.42, 0.42, 0.42, 0.43, 0.45]$$
$$bleu' = [0.40, 0.42, 0.41, 0.42, 0.44]$$

You want to show that the two models perform similarly. Since the same set of examples is subject to two different models, a dependent t-test for paired samples should be applied. Assuming that the scores are normally distributed, use a dependent t-test for paired samples with a significance level $\alpha$ of 0.05 to find out whether the performance of the model is significantly better than the baseline. While calculating the $t$-score, please always round your decimals to four decimal points. To perform the test do the following:

<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "e5c6fb04a81d0d73d7c31d1fcdd66fc4", "grade": false, "grade_id": "cell-55c6b858330a0391", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} slideshow={"slide_type": "slide"} -->
#### Instructions

a) Decide whether the test is one-tailed or two-tailed.

b) Formulate the research hypothesis $H$ and the null hypothesis $H_0$.

c) Calculate the $t$-score.

d) Look up the $p$-value for the right degree of freedom at https://www.sjsu.edu/faculty/gerstman/StatPrimer/t-table.pdf

e) Decide whether $H_0$ can be rejected. Explain your decision in 1-2 sentences.

Below, we give an example. If needed, you find more details on dependent $t$-tests on the web.

<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "82619348a2856b07a67cbb3fd41c2c2e", "grade": false, "grade_id": "cell-26563eceffed2814", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} slideshow={"slide_type": "slide"} -->
#### Example

Assume that you want to show that a classifier significantly outperforms a baseline in a 5-fold cross-validation setting with the following scores (again multiplied with 100). $Accuracy$ is the scores of the model and $accuracy'$ stands for the scores of the baseline:


$$ accuracy' = [71, 70.5, 71.8, 72, 70.3]$$
$$ accuracy = [73, 74.2, 72.3, 73.3, 74.1]$$

a) Type of test: 
Since we assume the model scores to be larger than the baseline, we perform a one-tailed paired t-test. We take a significance level $\alpha$ of 0.05.

b) Formulating hypotheses:

$H$: the mean of the scores of the model is significantly larger than the mean of the baseline's scores.

$H_0$: the mean of the scores of the model is not significantly larger than the baseline's scores.



<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "0450419ed66b1493529843b0b995cc40", "grade": false, "grade_id": "cell-3a51cf212168fb4c", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} slideshow={"slide_type": "slide"} -->
c) Calculate a $t$-score as follows:


$$t =\frac{\bar{D}-\mu_{D}}{\frac{s_{D}}{\sqrt{n}}}$$

where


* $\bar{D}$ is the mean distance between the model and the baseline's scores. 
* $\mu_{D}$ is the expected difference between the population means. 
* $s_{D}$ is the standard deviation of the scores distances.
* $n$ is the count of scores which is five here.






$\mu_{D}$ is considered zero since the expected difference of the population mean when the null hypothesis applies is zero.    

$$ \bar{D} = \frac{\sum_{1}^{n}{(accuracy_i - accuracy'_i)}}{n} = 2.26$$ 

$$ s_{D}=\sqrt{\frac{\sum_{1}^{n}{((accuracy_i - accuracy'_i)-\bar{D})²}}{n-1}} = 1.46$$
$$t = \frac{2.6}{\frac{1.46}{ \sqrt{5}}} = 3.46$$

<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "244b089e30a5e72ec14d61ce659057ee", "grade": false, "grade_id": "cell-d8007fa295f4b875", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} slideshow={"slide_type": "slide"} -->
d) Look up $p$-value for the right degree of freedom:

Calculating the degree of freedom. The degree of freedom is the count of values that are allowed to vary in our sample. Since we consider differences between paired scores, the degree of freedom is n - 1 in this case, which is four. 

Looking up the $p$-value in the table [0] by finding the largest t-value in the table that is smaller than $t$ which is in this case a $p$-value of $0.025$ for the $t$-value $2.776$.


e) Accept or reject $H_0$.

In this case we reject $H_0$ since 0.025 ($p$-value) $\le$ 0.05 ($\alpha$)

[0]: https://www.sjsu.edu/faculty/gerstman/StatPrimer/t-table.pdf
<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "28ce8c40f15b062f1406c08672d0989b", "grade": true, "grade_id": "cell-e40308493a421f35", "locked": false, "points": 0, "schema_version": 3, "solution": true, "task": false} slideshow={"slide_type": "skip"} -->
# Answer 3

a) Theoretically, the t-test is two-tailed, since the tested model could also be significantly worse than the baseline. But due to how we will
formulate our null-hypothesis, according to the following quote from the assignment text:

> to find out whether the performance of the model is significantly better than the baseline.

we will perform a one-tailed test, only checking for whether the model is significantly better and ignoring the significantly worse case.
This is called the upper tailed alternate hypothesis.

b) $H$: The mean difference of the model's score and the baseline's is significantly bigger than 0

$H_0$ The mean difference of the model's score and the baseline's is not significantly bigger than 0

c) $\mu_D $ is defined as 0, since under the null hypothesis the model wouldn't be significantly more potent than baseline.

First, we calculate $\bar{D}$

The pairwise differences between $bleu$ and $bleu'$ are:

$ \overrightarrow{pd} = \left[0.02,\,0,\,0.01,\,0.01,\,0.01\right] $

$ \bar{D} = \frac{\sum_{i=1}^{5} \overrightarrow{pd}}{5} = 0.01 $

$ s_D = \sqrt{\frac{\sum_{i=1}^{5}\left(\overrightarrow{pd} - \bar{D}\right)^2}{5-1}} \approx 0.0071 $

$ t = \frac{ 0.01 - 0 }{ \frac{s_D}{\sqrt{5}} } \approx 3.1623

d) Degrees of freedom is $n - 1 = 4$

For a one tailed tests, this corresponds to a p-value of $0.025$ for the $t$-value 2.776.

e) We reject $H_0$, since the p-value of 0.025 is smaller (or equal) than $\alpha = 0.05$

<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "fffa82a65c139d517cbebc03b2a39cb0", "grade": false, "grade_id": "cell-ca701cc7b0b9cc64", "locked": true, "points": 4, "schema_version": 3, "solution": false, "task": true} slideshow={"slide_type": "slide"} -->
#### Exercise 4 (points 4: 1 + 3)

Given the following two sentences which are parsed using the NLTK part of speech (POS) tagger (see https://pythonexamples.org/nltk-pos-tagging/ for the complete nltk pos tag list):

* Sentence 1:    All/DT men/NNS are/VBP mortal/JJ
* Sentence 2:    Socrates/NNP is/VBZ a/DT man/NN
* Sentence 3:    Socrates/NNP is/VBZ mortal/JJ

a) Generate the POS 1-grams and POS 2-grams of each sentence. 


b) Calculate the Jaccard similarity of each pair of sentences using the part of speech 1-grams and part of speech 2-grams.

<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "4693c9c902174191fdfe7fe1d53b0afa", "grade": true, "grade_id": "cell-7b2018b2af5eb3ee", "locked": false, "points": 0, "schema_version": 3, "solution": true, "task": false} slideshow={"slide_type": "skip"} -->
# Part A: POS 1-grams and POS 2-grams of each sentence {#part-a-pos-1-grams-and-pos-2-grams-of-each-sentence .unnumbered}

## POS 1-grams {#pos-1-grams .unnumbered}

-   **Sentence 1**: DT, NNS, VBP, JJ

-   **Sentence 2**: NNP, VBZ, DT, NN

-   **Sentence 3**: NNP, VBZ, JJ

## POS 2-grams {#pos-2-grams .unnumbered}

-   **Sentence 1**: DT NNS, NNS VBP, VBP JJ

-   **Sentence 2**: NNP VBZ, VBZ DT, DT NN

-   **Sentence 3**: NNP VBZ, VBZ JJ

# Part B: Jaccard similarity of each pair of sentences using POS 1-grams and POS 2-grams {#part-b-jaccard-similarity-of-each-pair-of-sentences-using-pos-1-grams-and-pos-2-grams .unnumbered}

## Jaccard Similarity {#jaccard-similarity .unnumbered}

Given two sets $A$ and $B$, the Jaccard similarity is given by:
$$J(A, B) = \frac{|A \cap B|}{|A \cup B|}$$

## POS 1-grams {#pos-1-grams-1 .unnumbered}

-   **Sentence 1 and Sentence 2**:

    -   $A = \{ \text{DT}, \text{NNS}, \text{VBP}, \text{JJ} \}$

    -   $B = \{ \text{NNP}, \text{VBZ}, \text{DT}, \text{NN} \}$

    -   Intersection: $\text{DT}$

    -   Union:
        $\{ \text{DT}, \text{NNS}, \text{VBP}, \text{JJ}, \text{NNP}, \text{VBZ}, \text{NN} \}$

    -   Jaccard Similarity: $\frac{1}{7} \approx 0.14$

-   **Sentence 1 and Sentence 3**:

    -   $A = \{ \text{DT}, \text{NNS}, \text{VBP}, \text{JJ} \}$

    -   $B = \{ \text{NNP}, \text{VBZ}, \text{JJ} \}$

    -   Intersection: $\text{JJ}$

    -   Union:
        $\{ \text{DT}, \text{NNS}, \text{VBP}, \text{JJ}, \text{NNP}, \text{VBZ} \}$

    -   Jaccard Similarity: $\frac{1}{7} \approx 0.14$

-   **Sentence 2 and Sentence 3**:

    -   $A = \{ \text{NNP}, \text{VBZ}, \text{DT}, \text{NN} \}$

    -   $B = \{ \text{NNP}, \text{VBZ}, \text{JJ} \}$

    -   Intersection: $\text{NNP}, \text{VBZ}$

    -   Union:
        $\{ \text{NNP}, \text{VBZ}, \text{DT}, \text{NN}, \text{JJ} \}$

    -   Jaccard Similarity: $\frac{2}{5} = 0.4$

## POS 2-grams {#pos-2-grams-1 .unnumbered}

-   **Sentence 1 and Sentence 2**:

    -   $A = \{ \text{DT NNS}, \text{NNS VBP}, \text{VBP JJ} \}$

    -   $B = \{ \text{NNP VBZ}, \text{VBZ DT}, \text{DT NN} \}$

    -   Intersection: None

    -   Union:
        $\{ \text{DT NNS}, \text{NNS VBP}, \text{VBP JJ}, \text{NNP VBZ}, \text{VBZ DT}, \text{DT NN} \}$

    -   Jaccard Similarity: $\frac{0}{6} = 0$

-   **Sentence 1 and Sentence 3**:

    -   $A = \{ \text{DT NNS}, \text{NNS VBP}, \text{VBP JJ} \}$

    -   $B = \{ \text{NNP VBZ}, \text{VBZ JJ} \}$

    -   Intersection: None

    -   Union:
        $\{ \text{DT NNS}, \text{NNS VBP}, \text{VBP JJ}, \text{NNP VBZ}, \text{VBZ JJ} \}$

    -   Jaccard Similarity: $\frac{0}{6} = 0$

-   **Sentence 2 and Sentence 3**:

    -   $A = \{ \text{NNP VBZ}, \text{VBZ DT}, \text{DT NN} \}$

    -   $B = \{ \text{NNP VBZ}, \text{VBZ JJ} \}$

    -   Intersection: $\text{NNP VBZ}$

    -   Union:
        $\{ \text{NNP VBZ}, \text{VBZ DT}, \text{DT NN}, \text{VBZ JJ} \}$

    -   Jaccard Similarity: $\frac{1}{4} = 0.25$
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "15560607501e46577daf9156a938af33", "grade": false, "grade_id": "cell-a7d2464f2f99936c", "locked": true, "points": 4, "schema_version": 3, "solution": false, "task": true} slideshow={"slide_type": "slide"} -->
#### Exercise 5 (4 points, 1 point for each condition)

One expert classified the persuasiveness of 1000 opinionated news articles in a corpus. The corpus covers articles on four basic themes: **Pandemic**, **Climate change**, **War** , and **Refugees**. The distribution of articles over the two persuasiveness classes and the four themes are as follows:

| Theme		|  Persuasive (1)	| Non-persuasive |
|---------- | ------------------| -------------- |
| Pandemic          | 200			| 100	|
| Climate change	| 100			| 250	|
|War			    | 50			| 100	|
|Refugees		    | 50		    |150	|

* Split the corpus into 50% training set, 25% validation set, and 25% test set, such that
* the training set is balanced with respect to persuasiveness;
* learning theme information on the training set does not help classifying persuasiveness on the other sets; and
* the validation set and the test set have the same distribution both with respect to the themes and with respect to persuasiveness.

<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "098e635be9782de70cbb50cc840921e0", "grade": true, "grade_id": "cell-fc269d22e8c4ccbd", "locked": false, "points": 0, "schema_version": 3, "solution": true, "task": false} slideshow={"slide_type": "skip"} -->
# Answer 5
*Notation note: (x, y) stands for a split of x persuasive and y non-persuasive articles)*
There are a total of 400 persuasive and 600 Non-persuasive articles.

From the first two constraints, it follows the we need (250, 250) for the training set, and (150,350) for the validation and test set.

The third constraint implies that every theme should have the same ratio ($\frac{x}{y}$ for (x,y)) of persuasive to non-persuasive articles in the training set.

To get the numbers for the training set, we have to solve the following system of equations

$$ \begin{aligned}
a * \left(\text{Pandemic} + \text{Climate} + \text{War} + \text{Refugees}\right) =& 250 \\
b * (\overline{\text{Pandemic}} + \overline{\text{Climate}} + \overline{\text{War}} + \overline{\text{Refugees}}) =& 250
\end{aligned}
$$
Where a and b represent the ration we take from each theme for the training set, and the theme name represents the number of persuasive (non-persuasive for bar-version) articles
in the theme.

Solving the above equations gives $a=\frac{3}{8}$ and $b=\frac{5}{12}$

$a * \left[\text{Pandemic} + \text{Climate} + \text{War} + \text{Refugees}\right] = \left[125.0,\,62.5,\,31.25,\,31.25\right] $

$b * left[\overline{\text{Pandemic}} + \overline{\text{Climate}} + \overline{\text{War}} + \overline{\text{Refugees}}\right] $ 

$ = \left[41.667,\,104.167,\,41.667,\,62.5\right] $

We consider the third constraint more important than the first (maximum number of training samples) for the usefulness of the model, 
we will round all values down.

Thus, we get the following numbers for the training set:

$ t = \left[\text{Pandemic} + \text{Climate} + \text{War} + \text{Refugees}\right]_{\text{train}} = \left[125,\,62,\,31,\,31\right] $

$ tn = left[\overline{\text{Pandemic}} + \overline{\text{Climate}} + \overline{\text{War}} + \overline{\text{Refugees}}\right]_{\text{train}} = \left[41,\,104,\,41,\,62\right]$

Since test and validation set are required to have equal distributions (of the traits that we know of), we can just divide all the remaining elements
between them.

Remaining elements = subtracting $t$ and $tn$ from the columns of the table, we get the following number of leftover elements:

$\left[\text{Pandemic} + \text{Climate} + \text{War} + \text{Refugees}\right]_{\text{val}\cup\text{test}} = \left[75,\,38,\,19,\,19\right] $

$ left[\overline{\text{Pandemic}} + \overline{\text{Climate}} + \overline{\text{War}} + \overline{\text{Refugees}}\right]_{\text{val}\cup\text{test}} = \left[59,\,146,\,59,\,88\right]$

To get even numbers, we add one element were we discarded one from the training set due to rounding, and discard one element when that's not possible (persusive Pandemic articles).

$\left[\text{Pandemic} + \text{Climate} + \text{War} + \text{Refugees}\right]_{\text{val}\cup\text{test}} = \left[74,\,38,\,20,\,20\right] $

$ left[\overline{\text{Pandemic}} + \overline{\text{Climate}} + \overline{\text{War}} + \overline{\text{Refugees}}\right]_{\text{val}\cup\text{test}} = \left[60,\,146,\,60,\,88\right]$

Divide each theme by two from the union set to get validation and test set

$\left[\text{Pandemic} + \text{Climate} + \text{War} + \text{Refugees}\right]_{\text{val}} = \left[\text{Pandemic} + \text{Climate} + \text{War} + \text{Refugees}\right]_{\text{val}} $ \\
$ = \left[37,\,19,\,10,\,10\right] $

$ left[\overline{\text{Pandemic}} + \overline{\text{Climate}} + \overline{\text{War}} + \overline{\text{Refugees}}\right]_{\text{val}} = left[\overline{\text{Pandemic}} + \overline{\text{Climate}} + \overline{\text{War}} + \overline{\text{Refugees}}\right]_{\text{test}} $ \\

$ = \left[30,\,73,\,30,\,44\right] $

<!-- #endregion -->
