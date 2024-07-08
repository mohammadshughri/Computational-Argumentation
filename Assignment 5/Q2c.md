I use F1-score for extractive key points, because F1-score is works for classification and entity recognition
which is the main idea of extractive approach. in this approach, define the portion of text which contains the main idea
is important and F1-score can evaluate this approach.

and I use BERTscore for abstractive approach since it can evaluate the similarity between generated text (summary which is paraphrasing of text)
and the main text and this metric can handle paraphrasing.
