library(ggplot2)
library(coefplot)

# Include all variables except for 'Week' in the regression model
model3 <- lm(Sales ~ . - Week - Radio, data = sales)
summary(model3) # Print summary to check for significance of variables

# A
# Coefficient Plot for the Refined Model3
# Visualize the coefficients (slopes) of the significant variables
coefplot(model3, intercept = FALSE) # Adjust to use the refined model

# B
# 1. Residual vs. Fitted Plot
# Checks if residuals have non-constant variance or non-linear patterns
plot(model3, which = 1)

# 2. Normal Q-Q Plot
# Checks if residuals are normally distributed
plot(model3, which = 2)

# 3. Scale-Location Plot
# Another check for constant variance of residuals
plot(model3, which = 3)

# 4. Residuals vs Leverage Plot
# Helps to identify influential observations
plot(model3, which = 4)

# Generate partial regression plots
avPlots(model3)

