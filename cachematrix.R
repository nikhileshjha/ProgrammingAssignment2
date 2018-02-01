## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#Here i stores the inverse of the x matrix
#i is cleared everytime value of x is changed
makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inv) i <<- inv
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}
}


## Write a short comment describing this function
# We can access the getinverse() function as it is linked with the object x
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
