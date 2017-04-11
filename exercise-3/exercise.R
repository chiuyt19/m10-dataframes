# Exercise 3: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data("USPersonalExpenditure")

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(USPersonalExpenditure)
# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme
data.frame(USPersonalExpenditure)
# Create a new variable by passing the USPersonalExpenditure to the data.frame function
US.pe<-data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(US.pe)

# Why are they so strange?


# What are the row names of your dataframe?
row.names(US.pe)

# Create a column `category` that is equal to your rownames
US.pe$category<-row.names(US.pe)

# How much money was spent on personal care in 1940?
US.pe["Personal Care","X1940"]

# How much money was spent on Food and Tobacco in 1960
US.pe["Food and Tobacco","X1960"]

# What was the highest expenditure category in 1960?
US.pe$category[US.pe$X1960==max(US.pe$X1960)]
### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year
highestSpend<-function(year){
  cat<-US.pe$category[US.pe[year]==max(US.pe[year])]
  return(cat)
}

# Using your function, determine the highest spending category of each year
highestSpend('X1940')
highestSpend('X1945')
highestSpend('X1950')
highestSpend('X1955')
highestSpend('X1960')

# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
