To transfer text between three styles (left, right, and neutral bias), you would need to train 6 autoencoders. This is
because you need a separate autoencoder for each possible transformation: left to right, left to neutral, right to left,
right to neutral, neutral to left, and neutral to right. Each autoencoder learns to encode text from one style and decode
it into another specific style.
