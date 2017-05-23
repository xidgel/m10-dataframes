# Exercise 5: Popular Baby Names Over Time

# Read in the female baby names csv file into a variable called `female.names`
# Make sure *not* to read the strings as factors (this might take a minute)
female.names <- read.csv("C:\\Users\\Jon\\Documents\\Projects\\m10-dataframes\\exercise-5\\data\\female_names.csv", stringsAsFactors = FALSE)

# Create a vector `year` as the year column of the dataset
year <- female.names$year

# Create a vector `name` as the name column of the datset
name <- female.names$name

# Create a vector `prop` as the proportion column of the dataset
prop <- female.names$prop

# Create a vector `names.2013` as your name vector where your year vector is 2013
names.2013 <- female.names[female.names$year==2013,]$name

# Create a vector `prop.2013` as the your prop vector where your year vecctor is 2013
prop.2013 <- female.names[female.names$year==2013,]$prop

# What was the most popular female name in 2013?
max.prop.2013 <- max(prop.2013)
most.popular.name.2013 <- female.names[female.names$prop==max.prop.2013,]$name
paste("The most popular name in 2013 was", most.popular.name.2013)

# Write a funciton `MostPopular` that takes in a value `my.year`, and returns
# a sentence stating the most popular name in that year. 
MostPopular <- function(year) {
  names.year <- female.names[female.names$year==year,]
  max.prop.year <- max(names.year$prop)
  max.name <- names.year[names.year$prop==max.prop.year,]$name
  return(max.name)
}

# What was the most popular female name in 1994?
paste("The most popular name in 1994 was", MostPopular(1994))

### Bonus ###

# Write a function `HowPopular` that takes in a name and a year, and returns
# a sentence with how popular that name was in that year
HowPopular <- function(name, year) {
  names.year <- female.names[female.names$year==year,]
  prop <- names.year[names.year$name==name,]$prop
  return(prop)
}

# How popular was the name 'Laura' in 1995
paste("The popularity of Laura in 1995 was", HowPopular("Laura", 1995))
