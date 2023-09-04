---
title: statistics, some details
---

### Type and distribution of data used

For the nominal, ordinal, discrete data, we use nonparametric methods while for continuous data, parametric methods as well as nonparametric methods are used. For example, in the regression analysis, when our outcome variable is categorical, logistic regression while for the continuous variable, linear regression model is used ([https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6206790/](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6206790/)).

The choice of the most appropriate representative measure for continuous variable is dependent on how the values are distributed. If continuous variable follows normal distribution, mean is the representative measure while for non-normal data, median is considered as the most appropriate representative measure of the data set.

Similarly in the categorical data, proportion (percentage) while for the ranking/ordinal data, mean ranks are our representative measure. In the inferential statistics, hypothesis is constructed using these measures and further in the hypothesis testing, these measures are used to compare between/among the groups to calculate significance level.

> **Case Study**:

> *A Researcher wants to compare the diastolic blood pressure (DBP) between three age groups (years) (\<30, 30--50, >50). If the DBP variable is normally distributed,  > mean value is the representative measure and null hypothesis stated that mean DBP values of the three age groups are statistically equal. In case of non-normal DBP
> variable, median value is the representative measure and null hypothesis stated that distribution of the DBP values among three age groups are statistically equal.
> In above example, one-way ANOVA test is used to compare the means when DBP follows normal distribution while Kruskal--Wallis H tests/median tests are used to compare > the distribution of DBP among three age groups when DBP follows non-normal distribution.*

> *Similarly, suppose he wants to compare the mean arterial pressure (MAP) between treatment and control groups, if the MAP variable follows normal distribution,
> independent samples t-test while in case follow non-normal distribution, Mann--Whitney U test are used to compare the MAP between the treatment and control groups.*

### Other Statistical methods

- Logistic regression analysis is used to predict the categorical outcome variable using independent variable(s).
- Survival analysis is used to calculate the survival time/survival probability, comparison of the survival time between groups  as well as to identify the predictors of the survival time of the subjects (Cox regression analysis).
- Receiver operating characteristics (ROC) curve is used to calculate area under curve (AUC) and cutoff values for given continuous variable with corresponding diagnostic accuracy using categorical outcome variable.
- Diagnostic accuracy of the test method is calculated as compared with another method (usually as compared with gold standard method).
- Sensitivity (proportion of the detected disease cases from the actual disease cases), specificity (proportion of the detected non-disease subjects from the actual non-disease subjects), overall accuracy (proportion of agreement between test and gold standard methods to correctly detect the disease and non-disease subjects) are the key measures used to assess the diagnostic accuracy of the test method.
- Other measures like false negative rate (1-sensitivity), false-positive rate (1-specificity), likelihood ratio positive (sensitivity/false-positive rate), likelihood ratio negative (false-negative rate/Specificity), positive predictive value (proportion of correctly detected disease cases by the test variable out of total detected disease cases by the itself), and negative predictive value (proportion of correctly detected non-disease subjects by test variable out of total non-disease subjects detected by the itself) are also used to calculate the diagnostic accuracy of the test method.

Summary of these methods can be found here [https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6639881/table/T3/?report=objectonly](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6639881/table/T3/?report=objectonly)


