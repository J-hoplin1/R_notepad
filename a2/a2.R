install.packages("ggplot2")
library(ggplot2)

a <- c("a","a","a","c","b","b")
qplot(a)

qplot(data = mpg, x = hwy)
qplot(data = mpg,x = drv, y = hwy)
qplot(data = mpg, x = drv, y = hwy, geom = "line")
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot")
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot", colour = drv)
?qplot# ?mark for help
