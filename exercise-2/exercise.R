# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100)
employee <- paste('Employee', 1:100)

# Create a vector of 2014 salaries using the runif function
salary.2014 <- runif(n=100, min=50000.00, max=100000.00)

# Create a vector of 2015 salaries that are typically higher than the 2014 salaires (use runif again)
salary.2015 <- runif(n=100, min=52000.00, max=105000.00)

# Create a data.frame 'salaries' by combining the vectors you just made
salaries <- data.frame(employee, salary.2014, salary.2015)

# Create a column 'raise' that stores the size of the raise between 2014 and 2015
salaries$raise <- salaries$salary.2015 - salaries$salary.2014

# Create a column 'got.raise' that is TRUE if the person got a raise
salaries$got.raise <- salaries$raise > 0

# Retrieve values from your data frame to answer the following questions:

# What was the 2015 salary of employee 57
paste("The salary of employee #5 was", salaries$salary.2015[5])

# How many employees got a raise?
paste(nrow(salaries[salaries$got.raise==TRUE,]), "employees got a raise")

# What was the value of the highest raise?
paste("The value of the highest raise was", max(salaries$raise))

# What was the name of the employee who recieved the highest raise?
paste(salaries[salaries$raise==max(salaries$raise),]$employee, "got the largest raise.")

# What was the largest decrease in salaries between the two years?
paste("The value of the largest decrease was", min(salaries$raise))

# What was the name of the employee who recieved largest decrease in salary?
paste(salaries[salaries$raise==min(salaries$raise),]$employee, "got the largest decrease.")

# What was the average salary increase?
paste("The average salary increase was", mean(salaries$raise))

### Bonus ###

# Write a .csv file of your salaries to your working directory
write.csv(salaries, file="salaries.csv")

# For people who did not get a raise, how much money did they lose?
paste("The average decrease was", mean(salaries[salaries$got.raise==FALSE,]$raise))

# Is that what you expected them to lose?

### Double Bonus (no answer given) ###

# Repeat the above experiment 100 times, tracking the loss each time.
# Does the average loss equal what you expect?
# What about 10,000 times?
