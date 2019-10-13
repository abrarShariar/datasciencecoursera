
foo <- function(x, y) {
  x * y
}

foo(10,9)


above_10 <- function (vect, cut) {
   vect[vect > cut]
}

above_10(c(1:100), 50)

temp <- c(11,12,10,9)
temp[temp > 10]


calculate_mean <- function (mat) {
  col_num <- ncol(mat)
  res <- numeric(col_num)
  for(i in 1:col_num) {
    res[i] <- mean(mat[,i])
  }
  res
}


my_mat <- matrix(c(1,10,2,20,3,30), nrow = 2, ncol = 3)
my_mean <- calculate_mean(my_mat)


mean(c(10,20,30, NA), na.rm = TRUE)

