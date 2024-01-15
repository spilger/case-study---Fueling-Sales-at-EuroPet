# Include temperature in the regression
model2 <- lm(Sales ~ TV + Radio + Temp, data = sales)

# Print the summary of the new regression model
summary(model2)

# Compare the two models and check for the significance of Temperature
