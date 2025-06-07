install.packages('HistData')
library(HistData)
attach(Galton)
head(parent) 
mean(parent) 
sd(parent) 
scale(parent)
hist(parent) 
hist(scale(parent)) 
hist(scale(parent), breaks=15) 
hist(scale(parent), breaks=5) 

z=scale(parent)
plot(parent, z)

pnorm(0)
pnorm(3.74) 
1-pnorm(3.74) 

x <- seq(-5, 5, length = 100) 
norm <- dnorm(x) 
plot(norm) 



plot(parent, child) 
cor(parent, child)

cor(parent, child, method = "pearson") 
cor.test(parent, child, method = "pearson") 

bill.fav <- c(10.0, 9.5, 8.4, 7.6, 2.1) 
mary.fav <- c(9.7, 9.6, 9.0, 8.5, 7.6) 
cor(bill.fav, mary.fav, method = "pearson") 

cor(bill.fav, mary.fav, method = "spearman") 

grade <- c(0, 0, 0, 0, 0, 1, 1, 1, 1, 1) 
study.time <- c(30, 25, 59, 42, 31, 140, 90, 95, 170, 120) 
grade.data <- data.frame(grade, study.time) 
grade.data 

cor.test(grade, study.time) 

iq = c(105, 98, 110, 105, 95)
t.test(iq, mu = 100) 

grade.0 <- c(30, 25, 59, 42, 31) 
grade.1 <- c(140, 90, 95, 170, 120) 

install.packages("lsr")
library(lsr)
cohensD(grade.0, grade.1) 
var.test(grade.0, grade.1) 
var(grade.0)
var(grade.1)

t.test(grade.0, grade.1, var.equal = TRUE) 

studytime <- c(30, 25, 59, 42, 31, 140, 90, 95, 170, 120) 
grade <- c(0, 0, 0, 0, 0, 1, 1, 1, 1, 1) 
t.test(studytime ~ grade) 

trial.1 <- c(10, 12.1, 9.2, 11.6, 8.3, 10.5) 
trial.2 <- c(8.2, 11.2, 8.1, 10.5, 7.6, 9.5) 
t.test(trial.1, trial.2, paired = TRUE) 

binom.test(2, 5, p = 0.5) 

binom.test(2, 5, p = 0.9) 

diag.table <- matrix(c(20, 5, 10, 15), nrow = 2) 
diag.table 
chisq.test(diag.table, correct = F) 

install.packages('psych')
library(psych) 
phi(diag.table, digits = 3) 

install.packages('vcd')
library(vcd)
assocstats(diag.table) 

library(vcd) 
mosaic(diag.table) 

library(vcd) 
fourfold(diag.table) 

install.packages("fmsb")
library(fmsb)
data = data.frame(matrix(sample(1:100, 10, replace = T), ncol = 10)) 
colnames (data) = c("A+", "A", "A-", "B+", "B", "B-", "C+", "C", "C-", "F") 
data = rbind(rep(100, 10), rep(0, 10), data) 
data

radarchart(data, axistype=1, 
           cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,100, 25), cglwd=0.8) 
intern.data <- matrix(c(20, 7, 7, 5, 8, 3, 3, 4, 5), 3, 3) 
intern.data 
intern.data <- matrix(c(20, 7, 7, 5, 8, 3, 3, 4, 5), nrow=3, ncol=3) 
Kappa.test(intern.data)

install.packages('pwr')
library(pwr)
pwr.t.test(n =, d = 0.5, sig.level = 0.05, power = 0.90, type = "two.sample") 

pwr.t.test(n =100, d = 0.5, sig.level = 0.05, power = , type = "two.sample") 

pwr.anova.test(k = 5, n =, f = 0.5, sig.level = 0.05, power = 0.90) 

pwr.r.test(n =, r = .10, sig.level = 0.05, power =0.90) 

pwr.r.test(n =, r = .90, sig.level = 0.05, power =0.90) 











