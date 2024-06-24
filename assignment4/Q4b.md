b) Choosing between Mean Squared Error (MSE) and Mean Absolute Error (MAE):

Given that most articles are labeled as either very effective (3) or not effective (0), Mean Squared Error (MSE) would be the better choice.

Explanation: MSE gives higher weight to larger errors due to squaring the differences. In this case, where predictions are likely to be either close to correct (near 0 or 3) or very wrong (predicting 0 for a 3 or vice versa), MSE will penalize these large errors more heavily.
This aligns with the goal of distinguishing between very effective and not effective articles, which appear to be the most common and important categories in this dataset.
