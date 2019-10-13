x <- matrix(1:99, nrow = 3, ncol = 2)
print(x)

dim(x)
m <- 1:6
dim(m) <- c(2,3)
m
x <- c("Bob", "Alice", "Joe")
y <- c(1.1, 2.3, 3.4)
rbind(x, y)
# cbind(x, y)
x <- c(1,1,2,2,3,3,892)
x_factor <- factor(x)
print(x_factor)

val = c('setosa','setosa','virginica','versicolor','virginica','setosa')
val_fac = factor(val)
unclass(val_fac)


x <- c("C++", "Python", "R", "C++", "R", "Python")
x_factor <- factor(x, levels = c("R", "Python", "C++"))
unclass(x_factor)

test_frame <- data.frame(
  name = c("C++", "R", "Python"),
  num = c(10, 12, 13)
)

print(test_frame)
dput(test_frame, file="dumpTest.R")
result <- dget("dumpTest.R")

x <- c("a", "b", "c")
x[1:2]
x[x > "b"]
c <- x > "a"
print(x[c])


x <- list(foo = 1:4, bar=0.6)
print(x)
x[1]
x["bar"]
x[[1]]

x <- list(first = c(1:3), sec = c("C++", "JS", "Python"))
x[[1]][[2]]
x[[2]][[3]]

x[[c(1,2)]]
x[[c(2,3)]]


x <- matrix(1:10, nrow=2, ncol=3, byrow = TRUE)
print(x)

x[2,2]

x <- c(1,2,3,NaN,1,3, NaN)
x[is.na(x)]



x <- c(1, 2, NA, 4, NA)
y <- c("a", "b", NA, "c", "d")
good <- complete.cases(x,y)
print(good)
x[good]
y[good]


x <- 4L
class(x)

x <- c(4, TRUE)
class(x)

x <- c(1,2,3)
y <- c(5,4,3)
cbind(x, y)



x <- list(1, "a", "b", TRUE)
class(x[[2]])


x <- 1:4 
y <- 2:3
class(x+y)

x <- c(17, 14, 4, 5, 13, 12, 10)
x[x > 10] <- 4
  
  data <- read.csv("hw1_data.csv")
  nrow(data)
  
  tail(data)
  
  data[47, c("Ozone", "Solar.R")]
  
  sum(is.na(data["Ozone"]))

  
  f <- is.na(data["Ozone"])
  mean(data[!f, "Ozone"])
  
  mean(data[data$Ozone > 31 & data$Temp > 90 & !f,"Solar.R"])
  
  mean(data[data$Month == 6,"Temp"])
  
  max(data[data$Month == 5 & !f,"Ozone"])

  
x <- c("a", "b", "c", "d")
for (e in seq_len(x)) {
  print(e)
}


