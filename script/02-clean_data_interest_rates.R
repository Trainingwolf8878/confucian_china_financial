#### Preamble ####
# Purpose : clean the data of interest_rates.csv
# Author : Lin Dai
# Email : dailin20000730@gmail.com
# Date : 10 Feb 2024

#### Install the package ####

install.packages("dplyr")

#### Set up workspace ####

library(dplyr)
library(readr)
setwd("/cloud/project/inputs/data/cleaned_data")

#### Read the data ####

Interest_rates <- read_csv("/cloud/project/inputs/data/raw_data/Interest rates.csv")
View(Interest_rates)
data <- Interest_rates

#### missing data imputation ####

data <- na.omit(data)

#### Handling Missing Values ####

data <- data[data$interestrate < 30, ]

#### Handling Duplicate Values ####

data <- unique(data)

#### Handling Outliers ####

data$pop1776 <- round(data$pop1776)
data$pop1820 <- round(data$pop1820)
data$pop1851 <- round(data$pop1851)
data$pop1880 <- round(data$pop1880)
data$pop1910 <- round(data$pop1910)
data$pop1393 <- round(data$pop1393)
data$pop1580 <- round(data$pop1580)
data$pop1630 <- round(data$pop1630)
data$pop1680 <- round(data$pop1680)
data$genealogy1911 <- round(data$genealogy1911)

#### state the variable and make them together ####

variable1 <- data$pop1776
variable2 <- data$pop1820
variable3 <- data$pop1851
variable4 <- data$pop1880
variable5 <- data$pop1910
variable6 <- data$pop1393
variable7 <- data$pop1580
variable8 <- data$pop1630
variable9 <- data$pop1680
variable10 <- data$genealogy1911

variable_list <- list(variable10, variable9, variable8, variable7, variable6, variable5, variable4, variable3, variable2, variable1)

#### Check all variable is integer or not ####

all_integers <- sapply(variable_list, function(var) all (var == as.integer(var)))

if (all(all_integers)) {
  print("yes")
} else {
  print("no")
}

#### Delete the variable that doesn't need and repeated ####

data <- data %>% select(-id, -borrower, -duration, -loanamount, -urban, -jinshi, -treatyports, -provcapital, -pref_id, -urban1910, -x_longitude_l, -y_latitude_l)

#### Download the data ####

write.csv(data, file = "clean_interest_rates.csv", row.names = FALSE)
