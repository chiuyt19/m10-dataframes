# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks scored the first 4 games of last season
# Hint: (google "Seahawks scores 2016")
seahawk<-c(12,3,37,27)
# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
against<-c(10,9,18,17)

# Combine your two vectors into a dataframe
season<-data.frame(seahawk,against)


# Create a new column "diff" that is the difference in points
dif<-abs(seahawk-against)
season$diff<-dif

# Create a new column "won" which is TRUE if the Seahawks wom
won<-seahawk>against
season$won<-won

# Create a vector of the opponents
oppponent<-c('dolphins','rams','49er','jets')

# Assign your dataframe rownames of their opponents
row.names(season)<-oppponent
