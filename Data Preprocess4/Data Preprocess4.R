library(ggplot2)
library(dplyr)

data = read.csv('csv_exam.csv')
data

data <- data %>%
  mutate(total = math + english + science) %>% 
  head

data <- data %>% 
  mutate(average = total / 3) %>% 
  head

data

data <- data %>% 
  mutate(P_S = ifelse(average >= 60, "Pass", "Fail"))

data %>% 
  arrange(average)

data %>%
  filter(class == 1) %>% 
  arrange(desc(average))

data_n <- as.data.frame(ggplot2::mpg)

data_c <- data_n

data_n <-data_n %>% 
  mutate(total_fuel = cty + hwy)

data_n <- data_n %>% 
  mutate(average_t_f = total_fuel / 2)

data_n

data_n %>%
  arrange(average_t_f) %>% 
  head(3)


data_c <- data_c %>% 
  mutate(total_f = cty + hwy) %>% 
  mutate(average_t_f = total_f / 2) %>% 
  arrange(average_t_f) %>% 
  head(3)

data_c