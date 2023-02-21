#Sadeem Alselmi 
#Summmary information

# Install packages 
<<<<<<< HEAD
=======
install.packages("readxl", repos = "http://cran.us.r-project.org")
install.packages("dplyr", repos = "http://cran.us.r-project.org")

>>>>>>> 7bfec2bfb207ee22233786c6c6de8b8f84a0196f
library(readxl)
library(dplyr)


# Load the data from excel file

df <- read_excel("Dataset.xlsx")
colnames(df)
# Group by vaccination status and calculate summary statistics
# Group by vaccination status and calculate summary statistics
summary_df <- df %>%
  group_by(Vaccination) %>%
  summarise(
    count = n(),
    avg_age = round(mean(Age), 1),
    avg_wellbeing = round(mean(SWLS_G), 2)
  ) %>%
  select(Vaccination, count, avg_age, avg_wellbeing) %>%
  arrange(Vaccination, avg_age)


# Display summary information
summary_df

cat("Summary Information\n")
cat("------------------\n\n")
cat("Dataset Description:\n")
cat("The dataset is from Mendeley data: \"Mental health and well-being of university students during the fourth wave of the COVID-19 pandemic\". The website link is https://data.mendeley.com/datasets/bvcwx4tfjm. The data was collected from university students in Poland through an online survey. It includes information on the students' demographic and identity, their mental and physical health during the fourth wave of the COVID-19 pandemic, and their vaccination status. There are 706 observations (students) and 78 features (columns).\n\n")
cat("Potential Biases:\n")
cat("The data might be skewed in favor of or against vaccination. In addition, the data does not address the students' income or financial status, living conditions, or views on vaccinations.\n\n")
cat("Summary Statistics by Vaccination Status:\n")
cat("========================================\n")
cat("\n")
cat("The table below shows the number of students, their average age, and their average wellbeing score, grouped by vaccination status. The values are rounded to one decimal place (for age) and two decimal places (for wellbeing score).\n")
cat("\n")
cat(summary_df %>% knitr::kable(format = "markdown"))
