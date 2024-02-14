#### Preamble ####
# Purpose : Set up the workspace that connect to github
# Author : Lin Dai
# Email : dailin20000730@gmail.com
# Date : 10 Feb 2024

#### Workspace setup ####

install.packages("usethis")
install.packages("gitcreds")

#### Library package ####

library(usethis)
library(gitcreds)

#### set up the github token ####

create_github_token()

#### paste down the token ####

gitcreds_set()