colSums(is.na(data))
head(data)
table(data$rainfall)
# Example dataset
data <- mtcars

# Convert to factors for demonstration (so we can count categories)
data$cyl <- as.factor(data$cyl)
data$gear <- as.factor(data$gear)
data$carb <- as.factor(data$carb)

# Select the variables you want frequencies for
vars <- c("cyl", "gear", "carb")

# Loop through variables and print frequencies
for (i in vars) {
  cat("\nFrequencies for", v, ":\n")
  print(table(data[[v]]))
}
#########################################
library(dplyr)

mtcars %>%
  # Step 1: select only the variables of interest
  select(cyl, gear, am, mpg) %>%
  
  # Step 2: filter rows (example: cars with mpg > 20)
  filter(mpg > 20) %>%
  
  # Step 3: calculate frequencies
  count(cyl, gear, am)

#############################################
#frequency of more than one condition
#############################################
library(tidyverse)
mtcars %>% count(cyl, gear)
#############################################
# Variables you want frequencies for
names(mtcars)
vars <- c("mpg", "cyl", "disp", "hp", "drat", 
          "wt", "qsec", "vs", "am", "gear", "carb")

# Compute frequencies for each variable
freq_list <- lapply(vars, function(v) {
  as.data.frame(table(data[[v]]))
})

# Name each frequency table by variable
names(freq_list) <- vars
freq_list[vars]

########################################################



# Exclude mpg and disp
vars <- setdiff(names(data), c("mpg", "disp"))

# Apply frequency check
freq_list <- lapply(vars, function(v) {
  as.data.frame(table(data[[v]]))
})
names(freq_list) <- vars
$#################################
#ross tab Frequencies
data <- mtcars

# Convert cyl (number of cylinders) to character
data$cyl_char <- as.character(data$cyl)

# Use table on the character variable
table(data$cyl_char)

####################################
#exploratory data
# Structure of the dataset
str(mtcars)

# First few rows
head(mtcars)

# Summary statistics
summary(mtcars)
# Mean, median, sd for mpg
mean(mtcars$mpg)
median(mtcars$mpg)
sd(mtcars$mpg)

# Apply to all numeric variables
sapply(mtcars, mean)
sapply(mtcars, sd)
#nstall.packages("skimr")
library(skimr)
skim(mtcars)
#p0 and p100 → tell you the range (min and max).

#25, p50, p75 → describe the distribution’s shape and central tendency.




