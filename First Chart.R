library("dplyr")
library("ggplot2")

Mental_Health_Dataset <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-Kdial17/main/Mental-Health-With-College-Students.csv")

ggplot(data = Mental_Health_Dataset, aes(x = Relationships, y = SWLS_1,SWLS_2,SWLS_3,SWLS_4,SWLS_5,SWLS_G)) +
  geom_col(color = "blue", shape = 10, size = 1) +
  labs(x = "Relationship Status", y = "Life Satisfaction", title = "Relationship between Relationship Status and Life Satisfaction During the 4th Wave of the Pandemic")
#This chart depicts the relationship between relationship status and self-prescribed overall life satisfaction on a ranking from 1-10 with 1 being the lowest score of overall life satisfaction and 10 being the highest. 
#The Y-Axis displays the total values based on the survey samples collected(A measure of 1500 means that a sum score of 1500 occurred for that category based on the rating responses given).
#From this visual representation, we can see that there is a correlation between relationship status and life satisfaction. Individuals currently in a couple relationship rated their life satisfaction much higher than those that were single and were interviewed.