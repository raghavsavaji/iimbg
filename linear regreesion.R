head(women)
plot(women)
cor(women)
cov(women$height, women$weight)
model = lm(weight ~ height, data =women)
model
summary(model)
range(women$height)
residuals(model)
plot(model)

predict(model, new =  data.frame(height =77 ) )
head(mtcars)
model2 = lm(mpg ~ wt+hp+qsec, data = mtcars)
summary(model2)


#load the data
#find corrleation between Independent variables and missing values
#form linear model
#check for model summary
#check for assumptions
#predict
#findout accuracy
