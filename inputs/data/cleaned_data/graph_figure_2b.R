#### Preamble ####
# Purpose: make the graph 1 base on the figure 2.csv
# Author: Lin Dai
# Date: 10 February 2024
# Contact: dailin200007302gmail.com

#### Work space set up ####

install.packages("ggplot2")
library(ggplot2)
setwd("/cloud/project/outputs/graphs")

#### define the x-axis and y-axis ####

df <- data.frame(
  year = c(1900, 1905, 1910, 1915, 1920, 1925, 1930, 1935),
  weak_clan = c(0.000059, 0.0000751, 0.0001603, 0.0026916, 0.0080621, 0.0128102, 0.0124098, 0.0247112),
  strong_clan = c(0.0001648, 0.000206, 0, 0.0027787, 0.004246, 0.0062964, 0.0067854, 0.0132093)
)

#### sketch the graph use ggplot 2 ####

ggplot(df, aes(x = year)) +
  geom_line(aes(y = weak_clan), color = "blue", linetype = "solid", size = 1) +
  geom_line(aes(y = strong_clan), color = "gray", linetype = "dashed", size = 1) +
  geom_label(aes(x = max(df$year), y = max(c(tail(df$weak_clan, 1), tail(df$strong_clan, 1)))),
             label = "Weak Clan", color = "blue", hjust = 0, vjust = 1) +
  geom_label(aes(x = max(df$year), y = min(c(tail(df$weak_clan, 1), tail(df$strong_clan, 1)))),
             label = "Strong Clan", color = "gray", hjust = 0, vjust = 0) +
  labs(title = "Line Plot of Weak Clan and Strong Clan over Years",
       x = "Year",
       y = "Values") +
  scale_y_continuous(limits = c(0, 0.02)) +
  theme_minimal()

#### Save the image ####

ggsave("figure2b.png")
