
## Cache inverse matrix

## Return inverse of Matrix

makeCacheMatrix <- function(x = matrix()) {
  h <- NULL
  set <- function(y) {
    x <<- y
    h <<- NULL
  }
  get <- function() x 
  setinvmatrix <- function(inverse) h <<- inverse
  getinvmatrix <- function() h
  list(set= set, 
       get= get, 
       setinvmatrix = setinvmatrix, 
       getinvmatrix = getinvmatrix)
}


## Cache inverse matrix

cacheSolve <- function(x, ...) {
    h <- x$getinvmatrix()
    if(!is.null(h)) {
      message("getting cached data")
      return(h)
    }
    data <- x$get()
    h <- solve(data, ...)
    x$setinvmatrix(h)
    h
  }