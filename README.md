# Module 15 | Assignment - Statistics and R
## Overview of Project

## Purpose
The purpose of this analysis is to analyze vehicle data using RStudio to hypothesize and visualize relationships between different vehicle metrics.

## Linear Regression to Predict MPG
- Based on the individual variable p-values, vehicle length and ground clearance provide a non-random amount of variance to the mpg values in the dataset.
- The slope of the linear model is not considered to be zero because the multiple linear regression model involves multiple independent variables, with each variable having their unique slope.
- The linear model may not predict MechaCar prototypes effectively because there is a significant intercept, which means that the significant features may need scaling or transforming to improve the predictive power or that there are other variables not included in this model that may explain the variability of the dependent variable.
![MechaCar Linear Regression](MechaCar_Linear_Regression.png)

## Summary Statistics on Suspension Coils
Current manufacturing data shows that for all manufacturing lots in total, the variance of the suspension coils meet the design specifications. However, as we look at each individual lot, we see that Lot 3 has a notably higher variance than Lot 1 and Lot 2. While Lot 1 and Lot 2 meet the design specifications, Lot 3, with a variance of 170.29 PSI, fails to meet the design specifications.

![Total Summary](total_summary.png)
![Lot Summary](lot_summary.png)

## T-Tests on Suspension Coils
Assuming our significance level is the common 0.05 percent, the t-test results for all manufacturing lots show that the p-value is above our significance level, and thus we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar. The same applies to Lot 1 as well as Lot 2. For Lot 3, however, the p-value = 0.04168. This means that for Lot 3 we have sufficient evidence to reject the null hypothesis, and we would thus state that the two means are not statistically similar.
![All Lots T-Test](t-test_total.png)
![Lot 1 T-Test](t-test_lot1.png)
![Lot 2 T-Test](t-test_lot2.png)
![Lot 3 T-Test](t-test_lot3.png)

## Study Design: MechaCar vs Competition
When designing a statistical study to quantify how the MechaCar performs against the competition, it is important to capture metrics that influence a consumer's decision to purchase one car over another. Some relevant metrics include reliability ratings and real-world fuel efficiency. 
For reliablity ratings, we can run summary statistical testing on the number of reported issues by severity and by car model each year. For instance, we can gather data on issues ranging from minor issues, such as faulty turn signals, to severe issues, such as transmission failure. We can then summarize these statistics to determine the mean and median number of issues per year for each model. The null hypothesis would be the mean and median number of issues of its primary competitors' cars. A more reliable car will have lower means and medians. In addition, if the standard deviation is also low, it would indicate that the carmaker has more consistent manufacturing quality.
For real-world fuel efficiency, we can gather data on mpg from cars driven in real-world conditions. This would provide a more accurate picture of fuel-efficiency as it would include the impacts of traffic, stoplights, and other real-world impacts on mpg. We could then run a t-test and compare this data against the population mean mpg. This would provide insight into how consistently MechaCar fuel efficiency meets its stated mpg figures in the real-world. In addition, we can gather data on which urban areas the real-world data is gathered. This would provide insight into fuel efficiency in different climates, road conditions, and congestion levels.
