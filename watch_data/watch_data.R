data <- read.csv("csv_exam.csv")

data

head(data)

head(data, 10)

tail(data)

tail(data, 10)

View(data)

#dim은 데이터가 몇개의 행 과 열로 이루어져있는지를 출력해주는 함수이다. 출력순서는 행, 열 순이다.
dim(data)

#str은 데이터의 속성을 출력해주는 함수이다. 모든 변수의 속성을 파악하고 싶을때 사용하는 함수이다.
str(data)
#obs는 행을 의미한다(observation), variables는 변수를 의미한다.

#summary는 데이터프레임을 요약해준다. 3rd Qu는 하위 75%에 위치한 데이터의 값을 의미한다.
summary(data)