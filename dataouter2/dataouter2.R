library(readxl)

data <- read_excel("excel_exam_novar.xlsx")
#R은 기본적으로 첫번째 행을 변수명으로 인식한다. 엑셀 데이터에서 첫번째 행에 변수가 없는 경우도 있다. 이러한 데이터를 read_excel로 불러오면 첫번째 행의 데이터가 손실되는 문제가 발생한다.
data

#이러한 경우 col_names = F라는 파라미터 값을 주게 되면 첫번째 행을 변수명이 아닌 데이터로 인식해서 불러오게 된다.
data_n <- read_excel("excel_exam_novar.xlsx", col_names = F)
data_n
#R에는 논리형 벡터가 존재한다. True 와 False가 있는데 F는 거짓을 T는 참을 의미하게 된다.

#여러개의 시트가 있는 엑셀파일의 경우 read_excel의 sheet파라미터를 통해 몇번째에 있는 시트를 불러올껀지 지정할 수 있다.
data_n2 <- read_excel("excel_exam_sheet.xlsx", sheet = 3)
data_n2