library(ggplot2)
library(dplyr)

data <- as.data.frame(ggplot2::mpg)

data


head(data)

tail(data)

summary(data)

dim(data)

str(data)

View(data)

data <- rename(data,company = manufacturer)

data$total <- (data$cty + data$hwy) / 2
data$test <- ifelse(data$total >= 20, "A",
                    ifelse(data$total >=15, "B", "C"))

data

hist(data$total)
table(data$test)
qplot(data$test)