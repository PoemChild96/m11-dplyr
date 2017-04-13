# Exercise 1: Data Frame Practice

# Install devtools package: allows installations from GitHub
install.packages('devtools')

# Install "fueleconomy" package from GitHub
devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package
library(fueleconomy)

# You should have have access to the `vehicles` data.frame
View(vehicles)

# Create a data.frame of vehicles from 1997
vehicles.1997 <- subset(vehicles, year == 1997)
#vehicles.1997 <- vehicles[vehicles$year == 1997, ]
#DATAFRAME_NAME[ARG1, ARG2] 

# Use the `unique` function to verify that there is only 1 value in the `year` column of your new data.frame
is.unique = length(unique(vehicles.1997$year))

# Create a data.frame of 2-Wheel Drive vehicles that get more than 20 miles/gallon in the city
cool.vehicles <- vehicles[vehicles$drive == '2-Wheel Drive' & vehicles$cty > 20, ]
View(cool.vehicles)

# Of those vehicles, what is the vehicle ID of the vehicle with the worst hwy mpg?
worst.cool.vehicles <- cool.vehicles$id[cool.vehicles$hwy == min(cool.vehicles$hwy)]

# Write a function that takes a `year` and a `make` as parameters, and returns 
# The vehicle that gets the most hwy miles/gallon of vehicles of that make in that year
MostMade <- function(y, m) {
  #result <- vehicles[vehicles$year == y & vehicles&make == m & result$hwy == max(result$hwy), ]
  #do first two, return (last filter)
    
    
  result <- subset(vehicles, year == y)
  result <- subset(result, make == m) 
  result <- result$id[result$hwy == max(result$hwy)]
  result <- vehicles[vehicles$id == result, ]
  return (result)
}

# What was the most efficient honda model of 1995?
MostMade(1995, "Honda")

