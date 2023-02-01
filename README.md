# MechaCar_Statistical_Analysis
module 16

## Project Overview

I need to review the production data to identify potential trouble spots that might help the manufacturing team at AutosRUs.  I have decided to use linear regression, summary statistics and t-tests to perform this analysis.  

## Linear Regression to Predict MPG
### Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.


![linear_model_code](https://user-images.githubusercontent.com/115426070/216189736-a980649c-6eae-4643-93ea-38f84de52142.png)

![summary_multiple_linear_regression](https://user-images.githubusercontent.com/115426070/216189844-014cc58c-0302-4687-b8b3-a110f68aea0c.png)


* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
* * Both length and ground clearance have p-values less than .05 so they provided a non-random amount of variance to the mpg values in the dataset.

* Is the slope of the linear model considered to be zero? Why or why not?
* * A slope of zero would mean that there is no relationship between the variables and mpg.  The null hypothesis is that the slope is not zero.  The overall p-value for the intercept is extremely small so we would reject the null hypothesis. Therefore, the slope of the linear model is not considered to be zero.  
 
* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
* * R-squared is the percentage of the dependent variable variation that a linear model explains.  Since the r-squared number for the MechaCar dataset is .71, it would be considered an effective predicter for prototypes. 


## Summary Statistics on Suspension Coils
### Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.

![coil_code](https://user-images.githubusercontent.com/115426070/216189873-21649b2d-7e41-48d6-a06c-77454b2b5bd5.png)


![total_summary](https://user-images.githubusercontent.com/115426070/216189895-1ec03f8f-5f16-457f-86f6-3459032d047a.png)


![lot_summary](https://user-images.githubusercontent.com/115426070/216189914-51f2af10-5148-4472-8c09-0265001120f6.png)


* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
* * The total of all lots does meet this requirement, as the variance is only 62.29356.  Lot1 and Lot2 also meet this requirement since their variances are also well below 100.  Lot3 does not meet this requirement since the variance is 170.2861224 - well above the limit of 100.  


## T-Tests on Suspension Coils
### Run t-tests to determine if the manufacturing lots are statistically different from the mean population.

![t_test_code](https://user-images.githubusercontent.com/115426070/216189942-520ae0a0-6493-4041-baa3-84e6bff224e4.png)

![t_test](https://user-images.githubusercontent.com/115426070/216189992-de239375-65f3-4ec0-94b9-851117c5c84f.png)

![lot1](https://user-images.githubusercontent.com/115426070/216189999-25d56b63-dd1f-44f7-97be-215f03e018d9.png)

![lot2](https://user-images.githubusercontent.com/115426070/216190013-4849dbd9-09b8-4387-984e-f24a536a4976.png)

![lot3](https://user-images.githubusercontent.com/115426070/216190024-25b3651e-40fb-44c6-b7be-71ef96a39123.png)


* * The null hypothesis is that the PSI across all lots is not statistically different from the population mean of 1500 pounds per square inch.  The p-values for all lots is .06 so I would fail to reject the null hypothesis, since the p-value is greater than .05.  The p-values for Lot1 and Lot2 are also greater than .05 so we would fail to reject the null hypothesis for these lots.  The p-value for Lot3 is .04 (below .05) so I would reject the null hypothesis for this lot.  

## Study Design: MechaCar vs Competition
### Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings. 

* * I believe that consumers would be interested to see the analysis between the safety rating for MechaCar vs the safety ratings for competitor cars so I will test this metric. 

* * My null hypothesis is that the safety rating for all cars in the same class have the same safety ratings and the means of all groups will be equal.  The alternative hypothesis is that they do not all have the same safety ratings and at least one of the means is different from all other groups.  

* * I would use the Anova test to test my hypothesis because it would determine if the mean safety rating of the MechaCar dataset is different from the mean safety rating of the competitors.  

* * In order to run this test, I would need a dataset with safety ratings for MechaCars and the competition.  
