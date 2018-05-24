## Cache inverse of a matrix
## How to use it:
## 1) define da, inverse as NULL
## 2) Define a matrix  
## 3) call the nested function
## the code in the console should be like:

# source("cachematrix.R")
# da <- NULL
# inverse <- NULL
# d <- matrix(rnorm(9,1,0.4),3,3)
# cacheSolve(makeCacheMatrix(d))
# cacheSolve(makeCacheMatrix(d))
# d <- matrix(rnorm(9,2,0.1),3,3)
# cacheSolve(makeCacheMatrix(d))
# cacheSolve(makeCacheMatrix(d))

## set a list of functions that will be called in cacheSolve

makeCacheMatrix <- function(x = matrix()) {
  get <- function() x
  getInverse <- function() inverse
  list(get=get,getInverse=getInverse)
}


## Call get() and getInverse()

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(identical(da, x$get())) {
    message("getting cached data")
    return(inverse)
    break
  }
  da <<- x$get()
  inverse <<- solve(da, ...)
  inverse
}
