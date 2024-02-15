#### Preamble ####
# Purpose : clean the data of banks_panel_data.csv
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

Banks_panel_data <- read_csv("inputs/data/Banks panel data.csv")
View(Banks_panel_data)
data <- Banks_panel_data

#### missing data imputation ####

data <- na.omit(data)

#### Handling Duplicate Values ####

data <- unique(data)

#### Handling Outliers ####

data$pop1393 <- round(data$pop1393)
data$pop1580 <- round(data$pop1580)
data$pop1630 <- round(data$pop1630)
data$pop1680 <- round(data$pop1680)
data$pop1776 <- round(data$pop1776)
data$pop1820 <- round(data$pop1820)
data$pop1851 <- round(data$pop1851)
data$pop1880 <- round(data$pop1880)
data$pop1910 <- round(data$pop1910)
data$pop1920 <- round(data$pop1920)
data$privatebanks3y5 <- round(data$privatebanks3y5)

#### state the variable and make them together ####

variable1 <- data$pop1393
variable2 <- data$pop1580
variable3 <- data$pop1630
variable4 <- data$pop1680
variable5 <- data$pop1776
variable6 <- data$pop1820
variable7 <- data$pop1851
variable8 <- data$pop1880
variable9 <- data$pop1910
variable10 <- data$pop1920
variable11 <- data$privatebanks3y5

variable_list <- list(variable11, variable10, variable9, variable8, variable7, variable6, variable5, variable4, variable3, variable2, variable1)

#### Check all variable is integer or not ####

all_integers <- sapply(variable_list, function(var) all (var == as.integer(var)))

if (all(all_integers)) {
  print("yes")
} else {
  print("no")
}

#### Delete the variable that doesn't need and repeated ####

data <- data %>% select(-pref_id, -x_longitude, -y_latitude, -provcapital, -east3, -year5)

#### Download the data ####

write.csv(data, file = "clean_bank.csv", row.names = FALSE)

