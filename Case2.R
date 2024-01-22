# Run a linear regression of c-store sales against TV and radio
model1 <- lm(Sales ~ TV + Radio, data = sales)

# Print the summary of the regression model
summary_model1 <- summary(model1)

# Extract R-squared value
r_squared <- summary_model1$r.squared

# A
library(ggplot2)

# Scatter plot for Sales vs. TV with adjusted x-axis
ggplot(sales, aes(x = TV, y = Sales)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  scale_x_continuous(limits = c(0, 300)) +
  labs(title = "Sales vs. TV Advertising", x = "TV Advertising (GRPs)", y = "C-Store Sales")
# Scatter plot for Sales vs. Radio with regression line
ggplot(sales, aes(x = Radio, y = Sales)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  scale_x_continuous(limits = c(0, 300)) +
  labs(title = "Sales vs. Radio Advertising", x = "Radio Advertising (GRPs)", y = "C-Store Sales")

# B

# Calculating residuals and fitted values
residuals_model1 <- resid(model1)
fitted_model1 <- fitted(model1)
# Create a data frame for plotting residuals
plot_data <- data.frame(Fitted = fitted_model1, Residuals = residuals_model1)

# Residual plot with R-squared value
ggplot(plot_data, aes(x = Fitted, y = Residuals)) +
  geom_point() +
  geom_hline(yintercept = 0, linetype = "dashed") +
  annotate("text", x = Inf, y = Inf, label = paste("R-squared =", round(r_squared, 2)), hjust = 1.1, vjust = 1.1) +
  labs(title = paste("Residual Plot for Sales vs. TV and Radio Advertising\nR-squared:", round(r_squared, 2)), 
       x = "Fitted Values of Sales", 
       y = "Residuals")