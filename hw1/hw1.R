x <- c(0, 2, 5, 8, 9)
sum(x)/length(x)
[1] 4.8

mean(x)
[1] 4.8

(2)(3)

((2*3) + 6 - (2/3 - 11))/6^5
[1] 0.002872085

round(exp(2.302585))
[1] 10

?round

round(.5 + -2:4)
[1] -2  0  0  2  2  4  4

x2 <- pi * 100^(-1:3)
round(x2, 3)
[1]       0.031       3.142     314.159   31415.927 3141592.654

signif(x2, 3)
[1] 3.14e-02 3.14e+00 3.14e+02 3.14e+04 3.14e+06

D(expression(6*y + 3),"y")
[1] 6

1/2 * 2 == 1
[1] TRUE

sqrt(2) ^ 2 == 2
[1] FALSE 

choose(5, 2)
[1] 10

factorial(5)/factorial(5-2)
[1] 20

set.A <- c(1, 2, 3, 4, 5)
set.B <- c(2, 3, 4, 5, 6)
union(set.A, set.B)
[1] 1 2 3 4 5 6 

intersect(set.A, set.B)
[1] 2 3 4 5

set.A %in% set.B
[1] FALSE  TRUE  TRUE  TRUE  TRUE

curve(4*x^2+3, 0, 100)

x <- c(1, 3, 5, 7, 9)
is.atomic(x) || is.list(x)
[1] TRUE

x <- c(x[1:4], 8, x[5])
x
[1] 1 3 5 7 8 9

x[c(2, 4)]
[1] 3 7

x[-2:-4]
[1] 1 8 9

y <- c(2, 4, 6, 8, 10)
x + y
[1]  3  7 11 15 18 11
Warning message:
  In x + y : longer object length is not a multiple of shorter object length

x <- c(1, 3, 5, 7, 9)
y <- c(2, 4, 6, 8, 10)
x%*%y
     [,1]
[1,]  190

S <- matrix(1:8, 4, 2)
S
    [,1] [,2] 
[1,]    1    5 
[2,]    2    6 
[3,]    3    7 
[4,]    4    8 

S <- matrix(20:29, 2, 2)
S
     [,1] [,2] 
[1,]   20   22 
[2,]   21   23 

S[,2]
[1] 22 23 
S[2,]
[1] 22 23 

c1 <- c(1.000, 0.343, 0.505, 0.308, 0.693, 0.208, 0.400, 0.455)
c2 <- c(0.343, 1.000, 0.203, 0.400, 0.187, 0.108, 0.386, 0.385)
c3 <- c(0.505, 0.203, 1.000, 0.398, 0.303, 0.277, 0.286, 0.167)
c4 <- c(0.308, 0.400, 0.398, 1.000, 0.205, 0.487, 0.385, 0.465)
c5 <- c(0.693, 0.187, 0.303, 0.205, 1.000, 0.200, 0.311, 0.485)
c6 <- c(0.208, 0.108, 0.277, 0.487, 0.200, 1.000, 0.432, 0.310)
c7 <- c(0.400, 0.386, 0.286, 0.385, 0.311, 0.432, 1.000, 0.365)
c8 <- c(0.455, 0.385, 0.167, 0.465, 0.485, 0.310, 0.365, 1.000)
cormatrix <- cbind(c1,  c2,  c3, c4,  c5,  c6,  c7,  c8)

cormatrix
        c1    c2    c3    c4    c5    c6    c7    c8
[1,] 1.000 0.343 0.505 0.308 0.693 0.208 0.400 0.455
[2,] 0.343 1.000 0.203 0.400 0.187 0.108 0.386 0.385
[3,] 0.505 0.203 1.000 0.398 0.303 0.277 0.286 0.167
[4,] 0.308 0.400 0.398 1.000 0.205 0.487 0.385 0.465
[5,] 0.693 0.187 0.303 0.205 1.000 0.200 0.311 0.485
[6,] 0.208 0.108 0.277 0.487 0.200 1.000 0.432 0.310
[7,] 0.400 0.386 0.286 0.385 0.311 0.432 1.000 0.365
[8,] 0.455 0.385 0.167 0.465 0.485 0.310 0.365 1.000

