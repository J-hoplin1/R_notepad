#1.Make Dataframe

data = data.frame(eng = c(90,80,60,70),
                  math = c(50,60,100,20))

data

#2 . Call outer data

library(readxl)
data_outer <- read_excel("excel_exam.xlsx")

data_outer

#3 . call outer data(csv)

data_csv <- read.csv("csv_exam.csv")
data_csv 

write.csv(data, file = "write_csv.csv")

#4 . call outer data(csv)

load("rdafile_test.rda")
data

save(data_csv, file = "csvtorda.rda")