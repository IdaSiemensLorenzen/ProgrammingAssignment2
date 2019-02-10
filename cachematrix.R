## The aim with the assignment is to  write a pair of functions that cache the inverse of a matrix, namely  "makeCacheMatrix" and "cacheSolve".


## The first function which is called "makeCacheMatrix" is a function that creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

}

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## The second function which is called "cacheSolve" computes the inverse of the special "matrix" returned by makeCacheMatrix above. 

}
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
