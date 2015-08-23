## This function will cache the inverse of a matrix

## just as the example, this function returns a vector that 
## 1/ set the value of the matrix 2/ get the value of the matrix
## 3/ set the inverse 4/ get the inverse
makeCacheMatrix <- function(x = matrix()) {

}
inv <- NULL
set <- function(y) {
    x <<- y
    inv <<- NULL
}
get <- function() x
setinv <- function(inverse) inv <<- inverse
getinv <- function() inv
list(set = set, get = get,
     setinv = setinv,
     getinv = getinv)

## This function creates a special "matrix" object 
## that can cache its inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
