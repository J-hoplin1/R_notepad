eng <- c(90,80,60,70)
eng

math <- c(50,60,100,30)
math

midterm <- data.frame(eng,math)
midterm

sci <- c(90,80,90,70)

midterm <- data.frame(eng,math,sci)
midterm

class <- c(1,2,2,1)

midterm <- data.frame(class,eng,math,sci)
midterm

#데이터프레임의 임의의 변수를 지정할때 $ 기호를 사용하여 지정해준다.
mean(midterm$eng)
mean(midterm$math)
mean(midterm$sci)

final <- data.frame(class = c(1,2,1,2),
                    eng_f = c(90,80,85,92),
                    sci_f = c(80,70,89,88),
                    math_f = c(91,92,93,94))
final

mean(final$eng_f)
mean(final$sci_f)
mean(final$math_f)