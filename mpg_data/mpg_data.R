library(ggplot2)

#더블 콜론(::) 을 이용하면 특정 패키지에 이쓴 함수나데이터를 지정할 수 있다.
mpg <- as.data.frame(ggplot2::mpg)

mpg

View(mpg)

head(mpg)
head(mpg, 10)

tail(mpg)

tail(mpg, 20)

summary(mpg)

str(mpg)

dim(mpg)
?mpg
#mpg데이터는 결론적으로 234행과 11개의 열로 이루어져있다는것을 알 수 있다.