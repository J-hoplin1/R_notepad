data <- data.frame(var1 = c(1,2,3,4),
                   var2 = c(90,92,91,89))

#rename()을이용하면 변수의 명을 바꿀수 있다. rename()함수를 사용하기 위해서는 dplyr패키지를 이용해 주어야한다.
install.packages("dplyr")

library(dplyr)

data_cpy <- data

#rename형태 : rename(데이터프레임, 변경할 변수명 = 변경전 변수명)

data_cpy <- rename(data_cpy, v2 = var2)
data_cpy <- rename(data_cpy, v1 = var1)

data_cpy

#Mini Quiz

library(ggplot2)

data_mpg <- as.data.frame(ggplot2::mpg)

data_mpg

mpg_cpy <- data_mpg

mpg_cpy <- rename(mpg_cpy, city = cty)
mpg_cpy <- rename(mpg_cpy, highway = hwy)

mpg_cpy