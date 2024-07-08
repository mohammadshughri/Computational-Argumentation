Yes, you can use RNN for both of these tasks. The extractive approach will be take a bit of experimentation with the architecture, as
I suspect that to achieve good performance in this task, you need to be aware of all the tokens in the sentence, including those that
come later.

The main disadvantage with RNNs is that they have worse scaling, as each hidden state depends on the hidden state of all previous tokens.
