# Megan Cater
# mcater
# November 22, 2021
# Exercise 10
# Question 1

# Loads packages
library(ggplot2)
library(cowplot)

# Reads in data about reading media (traditional vs digital)
media <- read.table("media.txt", header = TRUE, sep = "\t", stringsAsFactors = FALSE)
dim(media)
head(media)

# Plots data in scatter plot
ggplot(data = media, 
       aes(x = Digital, y = Traditional)) + 
  geom_point() +
  
  # Adds year label to points
  geom_text(aes(label = Year),hjust = 0, vjust = 0) +
  
  # Adds title and axis labels
  ggtitle("Digital vs Traditional Media Read Per Day") +
  xlab("Digital media read per day (minutes)") + 
  ylab("Traditional media read per day (minutes)") +
  
  # Adds linear line to scatter plot
  geom_smooth(formula = y ~ x, method = "lm") +
  
  # Theme
  theme_classic()
