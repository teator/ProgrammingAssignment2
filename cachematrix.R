## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL     # set empty matrix
    set <- function(y){     #function that inverse given matrix
        x <<- y     # inverse given matrix
        inv <<- NULL
    }
    get <- function() x
    setinv <- function(inverse) inv <<- inverse     # set inverse matrix
    getinv <- function() inv     # get inverse matrix
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInv()
        if(!is.null(inv)){     # check if matrix is cached
                message("getting cached data")     # message about retrieving cached data
                return(inv)     # get cached matrix
    }
    data <- x$get()
    inv <- solve(data)     # inversing matrix
    x$setInv(inv)
    inv
}
