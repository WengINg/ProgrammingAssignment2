## Put comments here that give an overall description of what your
## functions do
# These two functions are used to create a special object that stores a matrix and caches its inverse. 
# The first function, makeCacheMatrix creates a special “matrix”, which is really a list containing a function to
# set the value of the matrix
# get the value of the matrix
# set the value of the inverse
# get the value of the inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  a  <- NULL
  set <- function(y){
    x <<- y
    a <<- NULL
  }
  get <- function(x)
  setinverse <- function(inverse) a <<- inverse
  getinverse <- function() a
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse =getinverse)

}


## Write a short comment describing this function
# This function computes the inverse of the special “matrix” returned by makeCacheMatrix above. 
# If the inverse has already been calculated, then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  a <- x$getinverse()
  if(!is.null(a)){
    message("getting cached data")
  return(a)
}
data <- x$get()
a <- solve(data, ...)
x$setinverse(a)
a

}