library(psych)
tr(cormatrix)
[1] 8

cormatrix[c(1,3), c(2,4)]
        c2    c4
[1,] 0.343 0.308
[2,] 0.203 0.398

sum(diag(cormatrix))
[1] 8

I <- solve(cormatrix)
I
          [,7]        [,8]
c1 -0.27074036 -0.25993622
c2 -0.38009280 -0.29342246
c3 -0.03786275  0.34747695
c4 -0.05349807 -0.54938320
c5 -0.06236400 -0.56556392
c6 -0.49852528 -0.14614977
c7  1.55055676 -0.08044157
c8 -0.08044157  1.77763927

det(cormatrix)
[1] 0.06620581

eigen(cormatrix)

quant <- c(5, 2, 6, 9, 8, 7, 9, 10, 10)
verbal <- c(2, 1, 3, 7, 9, 8, 8, 10, 9)
train <- c(1, 1, 1, 2, 2, 2, 3, 3, 3)
iq.train <- data.frame(quant, verbal, train)
iq.train 
  quant verbal train
1     5      2     1
2     2      1     1
3     6      3     1
4     9      7     2
5     8      9     2
6     7      8     2
7     9      8     3
8    10     10     3
9    10      9     3

write.table(iq.train, 'iq.train.txt')
getwd()
iq.train2 <- read.table('/Users/chiao/Desktop/iq.train.txt', header=1)

iris.GaltonFamilies <- merge(iris, GaltonFamilies)
iris.GaltonFamilies
head(iris.GaltonFamilies)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species family father
1          5.1         3.5          1.4         0.2  setosa    001   78.5
2          4.9         3.0          1.4         0.2  setosa    001   78.5
3          4.7         3.2          1.3         0.2  setosa    001   78.5
4          4.6         3.1          1.5         0.2  setosa    001   78.5
5          5.0         3.6          1.4         0.2  setosa    001   78.5
6          5.4         3.9          1.7         0.4  setosa    001   78.5
  mother midparentHeight children childNum gender childHeight 
1     67           75.43        4        1   male        73.2
2     67           75.43        4        1   male        73.2
3     67           75.43        4        1   male        73.2
4     67           75.43        4        1   male        73.2
5     67           75.43        4        1   male        73.2
6     67           75.43        4        1   male        73.2

install.packages("car")
install.packages(c("car", "MASS"))
library(car)
search()
[1] ".GlobalEnv"        "package:car"       "package:carData"   "package:psych"     "tools:rstudio"    
[6] "package:stats"     "package:graphics"  "package:grDevices" "package:utils"     "package:datasets" 
[11] "package:methods"   "Autoloads"         "package:base"   

head(iris)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
tail(iris)
    Sepal.Length Sepal.Width Petal.Length Petal.Width   Species
145          6.7         3.3          5.7         2.5 virginica
146          6.7         3.0          5.2         2.3 virginica
147          6.3         2.5          5.0         1.9 virginica
148          6.5         3.0          5.2         2.0 virginica
149          6.2         3.4          5.4         2.3 virginica
150          5.9         3.0          5.1         1.8 virginica

library(car)
some(iris)
    Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
14           4.3         3.0          1.1         0.1     setosa
15           5.8         4.0          1.2         0.2     setosa
18           5.1         3.5          1.4         0.3     setosa
27           5.0         3.4          1.6         0.4     setosa
39           4.4         3.0          1.3         0.2     setosa
89           5.6         3.0          4.1         1.3 versicolor
90           5.5         2.5          4.0         1.3 versicolor
94           5.0         2.3          3.3         1.0 versicolor
138          6.4         3.1          5.5         1.8  virginica
140          6.9         3.1          5.4         2.1  virginica






