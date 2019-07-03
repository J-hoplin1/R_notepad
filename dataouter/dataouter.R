install.packages("readxl")
library(readxl)

#R 환경 버전 체크 및 업데이트, 패키지 이전작ㅇ
package_version(R.version)

install.packages("installr")
library(installr)
updateR()

update.packages(checkBuilt = TRUE)

version
packageStatus()

library(readxl)
dataex <- read_excel("excel_exam.xlsx")
View(dataex)

mean(dataex$math)
mean(dataex$science)
mean(dataex$english)
