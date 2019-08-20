library(ggplot2)
library(dplyr)

fuel <- data.frame(fl = c("c","d","e","p","r"),
                   price_f = c(2.35,2.38,2.11,2.76,2.22),
                   stringsAsFactors = F)

com_data <- as.data.frame(ggplot2::mpg)

View(com_data)

com_data <- left_join(com_data, fuel, by = 'fl')

com_data %>% 
  select(model,fl,price_f) %>% 
  head(5)