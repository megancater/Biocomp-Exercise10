# Megan Cater
# mcater
# November 22, 2021
# Exercise 10
# Question 2

# Loads packages
library(ggplot2)
library(cowplot)

# Reads in data
data <- read.table("data.txt", header = TRUE, sep = ",", stringsAsFactors = FALSE)
dim(data)
head(data)

# Barplot of the means of the different regions
ggplot(data = data, aes(region, observations, fill = region)) + 
  geom_bar(position = "dodge", stat = "summary", fun = "mean")

# Scatter plot of all of the observations
ggplot(data = data, aes(region, observations)) +
  geom_jitter(aes(colour = region))
  
# Do the bar and scatter plots tell you different stories? Why?

# Yes, they do. The bar plot shows that the average observations
# are about the same, which makes it appear as though the data for
# each region is almost identical. However, the scatter plot shows
# that the data is much different within each region, even though
# they average out to about the same number. Though the bar plot
# only shows the average number of observations per region, the
# scatter plot shows the actual data points and their range.