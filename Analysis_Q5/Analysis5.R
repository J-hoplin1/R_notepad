library(ggplot2)
library(dplyr)

data_t <- as.data.frame(ggplot2::mpg)

View(data_t)

data_t %>% 
  group_by(class) %>% 
  summarise(aver_cty = mean(cty)) %>% 
  arrange(desc(aver_cty))

data_t %>% 
  group_by(class) %>% 
  summarise(aver_hwy = mean(hwy)) %>% 
  head(3)


data_t %>% 
  filter(class == "compact") %>% 
  group_by(manufacturer) %>% 
  summarise(count = n()) %>% 
  arrange(desc(count))