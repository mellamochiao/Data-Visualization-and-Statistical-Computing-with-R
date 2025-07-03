achiev <- read.table("achiev.txt", header = T) 
achiev
attach(achiev) 
boxplot(ac ~ teach, data=achiev, main="Achievement as a Function of Teacher",xlab = "Teacher", ylab="Achievement") 
install.packages('FSA')
library(FSA) 
f.teach <- factor(teach) 
hist(ac~f.teach, data = achiev) 

shapiro.test(ac) 
fligner.test(ac~f.teach, data = achiev) 
aggregate(ac ~ f.teach, FUN = var) 
aggregate(ac ~ f.teach, FUN = mean) 

anova.fit <- aov(ac ~ f.teach, data = achiev) 
summary(anova.fit) 

model.tables(anova.fit) 
plot.design(ac~f.teach)

TukeyHSD(anova.fit) 


delivery <- read.csv('delivery.csv', header = T)
delivery <- read.table('delivery.csv', sep=',', header = T)
attach(delivery)
library(car)
scatterplot(time ~ distance) 


fit <- lm(time ~ distance)
fit
coef(fit)
cor(fitted(fit),time)^2
summary(fit)

anova(fit)
new <- data.frame(distance=c(100, 500, 1000))
predict(fit, new)

fit.mr <- lm(time~distance+case)
summary(fit.mr)

anova(fit.mr)
cor(fitted(fit),time)^2
qqPlot(fit.mr)
hist(resid(fit.mr))

plot(fitted(fit.mr), resid(fit.mr))

plot(hatvalues(fit.mr))
which.max(hatvalues(fit.mr))
cooks.distance(fit.mr)

p1 <- c(2, 4, 6, 8, 10) 
p2 <- c(4, 8, 12, 16, 20) 
y <- c(12, 15, 8, 4, 1) 
model <- lm(y ~ p1 + p2) 
summary(model) 
plot(p1,p2)

model.1 <- lm(y ~ p1) 
summary(model.1) 
vif(model)

p2 <- c(4, 8, 12, 16, 21) 
model <- lm(y ~ p1 + p2) 
summary(model) 

gaf.data <- read.table("gaf.txt", header = T) 
gaf.data 
attach(gaf.data) 
gaf.fit <- lm(gaf ~ age) 
summary(gaf.fit) 

gaf.fit <- lm(gaf ~ age + pretherapy) 
summary(gaf.fit) 

mod.1 <- lm(gaf ~ age) 
summary(mod.1) 

mod.2 <- lm(gaf ~ age + pretherapy) 
summary(mod.2) 

library(MASS) 
gaf.fit <- lm(time ~ distance + case, data = delivery) 
step <- stepAIC(gaf.fit, direction = "both") 
