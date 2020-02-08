library(wordcloud2)
df = data.frame(word = c('mdi','iim','imt'),freq = c(20,23,15))
df
par(mar = c(0,0,0,0))
wordcloud2(df)

head(demoFreq)
wordcloud2(demoFreq)
wordcloud2(demoFreq,size = 2, color = 'random-light', backgroundColor = 'black')
library(twitteR)
install.packages('rtweet','curl','ROAuth')

??rtweet
token = "827038228159004672-nNSoQieUXq2uqspG34FLI5csOmzCMYY"
tokensecret <- "1qxmHrvQtPo9jK9sD2QuAf4nxQol2pJ9lUjyMScsy6OTJ"

apikey <- "jgfl8KVOv2jIiLS9QrouonFDj"

APIsecretkey <- "LZl06khx6af1gbHmMwv34Cw8PgYPswUtn2AN2OFJOERIfULHUK"
