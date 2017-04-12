# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100)
employees <- c(paste("Employee", 1:100))

# Create a vector of 2014 salaries using the runif function
salaries2014 <- runif(100, 45000, 55000)

# Create a vector of 2015 salaries that are typically higher than the 2014 salaires (use runif again)
salaries2015 <- runif(100, 51000, 61000)

# Create a data.frame 'salaries' by combining the vectors you just made
salaries <- data.frame(employees, salaries2014, salaries2015)

# Create a column 'raise' that stores the size of the raise between 2014 and 2015
salaries[['raise']] <- salaries2015 - salaries2014

# Create a column 'got.raise' that is TRUE if the person got a raise
salaries[['got.raise']] <- salaries[['raise']] > 0

# Retrieve values from your data frame to answer the following questions:

# What was the 2015 salary of employee 57
employee57.salary2015 <- salaries[57, 'salaries2015']

# How many employees got a raise?
raise.count <- sum(salaries[['got.raise']])

# What was the value of the highest raise?
highest.raise <- max(salaries$raise)

# What was the name of the employee who recieved the highest raise?
highest.raise.employee <- rownames(salaries)[salaries$raise == highest.raise]
# OR highest.raise.employee <- salaries[salaries$raise == highest.raise,'employees']

# What was the largest decrease in salaries between the two years?
largest.decrease <- min(salaries$raise)

# What was the name of the employee who recieved largest decrease in salary?
largest.decrease.employee <- rownames(salaries)[salaries$raise == largest.decrease]
# Or: 

# What was the average salary increase?
avg.salary.increase <- mean(salaries$raise)

### Bonus ###

# Write a .csv file of your salaries to your working directory
write.csv(file = "salaries.csv", x = salaries)

# For people who did not get a raise, how much money did they lose?
avg.salary.decrease <- mean(salaries$raise[salaries$got.raise == FALSE])

# Is that what you expected them to lose?

### Double Bonus (no answer given) ###

# Repeat the above experiment 100 times, tracking the loss each time.
# Does the average loss equal what you expect?
# What about 10,000 times?
