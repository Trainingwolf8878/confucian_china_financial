#### Preamble ####
# Purpose: Simulates the data of banks panel data.csv
# Author: Lin Dai
# Date: 10 February 2024
# Contact: dailin200007302gmail.com

#### Work space set up ####

install.packages("tidyverse")
install.packages("janitor")
setwd("/cloud/project/inputs/data/simulated_data")

#### load the package ####

library(tidyverse)
library(janitor)

#### Simulate data ####

set.seed(302)

simulated_interest_rates <- data.frame(
  "province" = runif(500, min = 1, max = 300),
  "year" = runif(500, min = 1912, max = 1936),
  "interestrate" = runif(500, min = 1, max = 30),
  "pop1776" = runif(500, min = 200, max = 240),
  "pop1820" = runif(500, min = 220, max = 250),
  "pop1851" = runif(500, min = 230, max = 270),
  "pop1880" = runif(500, min = 250, max = 290),
  "pop1910" = runif(500, min = 270, max = 310),
  "pop1393" = runif(500, min = 300, max = 330),
  "pop1580" = runif(500, min = 2000, max = 2300),
  "pop1630" = runif(500, min = 3000, max = 3200),
  "pop1680" = runif(500, min = 1300, max = 1900),
  "coastal_distance" = runif(500, min = 0, max = 15000),
  "river_distance" = runif(500, min = 0, max = 10000),
  "river_length" = runif(500, min = 10, max = 4000),
  "area_sqm" = runif(500, min = 5000, max = 30000),
  "genealogy1911" = runif(500, min = 0, max = 500),
  "civilwars" = runif(500, min = 0, max = 3),
  "chambermemberp1913" = runif(500, min = 0, max = 4000),
  "protestantmissinaries1920" = runif(500, min = 200, max = 500),
  "disttreaty1897" = runif(500, min = 100, max = 300),
  "firms1911" = runif(500, min = 0, max = 100),
  "telegraphp_1911" = runif(500, min = 0, max = 200),
  "postofficep_1911" = runif(500, min = 0, max = 200),
  "distshort" = runif(500, min = 0, max = 1000),
  "east3" = runif(500, min = 0, max = 200)
)

#### Save the file of simulate data ####

write.csv(simulated_interest_rates, file = "simulated_interest_rates.csv", row.names = FALSE)
