makecacheVector <- function(matrix = numeric()) {
  + i <- NULL
  + set <- function(matrix) {
    + x <<- matrix
    + i <<- NULL
    + }
  + get <- function() x
  + setinverse <- function(mean) x <<- mean
  + getinverse <- function() x
  + list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  + }
> 
  > 
  > cachemean <- function(x, ...) {
    + matrix <- x$getinverse()
    + if(!is.null(matrix)) {
      + message("getting cached data")
      + return(matrix)
      + }
    + data <- matrix$get()
    + matrix <- solve(data)
    + matrix$setsolve(matrix)
    + matrix()
    + }
  > 