# Load the required library for clustering
library(fpc)  # This library provides the dbscan function for DBSCAN clustering

# Read the CSV file
data <- read.csv("C:/Users/gudiv/Downloads/credit_card_customer_data.csv")

# Assuming your dataset is named 'data', you can use the following column names to reference the data:

# Select the columns for clustering
selected_columns <- data[, c("Avg_Credit_Limit", "Total_Credit_Cards", "Total_visits_bank", "Total_visits_online", "Total_calls_made")]

# Perform DBSCAN clustering with the dbscan function
dbscan_result <- dbscan(selected_columns, eps = 0.5, MinPts = 5)

# View the cluster assignments
dbscan_result$cluster

# Plot the clusters
plot(selected_columns, col = dbscan_result$cluster + 1)
