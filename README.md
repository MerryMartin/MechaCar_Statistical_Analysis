# MechaCar_Statistical_Analysis
module 16

## Project Overview

Need to review the production data to identify potential trouble spots that might help the manufacturing team at AutosRUs.  

## Linear Regression to Predict MPG
### Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
* * Both length and ground clearance have p-values less than .05 so they provided a non-random amount of variance to the mpg values in the dataset.

(code image)



* Is the slope of the linear model considered to be zero? Why or why not?
* * A slope of zero would mean that there is no relationship between the variables and mpg.  The null hypothesis is that the slope is not zero.  The overall p-value for the intercept is extremely small so we would reject the null hypothesis. Therefore, the slope of the linear model is not considered to be zero.  
 
* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
* * R-squared is the percentage of the dependent variable variation that a linear model explains.  Since the r-squared number for the MechaCar dataset is .71, it would be considered an effective predicter for prototypes. 

(summary image)




## Summary Statistics on Suspension Coils
### Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
(coil code)



(total images)




(summary images)




* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
* * The total of all lots does meet this requirement, as the variance is only 62.29356.  Lot1 and Lot2 also meet this requirement since their variances are also well below 100.  Lot3 does not meet this requirement since the variance is 170.2861224 - well above the limit of 100.  


## T-Tests on Suspension Coils
### Run t-tests to determine if the manufacturing lots are statistically different from the mean population.

(code image)



* * The null hypothesis is that the PSI across all lots is not statistically different from the population mean of 1500 pounds per square inch.  The p-values for all lots is .06 so I would fail to reject the null hypothesis, since the p-value is greater than .05.  The p-values for Lot1 and Lot2 are also greater than .05 so we would fail to reject the null hypothesis for these lots.  The p-value for Lot3 is .04 (below .05) so I would reject the null hypothesis for this lot.  

## Study Design: MechaCar vs Competition
### Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings. 

* Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
* * I believe that consumers would be interested to test safety ratings for MechaCar vs competitor cars so I will test this metric. 

* * My null hypothesis is that the safety rating for all cars in the same class have the same safety ratings and the means of all groups will be equal.  The alternative hypothesis is that they do not all have the same safety ratings and at least one of the means is different from all other groups.  

* * I would use the Anova test to test my hypothesis because it would determine if the mean safety rating of the MechaCar dataset is different from the mean safety rating of the competitors.  

* * In order to run this test, I would need a dataset with safety ratings for MechaCars and the competition.  
