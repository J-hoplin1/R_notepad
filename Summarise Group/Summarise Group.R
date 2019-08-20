library(ggplot2)
library(dplyr)
library(readxl)

data <- read.csv('csv_exam.csv')

View(data)


data %>% summarise(mean_math = mean(math))

data %>% 
  group_by(class) %>% 
  summarise(mean_math = mean(math))

data %>% 
  group_by(class) %>% 
  summarise(mean_math = mean(math),
            sum_math = sum(math),
            median_math = median(math),
            student_count = n())#n() : 데이터가 몇 행으로 되어있는지 '빈도'를 구해주는 기능을 한다. 괄호 안의 매개변수값을 부여하지 않는다.

mpg_ds <- as.data.frame(ggplot2::mpg)

# 회사별 집단으로 나누고 구동 방식별로 나눠보고, 도시평균구하

mpg_ds %>% 
  group_by(manufacturer, drv) %>% 
  summarise(mean_ct = mean(cty)) %>% 
  head(10)

# 4 : 4륜구동
# f : 전륜구동
# r : 후륜구동

View(mpg_ds)

mpg_ds %>% 
  group_by(manufacturer) %>% 
  filter(class == "suv") %>% 
  mutate(aver_ct_hw = (cty + hwy)/2) %>%
  summarise(ave_a = mean(aver_ct_hw)) %>% 
  arrange(desc(ave_a)) %>% 
  head(5)

