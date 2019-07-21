 library(ggplot2)
 library(dplyr)
 #dplyr ->데이터 전처리를 위해서 쓰이는 패키지이다.
 
 data <- read.csv('csv_exam.csv')
 View(data)
 
 data %>% filter(class == 1)
 data %>% filter(class == 2)
 
 data %>% filter(class == 1 & math >= 50)
 
 data %>% filter(class == 2 & math >= 50)
 
 data %>% filter(class == 1 | class == 2)
 
 data %>% filter(math >= 50 & science >= 80)
 
 data %>% filter(class == 1 | class == 2 | class == 5)
 data %>% filter(class %in% c(1,2,5))
 
 class1 = data %>% filter(class == 1)
 class2 = data %>% filter(class == 2)
 class3 = data %>% filter(class == 3)
 
 class2
 class3
 class1
 
 data_n = as.data.frame(ggplot2::mpg)
 data_n
 
 #displ값이 4이하인 자동차와 5이상인 자동차중 hwy값이 더 높은거 찾기
 
 displ_4 <- data_n %>% filter(displ <= 4)
 displ_5 <- data_n %>% filter(displ >= 5)
 
 displ_4
 displ_5
 
 mean(displ_4$hwy)
 mean(displ_5$hwy)기
 
 #audi, toyota중 cty가  평균적으로 더 높은거 찾기
 
 audi_i <- data_n %>% filter(manufacturer == "audi")
 toyota <- data_n %>% filter(manufacturer == "toyota")
 
 audi_i
 toyota
 
 mean(audi_i$cty)
 mean(toyota$cty)
 
 # chevorlet ford honda사의 연비평균
 
 total_avg <- data_n %>% filter(manufacturer %in% c("chevrolet","ford","honda"))
 total_avg
 
 mean(total_avg$hwy)