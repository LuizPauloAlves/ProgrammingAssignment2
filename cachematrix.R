## The first function stores the matrix information and does its inverse in

## When receiving information from the matrix
## first declares the function that assigns the matrix values to variable x
## then makes the assignment to variable x
## does the function to declare the inverse matrix
## tells the value of the inverse matrix for x
## creates a list with this information to be used in the next function


makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv() <<- NULL
    }
    get <- function() x
    setinv <- function(Inverse) inv <<- Inverse
    getinv <- function() inv
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}


## uses the information from the previous function
## checks if there is any data in the inv variable
## after informing the values of the matrix
## makes the inverse matrix
## gives the inverse matrix for the inv variable
## print the inverse matrix

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getinv()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- Inverse(data)
    x$setinv(inv)
    inv
}