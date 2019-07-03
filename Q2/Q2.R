data <- data.frame("제품" = c("사과","딸기","수박"),
                   "가격" = c(1800,1500,3500),
                   "판매량" = c(24,38,13))
data

avg_price <- mean(data$가격)
avg_sold <- mean(data$판매량)

avg_price
avg_sold