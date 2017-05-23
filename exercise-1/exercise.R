# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored the first 4 games of last season
# Hint: (google "Seahawks scores 2016")
seahawks <- c(12L, 3L, 37L, 27L)

# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
opponents <- c(10L, 9L, 18L, 17L)

# Combine your two vectors into a dataframe
results <- data.frame(seahawks, opponents)

# Create a new column "diff" that is the difference in points
results$diff <- results$seahawks - results$opponents

# Create a new column "won" which is TRUE if the Seahawks wom
results$won <- results$diff > 0

# Create a vector of the opponents
opponent.names <- c('Miami', 'Los Angeles', 'San Francisco', 'NY Jets')

# Assign your dataframe rownames of their opponents
rownames(results) <- opponent.names
