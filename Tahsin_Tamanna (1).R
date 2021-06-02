#Installing ISLR package
install.packages("ISLR")
library(ISLR)


#Gives a sense of what the dataset looks like
?College
str(College)
data(College)
View(College)
levels(College$Private)


#Question 1a
#Building the model to find a relationship between Grad.Rate and S.F.Ratio
model=lm(Grad.Rate~S.F.Ratio,data=College)
summary(model)


#Question 1b
#Plotting Grad.Rate against S.F.Ratio and using abline to find the regression line
plot(Grad.Rate~S.F.Ratio,data=College,xlab="S.F.Ratio",ylab="Grad.Rate")
abline(model,col="blue")

#Question 1d
#Using I(S.F.Ratio^2) 
model=lm(Grad.Rate~S.F.Ratio+I(S.F.Ratio^2),data=College)
summary(model)


#Question 2a
#Building a multiple linear regression model
model=lm(Grad.Rate~Private+Top25perc+Outstate+Room.Board,data=College)
summary(model)



#Question 2b
#Determinig higher grad rate by randomly selecting data from the dataset
Outstate=c(7440,12280,11250,5130)
Top25perc=c(52,29,50,54)
Room.Board=c(3300,6450,3750,3592)
Private=c("No","Yes")
new_obs=data.frame(Outstate,Top25perc,Room.Board,Private)
new_obs
predict(model,new_obs)
predict(model,new_obs,interval="prediction")

#Question 2c
#Confidence Interval (95%)
confint(model,'Top25perc',level = 0.95)

#Question 2d.
#Provide a prediction interval for the prediction
Outstate=c(25000)
Top25perc=c(55)
Room.Board=c(4000)
Private=c("No")
new_obs=data.frame(Outstate,Top25perc,Room.Board,Private)
new_obs
predict(model,new_obs)
predict(model,new_obs,interval="prediction")

#Question 2e
#Using the plot( ) function on the model to examine diagnostic plots
par(mfrow=c(2,2))
plot(model)

#Question 3a
#Building a model using all the predictors
model=lm(Grad.Rate~.,data=College)
summary(model)


#Question 3b
#Applying forward selection to find a best subset of variables for a reduced model.
install.packages("leaps")
library(leaps)
model_fwd=regsubsets(Grad.Rate~.,data=College,nvmax=NULL,method="forward")
summary(model_fwd)
model_fwd_summary=summary(model_fwd)
which.max(model_fwd_summary$adjr2)
summary(model_fwd)$which[13,]


#Question 3c
#Building a new model with selected variables
best_model_fwd=lm(Grad.Rate~Private+Apps+Top10perc+Top25perc+F.Undergrad+P.Undergrad+Outstate+Room.Board+Personal+PhD+Terminal+perc.alumni+Expend,data=College)
summary(best_model_fwd)

#Question 3d
#Plotting with the limited variables
plot(model_fwd,scale="adjr2",main="Forward Selection: AdjR2")
