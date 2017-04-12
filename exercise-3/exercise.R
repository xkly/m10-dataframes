# Exercise 3: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data('USPersonalExpenditure')

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme

# Create a new variable by passing the USPersonalExpenditure to the data.frame function
expenditure <- data.frame(USPersonalExpenditure, stringsAsFactors = FALSE)

# What are the column names of your dataframe?
column.names <- colnames(USPersonalExpenditure)

# Why are they so strange?


# What are the row names of your dataframe?
row.names <- rownames(USPersonalExpenditure)

# Create a column `category` that is equal to your rownames
expenditure$category <- row.names

# How much money was spent on personal care in 1940?
personal.care.spent <- expenditure["Personal Care", "X1940"]

# How much money was spent on Food and Tobacco in 1960
food.tobacco.spent <- expenditure["Food and Tobacco", "X1960"]

# What was the highest expenditure category in 1960?
highest.value <- max(expenditure$X1960)
highest.expenditure <- rownames(expenditure)[expenditure$X1960 == highest.value]

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year

# Using your function, determine the highest spending category of each year


# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
