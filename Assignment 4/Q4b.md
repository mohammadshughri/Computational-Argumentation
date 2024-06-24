One reason for MAE is that it doesn't give extra weight to outliers, which the domains gives us no reason to do. That said,
range of the values is very small, so the worst outliers are only weighted 3 times more than normal.

Theoretically, it is more interpretable, since it is in the same unit as the original data, but in this case
since the scale is ordinal, this doesn't matter that much.

Unless you need any properties of MSE (like differentiability for a close form solution) for your model, I would choose MAE.
