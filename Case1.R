# Calculate minimum, average, and maximum for Sales, Fuel Volume, TV, and Radio
summary_stats <- function(data, variable) {
  min_val <- min(data[[variable]], na.rm = TRUE)
  avg_val <- mean(data[[variable]], na.rm = TRUE)
  max_val <- max(data[[variable]], na.rm = TRUE)
  return(c(min = min_val, average = avg_val, max = max_val))
}

# Apply the function to each variable and store the results
stats_sales <- summary_stats(sales, "Sales")
stats_fuel_volume <- summary_stats(sales, "Fuelvolume")
stats_tv <- summary_stats(sales, "TV")
stats_radio <- summary_stats(sales, "Radio")

# Print the results
print(stats_sales)
print(stats_fuel_volume)
print(stats_tv)
print(stats_radio)

