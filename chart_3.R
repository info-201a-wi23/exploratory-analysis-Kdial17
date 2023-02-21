library(ggplot2)
library(dplyr)
library(scales)

mh_data <- read.csv("Mental-Health-With-College-Students.csv", stringsAsFactors = FALSE)

ggplot(data = mh_data) +
  geom_smooth(aes(x = FOCV, y = GAD_G)) +
  labs(x = "Fear of Covid (FoCV-19S Score)", 
       y = "Anxiety Severity (GAD_7 Score)", 
       title = "Anxiety Rates Increasing as the Fear of Covid Increases") +
  scale_y_continuous(breaks = seq(0, 21, 3)) +
  scale_x_continuous(breaks = seq(0, 35, 5))
