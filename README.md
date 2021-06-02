# Linear-Regression
Assignment #3: Linear Regression

Build a simple linear regression model to examine the relationship between graduation rates (“Grad.Rate”) and student-faculty ratio (“S.F.Ratio”).
Is there a relationship? Why?
Plot graduation rates against student-faculty ratio to visualize the relationship. Use abline( ) function to plot the regression line through the data.
As student-faculty ratio increases, what can we expect to happen to graduation rates? 
Test if this relationship is linear. Build a model that also includes a quadratic term: Use I(S.F.Ratio^2) or poly(S.F.Ratio, 2) in the model. What do the results tell us about the relationship?




Build a multiple linear regression model for graduation rates on predictors “Private”, “Top25perc”, “Outstate”, and “Room.Board”:

Grad.Rate = 1Private+2Top25perc +3Outstate +4Room.Board+

Evaluate the model’s quality of fit based on F-statistic and R2. What are these metrics telling us?
Do we expect to see higher graduation rates for private or non-private institutions? Why?
For a unit increase in Top25perc (% of new freshmen students coming from top 25% of their high school class), give a 95% confidence interval for the range we expect graduation rates to change.
Predict the graduation rate of a public college with a $25,000 out-of-state tuition, $4,000 costs for room and board, and 55% of their new students having graduated in the top 25% of their high school. Provide a prediction interval for the prediction as well. What does the range tell us about our prediction’s usefulness?
Use the plot( ) function on the model to examine diagnostic plots. Looking at the residual vs fit plot, give your assessment on whether any assumptions have been violated or not. Explain your decision based on the plot.

Build a regression model for graduation rates using all the predictors. Tip: lm(y ~ .) uses the period symbol “.” as shorthand for “all”, instead of typing out all variables.
What is the adjusted R2 for the full model?
Apply forward selection to find a best subset of variables for a reduced model. Use adjusted R2 (“adjr2”) as the metric for choosing the optimal model. How many variables are in the reduced model compared to the full? Which variables were left out?
Build a new model based on the selected variables. Compare the adjusted R2 between the reduced model and the full. Is there a noticeable difference? What does that tell us?
Plot the ranking of subsets in the feature selection process. We see that there isn’t much difference between the best subset and one with far fewer variables. Pick the subset with fewest predictors that has at least an adjusted R2 of 0.45. Which predictors are in this model?
To summarize, what you’ve just done was find a model with fewer predictors that still fits the data about as well as the full model with all predictors. A simpler model is often desirable to reduce complexity and avoid overfitting.
