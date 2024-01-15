# Include all other variables except for the week of the year
model3 <- lm(Sales ~ . - Week, data = sales)

# Drop insignificant variables based on Tyler's desired level of significance
# This can be done by examining the p-values and manually removing variables with high p-values

# Print the final regression model
summary(model3)

# Interpretation of coefficients
# Look at the coefficients and their signs for interpretation

