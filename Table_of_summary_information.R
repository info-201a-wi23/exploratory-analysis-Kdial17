#Sadeem Alselmi 
#Table of Summmary information

# Install packages 
<<<<<<< HEAD
=======
install.packages("readxl", repos = "http://cran.us.r-project.org")
install.packages("dplyr", repos = "http://cran.us.r-project.org")
>>>>>>> 7bfec2bfb207ee22233786c6c6de8b8f84a0196f

library(readxl)
library(dplyr)


# Load the data 

df <- read_excel("Dataset.xlsx")
colnames(df)

# Group by gender
summary_table <- df %>% 
  group_by(Gender) %>% 
  summarize(
    num_students_assessed = n(),
    num_features = ncol(.),
    percent_vaccinated = round(sum(Vaccination == "Yes") / num_students_assessed * 100, 2),
    percent_covid_symptoms = round(sum(PCL_G == "Yes") / num_students_assessed * 100, 2),
    percent_anxiety = round(sum(GAD_G == "Yes") / num_students_assessed * 100, 2),
    percent_depression = round(sum(PHQ_G == "Yes") / num_students_assessed * 100, 2),
    percent_anx_dep = round(sum(GAD_G == "Yes" & PHQ_G == "Yes") / num_students_assessed * 100, 2),
    avg_hours_of_sleep = round(mean(SWLS_G, na.rm = TRUE), 2),
    percent_supported = round(sum(FOCV == "Yes") / num_students_assessed * 100, 2)
  ) %>% 
  arrange(desc(num_students_assessed))

# Display the summary table
summary_table



# Select a few columns and display the result
select(summary_table, Gender, num_students_assessed, percent_vaccinated, avg_hours_of_sleep)

