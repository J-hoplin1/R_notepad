#csv데이터를 불러올때는 기본 내장인 read.csv함수를 이용해 준다. read_excel에서와 같이 첫번째 행을 변수로 인식한다. 만약 csv파일의 첫번쨰 행의 데이터가 변수값이 아니라면 col_names파라미터가 아닌 header = F 파라미터를 넣어주게되면 첫번째 행의 데이터가 누락되는것을 막을 수 있다.
data = read.csv("csv_exam.csv")

data

#csv파일중에서 문자가 들어있는 파일을 불러올때는 stringAsFactors = F 파라미터값을 주어야만 문자타입의 데이터를 불러올때 오류가 발생하지 않는다.
data_n <- data.frame(math = c(90,91,89,90),
                     sci = c(90,91,92,89),
                     eng = c(99,98,100,91))

data_n

#데이터프레임을 csv파일로 저장할때는 기본 내자 함수인 write.csv를 통해서 저장해준면 된다.파라미터로는 첫번째는 데이터 프레임 변수, 두번째로는 file파라미터를 지정하고 파일명.csv형식으로 저장해준면 된다.

write.csv(data_n, file = "csv_test.csv")


data_n2 = data.frame(ex1 = c("a","b","c"),
                     ex2 = c(10,20,30),
                     ex3 = c(90,90,100))

data_n2

write.csv(data_n2, file = "csv_test2.csv")