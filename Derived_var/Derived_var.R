library(ggplot2)
library(dplyr)

data <- data.frame(var1 = c(10,20,30),
                   var2 = c(90,90,90))

data

data$sum <- data$var1 + data$var2
data

data$avg <- (data$var1 + data$var2) / 2

data 

data_mpg <- as.data.frame(ggplot2::mpg)

data_mpg

data_mpg$total <- (data_mpg$cty + data_mpg$hwy) / 2

data_mpg

summary(data_mpg$total)



hist(data_mpg$total)

#ifelse()를 이용하면 조건문을 이용할 수 있다. ifelse()의 순서 : ifelse(조건문, 참일때, 거짓일때)

data_mpg$P_or_F <- ifelse(data_mpg$total >= 20, "Pass", "Fail")
data_mpg

#table()함수는 데이터의 개수를 파악해주는 함수이다.

table(data_mpg$P_or_F)

qplot(data_mpg$P_or_F)

data_mpg$grade <- ifelse(data_mpg$total >= 30 , "A",
                         ifelse(data_mpg$total >= 20, "B", "C"))

data_mpg
table(data_mpg$grade)

qplot(data_mpg$grade)

data_mpg$grade2 <- ifelse(data_mpg$total >= 30, "A",
                          ifelse(data_mpg$total >= 25, "B",
                                 ifelse(data_mpg$total >=20,"C","D")))
data_mpg

table(data_mpg$grade2)