# Load the required library for clustering
library(cluster)

# Read the CSV file
data <- read.csv("C:/Users/gudiv/Downloads/credit_card_customer_data.csv")

# Assuming your dataset is named 'data', you can use the following column names to reference the data:

# Select the columns for clustering
selected_columns <- data[, c("Avg_Credit_Limit", "Total_Credit_Cards", "Total_visits_bank", "Total_visits_online", "Total_calls_made")]

# Perform hierarchical clustering and plot the dendrogram
distance_matrix <- dist(selected_columns)
hierarchical_cluster <- hclust(distance_matrix, method = "ward.D2")
plot(hierarchical_cluster, cex = 0.6, hang = -1, main = "Dendrogram for Credit Card Customer Data")

