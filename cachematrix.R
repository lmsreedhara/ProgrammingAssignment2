## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## initialize
  i <- NULL
  
  ## setting the matrix
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  
  ## get the matrix
  get <- function() {
    ## Return the matrix
    m
  }
  
  ## set the inverse of the matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  ## get the inverse of the matrix
  getInverse <- function() {
    ## Return the inverse
    i
  }
  
  ## list of the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
        

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## matrix that is the inverse of 'x'
  m <- x$getInverse()
  
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  
  ## Get the matrix 
  data <- x$get()
  
  ## Calculate the inverse using matrix multiplication
  m <- solve(data) %*% data
  
  ## Set the inverse 
  x$setInverse(m)
  
  ## Return the matrix
  m
        
}
