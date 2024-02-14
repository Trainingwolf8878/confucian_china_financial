#### Preamble ####
# Purpose : clean the data of simulated_interest_rates.csv
# Author : Lin Dai
# Email : dailin20000730@gmail.com
# Date : 10 Feb 2024

#### Install the package ####

install.packages("dplyr")

#### Set up workspace ####

library(dplyr)
library(readr)
setwd("/cloud/project/inputs/data/simulated_data")

#### Read the data ####

simulated_interest_rates <- read_csv("/cloud/project/inputs/data/simulated_data/simulated_interest_rates.csv")
View(simulated_interest_rates)
data <- simulated_interest_rates

#### missing data imputation ####

data <- na.omit(data)

#### Handling Missing Values ####

data <- data[data$interestrate < 30, ]

#### Handling Duplicate Values ####

data <- unique(data)

#### Handling Outliers ####

data$province <- round(data$province)
data$year <- round(data$year)
data$civilwars <- round(data$civilwars)
data$genealogy1911 <- round(data$genealogy1911)
data$chambermemberp1913 <- round(data$chambermemberp1913)
data$protestantmissinaries1920 <- round(data$protestantmissinaries1920)
data$disttreaty1897 <- round(data$disttreaty1897)
data$firms1911 <- round(data$firms1911)
data$telegraphp_1911 <- round(data$telegraphp_1911)
data$postofficep_1911 <- round(data$postofficep_1911)
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

#### Save the data ####

write.csv(data, file = "clean_simulated_interest_rates.csv", row.names = FALSE)

