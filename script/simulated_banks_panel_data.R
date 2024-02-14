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

simulated_banks_panel_data <- data.frame(
  "prefid" = runif(500, min = 1, max = 300),
  "area_sqm" = rnorm(500, mean = 65000, sd = 3),
  "pop1393" = runif(500, min = 30, max = 300),
  "pop1580" = runif(500, min = 50, max = 400),
  "pop1630" = runif(500, min = 70, max = 600),
  "pop1680" = runif(500, min = 90, max = 800),
  "pop1776" = runif(500, min = 120, max = 900),
  "pop1820" = runif(500, min = 140, max = 1030),
  "pop1851" = runif(500, min = 160, max = 1050),
  "pop1880" = runif(500, min = 180, max = 1140),
  "pop1910" = runif(500, min = 200, max = 1250),
  "pop1920" = runif(500, min = 230, max = 1300),
  "disttreaty1897" = runif(500, min = 0, max = 800),
  "distshort3" = runif(500, min = 0, max = 700),
  "coa_dist2" = runif(500, min = 0, max = 1200),
  "riv_dist2" = runif(500, min = 0, max = 1200),
  "privatebanks3y5" = runif(500, min = 0, max = 300),
  "genalogy1896_prefmatch" = runif(500, min = 0, max = 700)
)

#### Save the file of simulate data ####

write.csv(simulated_banks_panel_data, file = "simulated_banks_panel_data.csv", row.names = FALSE)
