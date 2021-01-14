library(tidyverse)

# Where you see `...` below, this is a cue to replace the dots with missing code.

# 2. loading data
setwd("D:/Users/James Clarke/Documents/GitHub/eda_fev1")
fev1_data <- read_csv("fev1.csv")

fev1_data$id <- factor(fev1_data$id)

# 3a. correlation

# for tidyverse users...
summarise(fev1_data, r = ...)
cor.test(fev1_data$age, fev1_data$FEV1)
plot(fev1_data$age, fev1_data$FEV1)
# but there are many ways to get this answer

# Answer: <discuss linear model assumption>

# 3b. make a scatter plot

ggplot(data = fev1_data, aes(x = age,
                       y = FEV1)) +
    geom_point() +
    xlab("Age (years)") + ylab("Forced Expiration Volume")

# Answer: <discuss linear model assumption>

# E3c. outliers

# hint: do groupwise calculation of r and then filter/subset 

## Answer: <why would r < 0?>

# 4a. how many?

# count how many times each id appears
counts <- ...
# hint: dplyr has a function to do this, or you can use data.table, aggregate, 
# or even a loop if you really needed to

# then count how many times each count appears
# could pre-calculate and do a geom_col() but geom_bar() does a count for us
ggplot(data = counts, aes(x = ...)) +  # hint: factor on x variable
    geom_bar() + ...

# 4b. each individual's change over time

# E4c. singletons

# E4d. facet on age

# 5. smooth trend

# E6. statistical model

# E7a. skimr

# E7b. GGally