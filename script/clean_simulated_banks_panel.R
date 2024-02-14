#### Preamble ####
# Purpose : clean the data of simulated_banks_panel_data.csv
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

simulated_banks_panel_data <- read_csv("simulated_banks_panel_data.csv")
View(simulated_banks_panel_data)
data <- simulated_banks_panel_data

#### missing data imputation ####

data <- na.omit(data)

#### Handling Duplicate Values ####

data <- unique(data)

#### Handling Outliers ####

data$prefid <- round(data$prefid)
data$privatebanks3y5 <- round(data$privatebanks3y5)
data$genalogy1896_prefmatch <- round(data$genalogy1896_prefmatch)
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

#### Save the data ####

write.csv(data, file = "clean_simulated_bank_panel.csv", row.names = FALSE)

