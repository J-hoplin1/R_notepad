library(ggplot2)
library(dplyr)


data <-read.csv('csv_exam.csv')

data

#arrange : 오름차순으로 정렬해준다.
data %>% arrange(math)


#arrange()안에 desc()를 넣어주면 내림차순으로 정렬이 된다.
data %>% arrange(desc(math))


data %>% arrange(class, math)

data_n <- as.data.frame(ggplot2::mpg)

data_n %>%
  filter(manufacturer == "audi") %>% 
  arrange(hwy) %>% 
  head(5)