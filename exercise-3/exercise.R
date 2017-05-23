# Exercise 3: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data("USPersonalExpenditure")

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
paste("Is this a data frame?", is.data.frame(USPersonalExpenditure))

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme

# Create a new variable by passing the USPersonalExpenditure to the data.frame function
uspe <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
names(uspe)

# Why are they so strange?


# What are the row names of your dataframe?
rownames(uspe)

# Create a column `category` that is equal to your rownames
uspe$category <- rownames(uspe)

# How much money was spent on personal care in 1940?
paste(uspe["Personal Care", "X1940"], "was spent on personal care in 1940.")

# How much money was spent on Food and Tobacco in 1960
paste(uspe["Food and Tobacco", "X1960"], "was spent on food and tobacco in 1960.")

# What was the highest expenditure category in 1960?
paste(uspe$category[uspe$X1960==max(uspe$X1960)], "was the highest category of spending in 1960")

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year
MaxCategory <- function(year) {
  xyear <- paste0("X", year)
  return(uspe$category[uspe[[xyear]]==max(uspe[[xyear]])])
}

# Using your function, determine the highest spending category of each year
MaxCategory(1940)
MaxCategory(1945)
MaxCategory(1950)
MaxCategory(1955)
MaxCategory(1960)

# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
max.category <- as.list(sapply(seq(1940, 1960, 5), MaxCategory))