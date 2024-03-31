# Load the required library for clustering
library(cluster)  # This library provides the clara function for CLARA clustering

# Read the CSV file
data <- read.csv("C:/Users/gudiv/Downloads/credit_card_customer_data.csv")

# Assuming your dataset is named 'data', you can use the following column names to reference the data:

# Select the columns for clustering
selected_columns <- data[, c("Avg_Credit_Limit", "Total_Credit_Cards", "Total_visits_bank", "Total_visits_online", "Total_calls_made")]

# Perform CLARA clustering with the clara function
clara_result <- clara(selected_columns, k = 3, samples = 5)

# View the cluster assignments
clara_result$clustering

# View the cluster medoids
clara_result$medoids

# Plot the clusters
plot(selected_columns, col = clara_result$clustering)
points(clara_result$medoids, col = 1:3, pch = 8, cex = 2)


