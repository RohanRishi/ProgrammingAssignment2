## The functions allow us to save computational power on matrix inversion by helping us cache the inverses.

## makeCacheMatrix creates a list for functions that are capable of:
# setting the value of a matrix 
# getting the value of a matrix
# setting the value of the given matrix's inverse
# getting the value of the given matrix's inverse



makeCacheMatrix <- function(x = matrix()) {

    inv = NULL
    
    
            
    set <- function(y){
        x <<- y
        inv <<- NULL
    }
    
    get <- function(){x}
    
    
    
    setinverse <- function(inverse){inv <<- inverse}
    
    getinverse <- function(){inv}
    
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## cachesolve returns the inverse of the given matrix. It first checks if the inverse is already computed,
# and if so, it returns the cached value. Otherwise, it calculates the inverse, sets the value in cache, and then returns it.
# We're also assuming that the given matrix is always invertible

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    if(!is.null(inv)){
        
        message('getting cached data...')
    }
    
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
    
}
