#mtcars  proportion to be maintained
#trainMTC 70%
# test MTC 30%

library(caTools)
set.seed(522)
split1 = sample.split(mtcars$am, SplitRatio = .70)
training_data = subset(mtcars, split1 == TRUE)
test_data = subset(mtcars, split1 == FALSE)
dim(mtcars); dim(training_data); dim(test_data)
names(mtcars)
prop.table(table(training_data$am))
prop.table(table(test_data$am))
nrow(test_data)
nrow(training_data)

#anothet method for partition
library(caret)
library(lattice)
library(ggplot2)
intrain <- createDataPartition(y= factor(mtcars$am), p= .7,list = FALSE)
intrain
training_d <- mtcars[intrain,]
test_d <- mtcars[-intrain,]
training_d
test_d
table(training_d$am)
table(test_d$am)



#simplest method

s1 <- sample(1:nrow(mtcars), size = 0.7*nrow(mtcars))
mtt <- mtcars[s1,]
mtt1 <- mtcars[-s1,]
dim(mtt)
dim(mtt1)


# 4th method

library(dplyr)
mtcars %>% sample_n(22) %>% sample_frac(0.7)
sample_frac(mtcars,0.7)
head(mtcars)



