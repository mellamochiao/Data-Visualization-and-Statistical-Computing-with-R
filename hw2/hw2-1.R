getwd()
?setwd

install.packages("car")
library(car)

install.packages('MASS')
search()

head(iris)
tail(iris)
some(iris)

quant <- c(5, 2, 6, 9, 8, 7, 9, 10, 10)
verbal <- c(2, 1, 3, 7, 9, 8, 8, 10, 9)
train <- c(1, 1, 1, 2, 2, 2, 3, 3, 3)
iq.train <- data.frame(quant, verbal, train)

iq.train[1:2]
iq.train[iq.train$quant > 8,]
library(dplyr)
select(iq.train, quant, verbal)
filter(iq.train, quant == 10, verbal == 10)

ls()

rm(x, y)
ls()

rm(list=ls())
ls()

mean(x)

pi
exp(1)
print(pi)

1:10

seq(from=1, to=100, by=5)
?seq
seq(0,1,length.out=11)
seq(1,9,by=pi)

m<-function(x)mean(x)
m(1:10)

v<- c(0,1,2,3,4)
v.f <- factor(v)
v.f
[1] 0 1 2 3 4
Levels: 0 1 2 3 4

mean(v.f)
levels(v.f)
[1] "0" "1" "2" "3" "4"

nlevels(v.f)
v.f <- factor(v, levels = c(10, 11, 12, 13, 14))
v.f 

v=c(rep(2,4), rep(3,5), rep(10,5))
table(v)
v.f <- factor(v, levels=c(2,5,10,20))
v.f
table(v.f)

?apply
install.packages('HistData')
library("HistData")
attach(GaltonFamilies)
some(GaltonFamilies)
tail(GaltonFamilies)

tapply(children, gender, mean)

x <- cbind(x1 = 3, x2 = c(4:1, 2:5))
x
dimnames(x)[[1]] <- letters[1:8]
x
apply(x, 2, mean, trim = .2)
col.sums <- apply(x, 2, sum)
row.sums <- apply(x, 1, sum)


w<-c(0, 1, 9, 2, 5)
order(w)
sort(w)




