#### Preamble ####
# Purpose : analyze the csv file and clean data
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

#### missing data imputation ####

data <- na.omit(data)

#### Handling Missing Values ####

data <- data[data$height < 200, ]

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

data

#### Delete the variable that doesn't need and repeated ####

data <- data %>% select(-pref_id, -x_longitude, -y_latitude, -provcapital, -east3, -year5)

#### Download the data ####

write.csv(data, file = "clean_bank.csv", row.names = FALSE)
