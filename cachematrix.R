## makeCacheMatrix gives options to 4 functions

## just as the example, this function returns a vector that 
## 1/ set the value of the matrix 2/ get the value of the matrix
## 3/ set the inverse 4/ get the inverse
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
    x <<- y
    inv <<- NULL
	}
get <- function() x
setinv <- function(inverse) inv <<- inverse
getinv <- function() inv
list (set = set, get = get,
     setinv = setinv,
     getinv = getinv)
}
## return the inverse of a cached Matrix object

cacheSolve <- function(x, ...) {
    inv <- x$getinv()
    ## check whether the inverse has been calculated
    if(!is.null(inv)){
        message("Getting cached data...")
        return(inv)
    }
    ## Computing the inverse of a square matrix
    data <- x$get()
    inv <- solve(data, ...)
    ## can be done with the solve function in R.
    x$setinv(inv)
    inv
        ## Return a matrix that is the inverse of 'x'
}
