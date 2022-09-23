# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
Below is an image of the multiple linear regression model attempting to predict miles per gallon(mpg) based on vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance:

![](Images/Deliverable1_LMSummary.PNG)
> Table 1.1

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Each factor (coefficient) during a multiple linear regression has a corresponding p value represented above by "Pr(>|t|)". This represents the percent change the variable randomly explains the data. Where these p values are statistically significant or provide a non-random amount of variance to our dependent variable is when the p value < 0.05. For our model, vehicle length and ground clearance have p values less than 0.05 and thus provide a non-random amount of varaince to the miles per gallon(mpg) dependent variable.

### Is the slope of the linear model considered to be zero? Why or why not?
In our linear model, the p-value located at the bottom of the image above is related to the the null hypothesis that the slope of the linear model is equal to zero. If our p value is less than 0.05, then we reject our null hypothesis. Since our p value = 5.35x10<sup>-11</sup>, which is much less than 0.05, thus we reject the null hypothesis that the slope of our linear model is equal to zero. 

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
In order to use our model to effectively predict MechaCar prototypes we need to look at our R-Squared statistic of 0.7149. This means that our linear model explains 71.49% of the variability in the miles per gallon of MechaCar prototypes. So the linear model predicts mpg somewhat well. However, we see that the intercept is statistically significant. This usually indicates that we need to scale up our vehicle length and ground clearance variables or that there are other variables not included in our dataset that explain the variablity in mpg of MechaCar prototypes. I would say there are other steps we can take to improve the predictive aspects of our linear model, so it does not predict mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils
The question posed for this summary is: 
<br><br>
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
<br><br>
Table 2.1 shows the summary statistics for suspension coils for all the MechaCar prototypes. Table 2.2 shows the summary statistics for suspension coils for MechaCar prototypes based on Manufacturer Lot.

![](Images/Deliverable2_total_summary.PNG)
> Table 2.1

![](Images/Deliverable2_lot_summary.PNG)
> Table 2.2

To answer the quesion posed, in table 2.1 we seed the variance for MechaCar prototypes is 62.29356. This falls under the 100 pounds per square inch that it is not to exceed. Therefore, the manufacturing data for all lots does meet the design specification.

However, if we look at each lot individually in table 2.2. We notice the variance for lot 1 and 2 are both under 10, whereas the variance in PSI for lot 3 is 170.286. The manufacturing data does meet the design specifications for lots 1 and 2, but it does not meet it for lot 3 as the variance in pounds per square inch is greater than 100.

## T-Tests on Suspension Coils
Below are one sample t tests run for PSI for MechaCars prototypes based on a population mean of 1,500 PSI. Therefore the null hypothesis of all of these t tests is the mean of the sample is 1,500 PSI. Table 3.1 is based on the total prototypes, Table 3.2 is only for prototypes in manufacturer lot 1, Table 3.3 is for prototypes in manufacturer lot 2, and Table 3.4 is for prototypes in manufacturer lot 3.

![](Images/Deliverable3_total_t_test.PNG)
> Table 3.1

![](Images/Deliverable3_lot1_t_test.PNG)
> Table 3.2

![](Images/Deliverable3_lot2_t_test.PNG)
> Table 3.3

![](Images/Deliverable3_lot3_t_test.PNG)
> Table 3.4

With our significance value equal to 0.05, our first t-test run in Table 3.1 on all the MechaCar prototypes yielded a p value of 0.06028. Since this value is greater than our significance value, we fail to reject the null hypothesis that our sample mean is equal to 1,500 PSI. When we broke up our prototype data by manufacturing lot we got the following p values:

- Lot 1 in Table 3.2: p-value = 1, so we fail to reject the null hypothesis
- Lot 2 in Table 3.3: p-value = 0.6072, so we also fail to reject the null hypothesis
- Lot 3 in Table 3.4: p-value = 0.04168, so we reject the null hypothesis

In only lot 3 prototypes did we reject the null hypothesis that the mean is equal to 1,500 PSI.

### Results

## Study Design: MechaCar vs Competition
### Introduction to Study
Now that we have discussed some statistical summaries and tests on the MechaCar prototype, the next step is to compare MechaCar versus other manufacturers. One study design that I will suggest is looking at Manufacturing costs of prototypes. I would like to see if there is a difference in the variances of manufacturing costs between manufacturers. Maybe some prototypes are on average more expensive or less expensive to make? This could be reflected in the cost passed down to the customer.

### Statistical Testing and Description
To conduct this study we will use the maintenance cost metric for prototypes for multiple manufacturers including MechaCar. The null hypothesis would be that there is no difference in the distribution mean of maintenance cost between any of the prototype manufacturers. In other words, the maintenance costs of all prototypes would have a similar distribution regardless of the manufacturer. In order to compare the distributions of maintenance costs across multiple competitors we would need to use an analysis of variance (ANOVA) test. 

The data required for this study would be the manufacturer, prototype ID, and maintenance cost for countless car prototypes across several different manufacturers selected at random. This way our data would be representative of the population and approximate a normal distribution. A statistical test like this would allow us to determine if all manufacturers spend similar amounts in maintenance costs on their prototypes.



