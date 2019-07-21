library(ggplot2)
library(dplyr)

data <- read.csv('csv_exam.csv')

data

data %>% select(math)

data %>% select(english)

data %>% select(class, math,english)

data %>% select(-math)

#변수앞에 '-'를 붙이면 특정 변수를 제외할 수 있다.

data %>% select(-math, -science)

#filter와 연계하기

data %>% filter(class == 1) %>% select(-science)

#가독성 고려하기

data %>%
  filter(class == 2) %>% 
  select(class, math,science)

data %>% 
  select(math, science) %>% 
  head


data %>% 
  select(math,class,english) %>% 
  head(10)

data_n <- as.data.frame(ggplot2::mpg)

data_n

# 두 변수로 새로운 데이터 만들기

data_n_1 <-data_n %>% 
  select(class, cty)

data_n_1

data_suv <- data_n_1 %>% filter(class == "suv")
data_compact <- data_n_1 %>% filter(class == "compact")

mean(data_suv$cty)
mean(data_compact$cty)

