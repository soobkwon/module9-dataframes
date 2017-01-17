# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
num.of.points <- c(31, 25, 20, 6, 24, 27, 18, 3, 10, 10, 36, 20)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
num.of.points.against <- c(24, 31, 25, 6, 26, 17, 37, 9, 12, 9, 6, 36)

# Combine your two vectors into a dataframe
dataframe <- data.frame(num.of.points, num.of.points.against, stringsAsFactors=FALSE)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
dataframe$diff <- num.of.points - num.of.points.against

# Create a new column "won" which is TRUE if the Seahawks won
dataframe$won <- dataframe[diff > 0]

# Create a vector of the opponent names corresponding to the games played
opponent.names <- c("Patriots", "Bills", "Saints", "Cardinals", "Falcons", "Jets", "49ers", "Rams", "Dolphins", "Vikings", "Cardinals", "Falcons")

# Assign your dataframe rownames of their opponents


# View your data frame to see how it has changed!
View(dataframe)