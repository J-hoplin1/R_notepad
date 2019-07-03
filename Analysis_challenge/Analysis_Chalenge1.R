library(ggplot2)
library(dplyr)

data <- as.data.frame(ggplot2::midwest)
data
View(data)

head(data, 5)

tail(data, 5)

data <- rename(data, total = poptotal)
data <- rename(data, asian = popasian)

data

data$asian_perentage <- (data$asian / data$total) * 100

data

hist(data$asian_perentage)

average_asian <- mean(data$asian_perentage)

data$L_or_S <- ifelse(data$asian_perentage >= average_asian, "Large","Small")

data

qplot(data$L_or_S)