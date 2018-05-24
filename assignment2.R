## Cache inverse of a matrix

## set a list of functions that will be called in cacheSolve (get rid of set function)

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m
  list(get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Call the functions and calculate the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setInverse(m)
    m 
}
  

