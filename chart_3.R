library(ggplot2)
library(dplyr)
library(scales)

mh_data <- read.csv("Mental-Health-With-College-Students.csv", stringsAsFactors = FALSE)

ggplot(data = mh_data) +
  geom_smooth(aes(x = FOCV, y = GAD_G)) +
  labs(x = "Fear of Covid (FoCV-19S Score)", 
       y = "Anxiety Severity (GAD-7 Score)", 
       title = "Anxiety Rates Increasing as the Fear of Covid Increases") +
  scale_y_continuous(breaks = seq(0, 21, 3)) +
  scale_x_continuous(breaks = seq(0, 35, 5))

#This chart reveals the relationship between the fear of covid and anxiety among university students during the 4th wave of the pandemic. As the students’ fear of covid increased, so did their anxiety severity. The student’s anxiety severity was measured using the GAD-7, a well known testing method that categorizes how critical someone's anxiety is for their age range. We decided to correlate the student’s fear of covid with how severe their anxiety was, as there may be some connection or influence between the two. Through the chart we were able to see a strong positive correlation between the two, leading us to conclude that the fear of covid has a impact on the student’s anxiety.

#It is also important to note that this dataset was collected from university students in Poland so we cannot immediately generalize these finding to university students in the US.
