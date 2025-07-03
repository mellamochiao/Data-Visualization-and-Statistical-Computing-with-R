install.packages('tidyverse') 

library(tidyverse)
x <- c(1, 3, 5, 7, 9) 
y <- c(2, 4, 6, 8, 10) 
plot(x, y)
lines(x, y)

z = rnorm(1000) 
w = rnorm(1000) 

library(car) 
some(z)
plot(z) 
lines(z) 
hist(z) 
rug(z) 

library(HistData) 
some(Galton)
attach(Galton)
hist(parent) 
hist(parent, main = 'Histogram of parent height') 
plot(w,z)
plot(w, z, main = "Plot of W and Z", xlab="z for absicca axis", ylab="w for ordinate axis", pch = 19) 

plot(child, parent) 
sunflowerplot(parent ~ child)
qplot(log(parent), log(child)) 

qplot(log(parent), log(child), alpha = I(1/10)) 
qplot(log(parent), log(child), alpha = 1/10) 

qplot(log(parent), log(child), geom = c("point", "smooth")) 
`geom_smooth()` using method = 'loess' and formula 'y ~ x' 

qplot(childHeight, midparentHeight, data = GaltonFamilies, color = factor(gender),
      geom = c("point", "smooth"))


qplot(log(parent), log(child), geom = "jitter") 
attach(GaltonFamilies)
g <- ggplot(GaltonFamilies, aes(childHeight, midparentHeight)) 
g + geom_jitter(aes(col = gender, size = childNum)) 

attach(faithful) 
stem(eruptions) 

qqnorm(z)

x = rexp(1000)
qqnorm(x)

shapiro.test(z) 
shapiro.test(eruptions) 
qqnorm(eruptions)

boxplot(parent, main = "Boxplot of Parent Height") 
library(lattice) 
bwplot(child, main = "Boxplot of Child Height") 

attach(GaltonFamilies) 
plot(gender, childHeight) 

plot(as.factor(children), childHeight)
plot(children, childHeight)

qplot(x = gender, y = childHeight, data =
        GaltonFamilies, geom=c("boxplot", "jitter"), fill=gender)

achiev=read.table('/Users/chiao/Downloads/achiev.txt', head = 1)
achiev

g <- ggplot(achiev, aes(factor(teach), ac)) 
g + geom_boxplot() +geom_dotplot(binaxis = "y", 
               stackdir = "center", 
               dotsize = 0.5, 
               fill = "red")

iris$Species <- as.factor(iris$Species) 
head(iris) 
library(ggplot2) 
iris.violin <- ggplot(iris, aes(x = Species, y=Sepal.Length)) + geom_violin() 
iris.violin 
iris.boxplot <- ggplot(iris, aes(x = Species, y=Sepal.Length)) + geom_boxplot() 
iris.boxplot 

x <- c(1, 2, 3, 3) 
barplot(x) 
pie(x) 

table.parent <- table(Galton$parent) 
table.parent

plot(table.parent) 
barplot(table.parent) 


head(parent) 
mean(parent) 
sd(parent) 



