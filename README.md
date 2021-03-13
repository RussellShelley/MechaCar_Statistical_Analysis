# MechaCar_Statistical_Analysis

We are reviewing the production data for insights that may help the manufacturing team.

## Linear Regression to Predict MPG
### Overview
We are performing multiple linear regression analysis to identify which variables in the dataset(Vehicle length, vehicle weight, spoiler angle, ground clearance,drive type) can be used to predict the mpg of MechaCar prototypes.
### Results
![MPG Summary](./Analysis/SummaryStatsMPG.png)

### Summary
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

     - Ground Clearance and vehicle length very low p-value a which suggests that a null hypothesis is unlikely true, meaning the amount of variance they cause is likely non-random. 
The low p-value for intercept suggests we should reject the null hypothesis.

- Is the slope of the linear model considered to be zero? Why or why not?


    - The null hypothesis is a model with a slope equal or close to 0 (no relationship gives a flat line). The low p-value for intercept suggests we should reject the null hypothesis. In rejecting this we are saying the slope of our model is not 0.  There is a relationship between changes in our variables and the MPG of the vehicle.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

    - The r-squared (r2) value represents how well the regression model approximates real-world data points and it can be used as a probability metric to determine the likelihood that future data points will fit the linear model. Our value of 0.6825 suggests that we can predict MPG in future prototypes effectively. 

