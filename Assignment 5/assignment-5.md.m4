---
jupyter:
  jupytext:
    text_representation:
      extension: .md
      format_name: markdown
      format_version: '1.3'
      jupytext_version: 1.16.2
  kernelspec:
    display_name: Python 3 (ipykernel)
    language: python
    name: python3
---
define(myInclude,`##### Answer
include($1)')dnl

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "234fb15b20192164ec6ff9fcd4332518", "grade": false, "grade_id": "cell-514f1a641843e327", "locked": true, "schema_version": 3, "solution": false, "task": false} slideshow={"slide_type": "slide"} -->
# Assignment 5 - Argument Generation
_Solutions have to be submitted by July 8, 2024, 23:59_
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "400e132095de5ecea7fbeffd89f5a019", "grade": false, "grade_id": "cell-2535be2fb6fce87e", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} slideshow={"slide_type": "slide"} -->
#### Exercise 1: Argument Generation (2 + 1 + 1 + 2 = 6 Points)

An n-gram model approximates the probability of $m$ units (a unit $u$ can be a conclusion $c$ or reason $r$) as:

$$P(u_1, \dots, u_m) = \prod_{1}^{m}{P(u_i|u_1, \dots, u_{i-1})} = \prod_{1}^{m}{P(u_i|u_{i-n-1}, \dots, u_{i-1})}$$


A **bigram** language model for sequences of claims (symbol: $c$) and reasons (symbol: $r$) is meant to be created based on the following set of six training sequences. A bigram language model is an instantiation of a n-gram model where $n = 2$.
$$Train = \Big\{ (c, c, r, r, r) , (c, c, r, r, c) , (c, c, r, c, r) ,  (r, c, c, r, c) , (r, c, c, c, r), (c, r, c, r, c) \Big\}$$

a) Derive all probabilities of the bigram model from $Train$. Use an underscore (\,$\_$\,) to indicate one empty start symbol. One probability is already given, calculate all other probabilities accordingly.

$$P(c | \_) = \frac{4}{6}$$

<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "5ae742710ab23efcf3a3127ab1265875", "grade": true, "grade_id": "cell-698c05a055334cf1", "locked": false, "points": 2, "schema_version": 3, "solution": true, "task": false} -->
myInclude(Q1a.md)
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "c5986d2d22b7ffd52d98b918fc285493", "grade": false, "grade_id": "cell-bdd8e3eec61ac098", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} -->
b) Using the created language model, compute the most likely next three symbols that follow after the following sequence: $(r, c, r, r)$  
<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "a31c80d7119df63eb77ecd18885cec44", "grade": true, "grade_id": "cell-51db01cf491af0b5", "locked": false, "points": 1, "schema_version": 3, "solution": true, "task": false} -->
myInclude(Q1b.md)
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "a1bbb67dba7dc3b92cdea6fd1654a02f", "grade": false, "grade_id": "cell-415c568dd533a732", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} -->
c) Calculate the overall probability of the given sequence $(r, c, r, r)$ (without the next three symbols).  Write down your calculation path.
<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "229a5b48be40f3b50554a5c8f0f2d01b", "grade": true, "grade_id": "cell-93d44307429485c6", "locked": false, "points": 1, "schema_version": 3, "solution": true, "task": false} -->
myInclude(Q1c.md)
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "161a187ca6f978c2644b0693df56e499", "grade": false, "grade_id": "cell-d3eb0f434dc3e8b1", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} -->
d) Calculate the perplexity of the trained language model on the following test set. Perplexity is a probability-based evaluation metric that estimates the confidence of a language model to generate a test set. A higher perplexity means that the model is less confident to generate the test set and a lower perplexity indicates a higher confidence. The perplexity of a language model for a document $D = \{u_1, \cdots u_N\}$ is given using the following equation:
$$Perplexity(D) = \sqrt[N]{\prod_{i=1}^{N}{P(u_i\mid u_{i-1})}}$$

where $N$ is the length of the document and $u$ stands for a reason or a claim. Always round your results to two decimal points. 

$$ Test = \Big\{ (c, c, c, r, r) , (r, c, c, r, r) \Big\} $$
<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "7175eb781b7e58b9ac06495662f16923", "grade": true, "grade_id": "cell-37f7d43b18f66b8e", "locked": false, "points": 2, "schema_version": 3, "solution": true, "task": false} -->
myInclude(Q1d.md)
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "37c69c7b16f3eac95fcb0a236229d7e7", "grade": false, "grade_id": "cell-7167f00688b185ec", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} slideshow={"slide_type": "slide"} -->
#### Exercise 2:  Key Point Summarization ( 1 + 1 + 1 + 1 = 4 Points)

You want to use a transformer-based model to summarize an argument by extracting its main key points. A key point is a span of text that highlights one of the salient points of the argument. You proceed to create a set of arguments with the main key points. After labeling the dataset, you consider two ways to model the task of key point summarization. The first is extractive where the model has to pinpoint the boundaries of the key points in an input argument. The second is abstractive where the model generates the key points given an input argument. An example for extractive and abstractive summarization is given bellow:

Argument: _Subsidizing electric cars is the way for a brighter future. Let me explain my argument in a more concrete way. The first advantage of electric cars is that **they help us reduce CO2 emissions**. In this way we finally get rid of those old fuel cars that hurt the environment. The second perspective is the economy. Let me be more concrete, **electric vehicles boost the car industry in our country to establish a new revenue source for our society**_.

Abstractive Summary:
_Electric cars contribute to reducing CO2 emissions, which is crucial for addressing climate change. The electric vehicle industry can boost the car industry within the country, creating a new source of revenue._

Extractive Summary: Two key points are marked in bold in the argument. 

a) Which of the following architectures fits each of the approaches (abstractive or extractive): Bi-directional encoder and left-to-right decoder? Explain your answer. 
<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "74f9088ae08251d0397ae207725b5d85", "grade": true, "grade_id": "cell-069fd86a1cebfabd", "locked": false, "points": 1, "schema_version": 3, "solution": true, "task": false} -->
myInclude(Q2a.md)
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "9a60161c6e3170f1921b6b97acb499c0", "grade": false, "grade_id": "cell-60a1595d16aaf017", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} -->
b) What will the input and the output of the model in extractive key point summarization and abstractive key point summarization be.
<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "c8641edf9ac3e0d63e52c41ee6280b21", "grade": true, "grade_id": "cell-4d91ec184f763e7a", "locked": false, "points": 1, "schema_version": 3, "solution": true, "task": false} -->
myInclude(Q2b.md)
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "dedeacb81e6d3b5e6032498e1e4ee2a3", "grade": false, "grade_id": "cell-1f390313543b250d", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} -->
c) BERTScore is an evaluation metric that relies on contextual word embedding. Inform yourself about BERTScore on the web. After reading and understanding how BERTScore works, answer the following question: Which of the following metrics will you use to evaluate the abstractive approach and which will you use for the extractive approach.
* F1-score
* BERTScore
<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "d150ae0e193e7a375fa18bcba0a516d9", "grade": true, "grade_id": "cell-95c276e19921c76a", "locked": false, "points": 1, "schema_version": 3, "solution": true, "task": false} -->
myInclude(Q2c.md)
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "581788583bb34ca4573acd2a69889fca", "grade": false, "grade_id": "cell-47c0e36fc2965287", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} -->
d) Can you use a recurrent neural network for the task when it is modeled as a generation or an extraction task? Explain the disadvantages of using a Recurrent Neural Network for the task. 
<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "b27939d715cacb201b4bdcce4d63504f", "grade": true, "grade_id": "cell-8f62468d870a0bae", "locked": false, "points": 1, "schema_version": 3, "solution": true, "task": false} -->
myInclude(Q2d.md)
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "6b7ceba2a36f845581c0adcab8c3a491", "grade": false, "grade_id": "cell-80ce3637b7730114", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} -->
**Exercise 3: Auto-encoders (1 + 1)**

The lecture slides presented autoencoders, a type of neural networks whose objective is to learn an efficient encoding of an input such that the input can (ideally) be reconstructed from the encoding.

a) To train an autoencoder that can encode and decode claims, is labeled training data needed? Explain your answer in 2--3 sentences.
<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "27cd528dc699e26fe99a121db4cb19ed", "grade": true, "grade_id": "cell-f3b3d722fe0f6950", "locked": false, "points": 1, "schema_version": 3, "solution": true, "task": false} slideshow={"slide_type": "skip"} -->
myInclude(Q3a.md)
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "2ba6b9ed6c931d3a7cc35d83205b3877", "grade": false, "grade_id": "cell-46371357106e2d55", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} slideshow={"slide_type": "slide"} -->
b) Assume you aim to transfer a text from any of **three** styles (say, left, right, and neutral bias) to any other of them. How many autoencoders need to be trained in this case? Explain your answer in 2--3 sentences.
<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "edd920b5fae92096ad93da560f3ad3ed", "grade": true, "grade_id": "cell-72461a565d234b64", "locked": false, "points": 1, "schema_version": 3, "solution": true, "task": false} -->
myInclude(Q3b.md)
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "6a628238d4b72c978178bb392a25ffce", "grade": false, "grade_id": "cell-b47e3e86a4982c34", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} slideshow={"slide_type": "skip"} -->
**Exercise 4: Evaluation (2 + 1 + 1) = 4 points**

Given the following reference and generated sentences.
 
Reference: _Plastic bags should be banned because they are harmful to wildlife and contribute to environmental pollution._

Generated: _We should ban plastic bags since they harm wildlife and contribute to pollution._

a) Calculate the BLEU score for the $n$=2 of the generated text based on the references. Round your final scores to two decimal points.
<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "d99bb738f7594765442df82964e3cfb5", "grade": true, "grade_id": "cell-5081ca8c50a1d086", "locked": false, "points": 2, "schema_version": 3, "solution": true, "task": false} -->
myInclude(Q4a.md)
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "0d80cd187bc15f7ed152bebf9d8b388f", "grade": false, "grade_id": "cell-3993d1fc501375fc", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} -->
b) Calculate ROUGE-2 for the generated and reference text. ROUGE-2 is another evaluation metric for text generation that stands for Recall-Oriented Understudy for Gisting Evaluation. Similar to BLEU, ROUGE is also based on n-grams overlap between the generated text and the references. In comparison to BLEU, it includes not only precision but also recall, which are averaged using $F_1$-score. Here are the precision and recall for ROUGE-2, which measures 2-grams overlap between a reference and a generated text. Where $d$ stand for the generated document, and $d_{rf}$ stands for the reference document.

$$Precision = \frac{\# ngram\,matches }{\#ngrams(d)}$$
$$Recall = \frac{\# ngram\,matches }{\#ngrams(d_{rf})}$$
<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "f8e257dffa8505e3f969c6217b657a96", "grade": true, "grade_id": "cell-dd9f1147066e9e8c", "locked": false, "points": 1, "schema_version": 3, "solution": true, "task": false} -->
myInclude(Q4b.md)
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "a8b148d72014864811d9894076e56b64", "grade": false, "grade_id": "cell-dcf57e4176e1762c", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} -->
c) Which of the three metrics: BLEU-2, ROUGE-2, and BERTScore will you use for evaluating a system that performs abstractive summarization and why.

<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "d1fbab5e562d4ce56402d5cbbbce3d61", "grade": true, "grade_id": "cell-ce102cae8a6a482d", "locked": false, "points": 1, "schema_version": 3, "solution": true, "task": false} -->
myInclude(Q4c.md)
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "fd33c52435f1f4c3b90d0f0128a21939", "grade": false, "grade_id": "cell-337d9c4f32a07baf", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} slideshow={"slide_type": "slide"} -->
#### Exercise 5: Decoding Strategies (3 + 1 = 4 points) 

To generate a text from a language model, different decoding strategies can be used. Decoding strategies dictate how to choose a word from the outputted probabilities at each step $i$. 
$$\prod_{i=1}^{N}{P(w_i|w_1 \cdots w_{i-1})}$$

Here are the decoding strategies used in practice:
* Greedy Decoding: generate at each step the word with the most probable word.
* Beam Search: at each step generate all possible candidates by looking at all the vocabulary and keep the $k$ most probable candidates. 
* Random Sampling: sample the words according to the probability distribution of $P(w_i|w_1 \cdots w_{i-1})$.
* Top-k sampling: truncate the probability distribution $P(w_i|w_1 \cdots w_{i-1})$ to a certain length of $k$ and redistribute the truncated probability mass to these selected tokens.

a) Discuss the advantages and problems of each decoding strategy. Consider in your discussion aspects like development and computational cost, adequacy (how well  the generated text fits the prompt), creativeness, and diversity of the generated text. To support the discussion, we provide the generated text by GPT-2 output for each decoding strategy for the prompt: _I forgot about the homework again. The teacher._

* Greedy: _was so nice to me. I was so happy to see her. I was so happy to see her. I was so happy_
* Beam Search: _asked me if I wanted to go to the bathroom. I said no. She said I had to go to the bathroom._
* Random Sampling: _told me that she had taken credit for huge amounts of assignments while she was no longer the teacher. After a few hours I called_
* Top-k sampling: _had just asked us to talk about my homework. When we finished with it, she said we should talk to your parents about it._
<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "b26062c7a6b745a620fcf5e3fbdd8d83", "grade": true, "grade_id": "cell-13c82f41c6f9d40c", "locked": false, "points": 3, "schema_version": 3, "solution": true, "task": false} slideshow={"slide_type": "skip"} -->
myInclude(Q5a.md)
<!-- #endregion -->

<!-- #region deletable=false editable=false nbgrader={"cell_type": "markdown", "checksum": "5ac640b7d941efd25b478eb010a10f1c", "grade": false, "grade_id": "cell-6a3283f2d04fee89", "locked": true, "points": 0, "schema_version": 3, "solution": false, "task": true} slideshow={"slide_type": "slide"} -->
b) Which of the decoding strategies fits better for applications such as machine translation and which fits more generating arguments? Explain in your reasoning in 1-2 sentences. 
<!-- #endregion -->

<!-- #region deletable=false nbgrader={"cell_type": "markdown", "checksum": "cfe9815cca4374c7b7dbb8e0a2b227b4", "grade": true, "grade_id": "cell-3f13eff9dee45c39", "locked": false, "points": 1, "schema_version": 3, "solution": true, "task": false} slideshow={"slide_type": "skip"} -->
myInclude(Q5b.md)
<!-- #endregion -->
