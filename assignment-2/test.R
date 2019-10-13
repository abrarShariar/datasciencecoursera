makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}

cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}


my_vect <- makeVector(c(10,11,12,13))
cachemean(my_vect)

vect2 <- makeVector(c(1,2,3,4))
class()

print(my_vect$getmean())
m1 <- matrix(1:4, nrow=2, ncol=2)
mat1 <- makeCacheMatrix(m1)
cacheSolve(mat1)
mat1$getInverse()

