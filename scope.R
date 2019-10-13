y <- 10

foo <- function (x) {
  y <- 2
  y * g(x)
}

g <- function (x) {
  x + y
}

foo(2)