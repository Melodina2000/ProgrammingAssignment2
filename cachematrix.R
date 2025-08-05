## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL  # initialize the inverse as NULL
  
  # function to set the matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL  # reset inverse when the matrix is changed
  }
  
  # function to get the matrix
  get <- function() x
  
  # function to set the inverse
  setInverse <- function(inverse) inv <<- inverse
  
  # function to get the inverse
  getInverse <- function() inv
  
  # return a list of the above functions
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  
  # check if the inverse is already cached
  if (!is.null(inv)) {
    message("Getting cached inverse")
    return(inv)
  }
  
  # compute the inverse and cache it
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  
  inv
}
