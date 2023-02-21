install.packages("tidyverse", repos = "http://cran.us.r-project.org")
library("dplyr")

Mental_Health_Dataset <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-Kdial17/main/Mental-Health-With-College-Students.csv")

ggplot(data = Mental_Health_Dataset, aes(x = Age, y = SWLS_1,SWLS_2,SWLS_3,SWLS_4,SWLS_5,SWLS_G)) +
  geom_col(color = "blue", shape = 16, size = 1) +
  labs(x = "Age", y = "Life Satisfaction",  title = "Relationship between Age and Life Satisfaction During the 4th Wave of the Pandemic")
#This chart depicts the relationship between age and self-prescribed overall life satisfaction on a ranking from -10 with 1 being the lowest score of overall life satisfaction and 10 being the highest.  
#We chose these two variables because we are measuring the affects of multiple factors as they impact life satisfaction. Age is a particular interesting variable because maturity and needs for social interaction are different depending on the time of life of many individuals and may correlate to life satisfaction and happiness. 
#From the distribution of scores we can see that ages 18-23 recorded the greatest sum of ratings as compared to any other age range.
#This data may be skewed for a number of reasons, but one may be that that more individuals in the 18-23 range were interviewed which allowed for a much greater sum of total rankings of life satisfaction.