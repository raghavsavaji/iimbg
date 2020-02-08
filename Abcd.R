
#plot ----
(x = rnorm(100, mean = 60, 15))
x[seq(1,100,2)]
hist(x)
hist(x, breaks = 10)
hist(x, breaks = c(10,40,80,100))
plot(x)
plot(density(x))

#matrices
data = round(rnorm(24, mean= 40,3))
trunc(35.5)
floor(c(15.4,22.21,65,-15.22))
ceiling(c(15.4,22.21,65,-15.22))
round(c(15.4,22.21,65,-15.22))
data
m1 = matrix(data,nrow =4)
colSums(m1)

colMeans(m1)



#dataframe

summary(mtcars)
head(mtcars)
table(mtcars$cyl)
barplot(table(mtcars$cyl),col=1:3)
pie(table(mtcars$cyl),col = 1:3)
table(mtcars$gear, mtcars$am, dnn = c('gear','am'))
aggregate(cbind(mpg,wt) ~ cyl+gear, data = mtcars, mean)
# mean mpg and wt for each gera and cycle type
?cbind


#factors
#without order
set.seed(1234) #to fix the pattern
(gender = sample(c('M','F'), size = 10000, replace = T,prob = c(0.7,0.3)))
table(gender)
prop.table(table(gender))

barplot(table(gender))
pie(table(gender))


#grades
set.seed(1234) #to fix the pattern
(grades = sample(c('E','G','S','P'), size = 10000, replace = T,prob = c(0.4,0.3,0.2,0.1)))

table(grades)
prop.table(table(grades))

barplot(table(grades))
pie(table(grades))

(grades2 = factor(grades, ordered = T,levels = c('E','G','S','P')))

#dplyr ---- 

library(dplyr)                 
df = mtcars
df[,c('cyl','vs','am','gear','carb')]= lapply(df[,c('cyl','vs','am','gear','carb')], factor)
df 
df %>% group_by(cyl,gear) %>% summarise(meanwt = mean(wt,na.rm = T),meanMPG = mean(mpg,na.rm = T))

df

#ggplot

ggplot(df, aes(x=wt, y=mpg)) + geom_point()
ggplot(df, aes(x=wt, y=mpg)) + geom_point(aes(color = am,size= hp, shape = carb))
?mtcars

ggplot(df,aes(x=cyl,y=gear))+geom_bar(stat = 'identity')
df %>% group_by(cyl,gear) %>% summarise(CNT = n())
ggplot(df %>% group_by(cyl,gear) %>% summarise(CNT = n()),aes(x=cyl,y=CNT,fill = gear))+geom_bar(stat = 'identity')
ggplot(df %>% group_by(cyl,gear) %>% summarise(CNT = n()),aes(x=cyl,y=CNT,fill = gear))+geom_bar(stat = 'identity',position = position_dodge())


#boxplot
library(ggplot2)
ggplot(df, aes(x='',y=mpg,fill = gear))+geom_boxplot()

