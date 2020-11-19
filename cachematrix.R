## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Function takes in a matrix, has 4 functions within

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

## Takes "makeCacheMatrix" as argument, if there's no inverse
## already present then solve and store as Cache, otherwise display
## Cache data

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  dt <- x$get()
  m <- solve(dt,...)
  x$setinv(m)
  m
}
