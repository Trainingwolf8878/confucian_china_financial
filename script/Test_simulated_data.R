#### Preamble ####
# Purpose: test the data of clean_simulated_bank_panel.csv and clean_simulated_interest_rates.csv
# Author: Lin Dai
# Date: 10 February 2024
# Contact: dailin200007302gmail.com

#### Set up work space ####

library(readr)

#### set the data with the name ####

clean_simulated_bank_panel <- read_csv("clean_simulated_bank_panel.csv")
View(clean_simulated_bank_panel)
data1 <- clean_simulated_bank_panel

clean_simulated_interest_rates <- read_csv("clean_simulated_interest_rates.csv")
View(clean_simulated_interest_rates)
data2 <- clean_simulated_interest_rates

#### set the variable together ####

variable1 <- data1$pop1393
variable2 <- data1$pop1580
variable3 <- data1$pop1630
variable4 <- data1$pop1680
variable5 <- data1$pop1776
variable6 <- data1$pop1820
variable7 <- data1$pop1851
variable8 <- data1$pop1880
variable9 <- data1$pop1910
variable10 <- data1$pop1920
variable11 <- data1$privatebanks3y5
variable12 <- data2$pop1776
variable13 <- data2$pop1820
variable14 <- data2$pop1851
variable15 <- data2$pop1880
variable16 <- data2$pop1910
variable17 <- data2$pop1393
variable18 <- data2$pop1580
variable19 <- data2$pop1630
variable20 <- data2$pop1680
variable21 <- data2$genealogy1911

variable_list <- list(variable18, variable19, variable20, variable21, variable11, variable12, variable13, variable14, variable15, variable16, variable17,variable10, variable9, variable8, variable7, variable6, variable5, variable4, variable3, variable2, variable1)

#### Test the variable is integer or not ####

all_integers <- sapply(variable_list, function(var) all (var == as.integer(var)))

if (all(all_integers)) {
  print("yes")
} else {
  print("no")
}
