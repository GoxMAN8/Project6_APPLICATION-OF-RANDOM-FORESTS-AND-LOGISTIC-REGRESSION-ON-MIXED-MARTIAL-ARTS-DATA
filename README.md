# Project6_APPLICATION-OF-RANDOM-FORESTS-AND-LOGISTIC-REGRESSION-ON-MIXED-MARTIAL-ARTS-DATA

Project part of the module INM431, Machine learning, City University, London. Synthesis of a full report.

# Description

All files neccessary to get the results from a poster are provided, except the data. There are four scripts that need to be run with
prefixes INM_... , the order indicated by second part of file names. 

Mixed martial arts data scraped from the web. The scraped data includes 18 variables, however only 7 of them were used as predictors to build the models, 
due to redundance and multicolinearity. A binary fight outcome variable (1 = won, 0 = lost) was used as a class variable for the model. 
There was a total of 8583 cases in the dataset however, one of the predictor variables (WinRatio_Diff) had 294 missing values. Cases with missing values were removed from the dataset.

Random forest and logistic regression are two techniques applied and compared. Logistic regression is superior to linear regression due to 
much looser assumptions (no need for linearity, normality or homoscedasticity). However, it tends to overfit and does not have a mechanism to cope
with multicollinearity. Random Forest is powerful machine learning method having numerous advantages. Advantages include: great accuracy;
insensitivity to noisy features; feature importance measure; parallelizeble; intrinsic generalization performance measure. (out of bag error)
Disadvantages include: biased in favour of features with higher number of levels/vaues (or continous features); unlike decision trees or
logistic regression, still random forests are difficult to interpret. 

Performance evaluated using learning curves (accuracy against amount of data); reliability curves (true positive vs predicted positive rates);
confusion matrixes. Random Forrest outperforms logistic regression and bookmakers' in binary win outcome predictions, evaluated on defined measures.
