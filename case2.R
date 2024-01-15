# Run a linear regression of c-store sales against TV and radio
model1 <- lm(Sales ~ TV + Radio, data = sales)

# Print the summary of the regression model
summary(model1)

# To check for statistical significance, look at the p-values in the summary output


