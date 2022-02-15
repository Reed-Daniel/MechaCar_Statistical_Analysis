# MechaCar_Statistical_Analysis

## Project Overview
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on us and the data analytics team to review the production data for insights that may help the manufacturing team. 

## Linear Regression to Predict MPG
<img width="532" alt="linear_reg" src="https://user-images.githubusercontent.com/93271297/153932446-ee5c1a3c-7c22-4898-830d-9618337668de.png">

- The Vehicle Length and Ground Clearance coefficients provided a non-random amount of variance.
- The p-value is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.
- Although there are may still be unconsidered factors, this model does predict the mpg of the MechaCar prototype with some relative effectiveness. The r-squared value of this model is .7149 indicating that it is 71% accurate.

## Summary Statistics on Suspension Coils
<img width="484" alt="lot_summary" src="https://user-images.githubusercontent.com/93271297/153933607-0c4eec55-1266-48d8-bc1a-0929314a3581.png">
<img width="330" alt="summary_stat" src="https://user-images.githubusercontent.com/93271297/153933638-72aaf8b3-f02b-4800-8b9b-fcc62c12a0cd.png">

**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.**
- With the above design specification we are able to determine that the overall manufacturing PSI variance (**62.29**) meets the design specifications however, the individual lot summary indicates that Lot 3's PSI variance (**170.29**)is not meeting the design specification for suspension coils.

## T-Tests on Suspension Coils
- The results of the T-test across all suspension coil manufacturing lots shows that overall they are not statistically different from the population mean with the p-value not being low enough (**0.06028**) for us to reject the null hypothesis.
- The results of the T-test for Lot 1 indicates that it's suspension coils are not statistically different from the population mean with the p-value not being low enough (**1**) for us to reject the null hypothesis.
- The results of the T-test for Lot 2 indicates that it's suspension coils are not statistically different from the population mean with the p-value not being low enough (**0.6072**) for us to reject the null hypothesis.
- The results of the T-test Lot 3 indicates that it's suspension coils are slightly statistically different from the population mean, and the p-value is just low enough (**0.0417**) for us to reject the null hypothesis.

#### T-Test Across All Lots
<img width="407" alt="ttest_all" src="https://user-images.githubusercontent.com/93271297/153977324-06b83441-09cc-4d36-9c5b-d3feced0fa59.png">

#### T-Test Lot 1
<img width="484" alt="ttest_lot1" src="https://user-images.githubusercontent.com/93271297/153977333-a618245f-46b3-4308-8945-b318c144e4b4.png">

#### T-Test Lot 2
<img width="488" alt="ttest_lot2" src="https://user-images.githubusercontent.com/93271297/153977345-d5f9096e-8b4a-4ec3-8a0f-173c9b0c2d04.png">

#### T-Test Lot 3
<img width="502" alt="ttest_lot3" src="https://user-images.githubusercontent.com/93271297/153977356-40536a19-5f7c-4e6a-b49a-41b5990d00b3.png">

## Study Design: MechaCar vs Competition
There are many factors that consumers take into consideration when evaluating a car to purchase. However, as the popularity of ridesharing programs and services grows, it is becoming easier and cheaper to get around without the need of a personal vehicle. As a result, customers that are looking to purchase a car that not only provides an econominical way to travel but also a car that provides ample room to transport their belongings and family/friends. 
### Metric to Test:
To narrow down our test, we should evaluate MechaCar's carrying capacity, in cubic inches, in comparison to various competitors' vehicles.
### Null and Alternate Hypothesis:
H0: MechaCar prototypes' average carrying capacity is similar to competitor's vehicles in the same vehicle class Ha: MechaCar prototypes' average carrying capacity is statistically above or below that of competitor vehicles.
### Statistical Test Used:
The best statistical test for this would be two-sample t-tests.
### What Data is Needed:
We would need to gather cubic space data from the carrying compartments of all MechaCar prototypes, as well as from all major competitor vehicles.
