# Load the required library for clustering
library(cluster)  # This library provides the diana function for DIANA clustering

# Read the CSV file
data <- read.csv("C:/Users/gudiv/Downloads/credit_card_customer_data.csv")

# Assuming your dataset is named 'data', you can use the following column names to reference the data:

# Select the columns for clustering
selected_columns <- data[, c("Avg_Credit_Limit", "Total_Credit_Cards", "Total_visits_bank", "Total_visits_online", "Total_calls_made")]

# Perform DIANA clustering with the diana function
diana_result <- diana(selected_columns)

# View the cluster assignments
cluster_assignments <- cutree(diana_result, k = 3)  # Assuming 3 clusters

# Print cluster assignments
print(cluster_assignments)

# Plot the clusters
plot(diana_result, which.plot = 2, cex = 0.6, hang = -1, main = "Dendrogram for DIANA Clustering")
