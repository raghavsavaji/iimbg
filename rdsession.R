library(gsheet)
url = "https://docs.google.com/spreadsheets/d/1h7HU0X_Q4T5h5D1Q36qoK40Tplz94x_HZYHOJJC_edU/edit#gid=216113907"
sales3 = as.data.frame(gsheet2tbl(url))
str(sales3)
head(sales3)
dim(sales3)
library(dplyr)
names(sales3)
#find out Loyal Customers, Customers who gave high revenue, High Revenue Part Nos, PartNos which give highest Margin; #top n=2 from each region- total revenue
#parts sold in East and china region

#partnum with high profit(top 5)

sales3 %>% group_by(partnum) %>% summarise(MARGIn = sum(margin))%>% arrange(desc(MARGIn))%>%head(5)

#which region highest profit
regionsales <- sales3 %>% group_by(region) %>% summarise(MARGIn = sum(margin))%>% arrange(desc(MARGIn))

#top 2 partnums according to each region
 x <- sales3 %>% group_by(region,partnum) %>% summarise(MARGIn = sum(margin))%>% top_n(2,MARGIn)
barplot(x)
 
#least 2 partnums according to each region
sales3 %>% group_by(region,partnum) %>% summarise(MARGIn = sum(margin))%>% top_n(-2,MARGIn)


library(ggplot2)
sales3


#loyal customers either high revenue or high frequency

sales3 %>% group_by(custname) %>% summarise(REVENUE = sum(revenue, na.rm = T), COUNT = n()) %>% top_n(5,REVENUE)

sales3 %>% group_by(custname) %>% summarise(REVENUE = sum(revenue, na.rm = T), COUNT = n()) %>% top_n(5,COUNT)
