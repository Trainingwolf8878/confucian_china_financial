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
  weak_clan = c(0.0000361, 0.0000459, 0.000098, 0.0017986, 0.0056651, 0.0085099, 0.0081771, 0.0177023),
  strong_clan = c(0.0001435, 0.0001794, 0, 0.0026455, 0.004478, 0.0060537, 0.0065316, 0.0132815)
)

#### sketch the graph use ggplot 2 ####

ggplot(df, aes(x = year)) +
  geom_line(aes(y = weak_clan), color = "blue", linetype = "solid", size = 1) +
  geom_line(aes(y = strong_clan), color = "red", linetype = "dashed", size = 1) +
  geom_label(aes(x = max(df$year), y = max(c(tail(df$weak_clan, 1), tail(df$strong_clan, 1)))),
             label = "Weak Clan", color = "blue", hjust = 0, vjust = 1) +
  geom_label(aes(x = max(df$year), y = min(c(tail(df$weak_clan, 1), tail(df$strong_clan, 1)))),
             label = "Strong Clan", color = "red", hjust = 0, vjust = 0) +
  labs(title = "Line Plot of Weak Clan and Strong Clan over Years",
       x = "Year",
       y = "Values") +
  scale_y_continuous(limits = c(0, 0.02)) +
  theme_minimal()

#### Save the image ####

ggsave("Figure 2a.png")
