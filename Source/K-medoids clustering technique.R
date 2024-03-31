# Load the required library for clustering
library(fpc)  # This library provides the pam function for k-medoids clustering

# Read the CSV file
data <- read.csv("C:/Users/gudiv/Downloads/credit_card_customer_data.csv")

# Assuming your dataset is named 'data', you can use the following column names to reference the data:

# Select the columns for clustering
selected_columns <- data[, c("Avg_Credit_Limit", "Total_Credit_Cards", "Total_visits_bank", "Total_visits_online", "Total_calls_made")]

# Perform k-medoids clustering with, for example, 3 clusters using the pam function
kmedoids_result <- pam(selected_columns, k = 3)

# View the cluster medoids
kmedoids_result$medoids

# View the cluster assignments
kmedoids_result$clustering

# Plot the clusters
plot(selected_columns, col = kmedoids_result$clustering)
points(kmedoids_result$medoids, col = 1:3, pch = 8, cex = 2)
