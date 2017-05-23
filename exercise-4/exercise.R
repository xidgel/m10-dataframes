# Exercise 4: Gates Foundation Educational Grants

# Read data into a variable called `grants` using the `read.csv` function
# Make sure *not* to read the strings as factors
script.dir <- dirname(sys.frame(1)$ofile)
grants <- read.csv(file='C:\\Users\\Jon\\Documents\\Projects\\m10-dataframes\\exercise-4\\data\\gates_money.csv', stringsAsFactors = FALSE)

# Use the View function to look at your data
View(grants)

# Create a variable `spending` as the `total_amount` column of the dataset
spending <- grants$total_amount

# Confirm that your `spending` variable is a vector using the `is.vector` function
is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
org <- grants$organization

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
mean.grant.value <- mean(spending)
paste("The mean grant value was", mean.grant.value)

# What was the dollar amount of the largest grant?
max.grant.value <- max(spending)
paste("The max grant value was", max.grant.value)

# What was the dollar amount of the smallest grant?
min.grant.value <- min(spending)
paste("The min grant value was", min.grant.value)

# Which organization received the largest grant?
max.grant.org <- grants[grants$total_amount==max.grant.value,]$organization
paste(max.grant.org, "received the largest grant")

# Which organization received the smallest grant?
min.grant.org <- grants[grants$total_amount==min.grant.value,]$organization
paste(min.grant.org, "received the smallest grant")

# How many grants were awarded in 2010?
grants.2010 <- nrow(grants[grants$start_year==2010,])
paste("In 2010,", grants.2010, "were awarded")