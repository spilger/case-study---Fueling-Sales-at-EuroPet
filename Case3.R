#From question 2
# Create model 1 agin # Run a linear regression of c-store sales against TV and radio
model1 <- lm(Sales ~ TV + Radio, data = sales)

# Print the summary of the regression model
summary(model1)

# New question3 model
# Include temperature in the regression
model2 <- lm(Sales ~ TV + Radio + Temp, data = sales)

# Print the summary of the new regression model
summary(model2)

# A
# Scatter plot for Sales vs. Temperature
ggplot(sales, aes(x = Temp, y = Sales)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "green") +
  labs(title = "Sales vs. Temperature", x = "Average High Temperature", y = "C-Store Sales")

# B

# Calculating residuals for both models
residuals_model1 <- resid(model1)
residuals_model2 <- resid(model2)

# Residual plot for model1
plot_data_model1 <- data.frame(Fitted = fitted(model1), Residuals = residuals_model1)
ggplot(plot_data_model1, aes(x = Fitted, y = Residuals)) +
  geom_point() +
  geom_hline(yintercept = 0, linetype = "dashed") +
  labs(title = "Residual Plot for Model without Temperature", x = "Fitted Sales", y = "Residuals")

# Residual plot for model2
plot_data_model2 <- data.frame(Fitted = fitted(model2), Residuals = residuals_model2)
ggplot(plot_data_model2, aes(x = Fitted, y = Residuals)) +
  geom_point() +
  geom_hline(yintercept = 0, linetype = "dashed") +
  labs(title = "Residual Plot for Model with Temperature", x = "Fitted Sales", y = "Residuals")

# C

library(coefplot)

# Coefficient plot for model2 without intercept and with adjusted y-axis
coefplot(model2, intercept = FALSE)
