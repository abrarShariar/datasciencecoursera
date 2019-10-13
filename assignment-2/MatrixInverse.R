## This function contains the setters and getters for the matrix
## Takes a matrix param

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function (y) {
    x <<- y
    inv <<- NULL
  }
  get <- function () x
  setInverse <- function (inverse) inv <<- inverse
  getInverse <- function () inv
  list (
    set = set,
    get = get,
    setInverse = setInverse,
    getInverse = getInverse
  )
}

## This function calculates the inverse matrix 
## Accepts a matrix object returned from the above function

cacheSolve <- function (x, ...) {
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("getting cache data")
    return(m)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setInverse(inv)
  inv
}


