library(ggplot2)
library(dplyr)

t_data <- read.csv('csv_exam.csv')


test1 <- data.frame(id = c(1,2,3,4),
                    midterm = c(89,90,91,92))

test2 <- data.frame(id = c(1,2,3,4),
                    final = c(93,91,90,88))


test1
test2

#by : n개의 데이터 프레임을 합칠때 기준으로 삼는 변수명을 넣어주면 된다.
# 행 방향으로 합치기 : left_join()을 사용해 주면 된다. left_join()에는 by라는 기준이 되는 변수에 대한 매개변수값을 부여해야한다.
total <- left_join(test1, test2, by = "id")

total


info_1 <- data.frame(class = c(1,2,3,4),
                     teacher = c("kim","lee","Yoon","Jung"))

info_1

View(t_data)


#python pandas의 merge와 동일한 기능도 가능하다.
total <- left_join(t_data, info_1, by = 'class')
total

# 열방향으로 합치기 : bind_rows()를 사용해 주면 된다.
gr_1 <- data.frame(id = c(1,2,3,4),
                   test = c(90,89,93,88))

gr_2 <- data.frame(id = c(5,6,7,8),
                   test = c(90,98,94,91))

gr_1
gr_2

gr_total <- bind_rows(gr_1, gr_2)
gr_total

# 데이터 프레임을 세로로 합칠 경우에는 두 데이터의 변수명이 동일해야한다. 변수명이 다른 경우에는 rename(데이터 프레임, 새로운 이름 = 기존 이름)으로 이름을 맞춰주면 된다.

gr_total <- rename(gr_total, "Re_T" = test)
gr_total