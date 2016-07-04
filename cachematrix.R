
## Creating the cachematrix function to set and get the value of the normal matrix and inverse matrix

 makeCacheMatrix <- function(x = matrix()) 
 {
  c <- NULL
   set <- function(y) 
  {
     x <<- y
     c <<- NULL
  }
 
 get <- function() x
 setmatrix <- function(inverse) c <<- inverse
 getmatrix <- function() c
 list(set = set, get = get,
  setmatrix = setmatrix,
  getmatrix = getmatrix)
 
 }
 
## This function is used to calculate the inverse of the created matrix



 cacheSolve <- function(x, ...) 
 {
  c <- x$getmatrix()
   if ( ! is.null(c)) 
    {
     print("Cached output")
     return(c)
    }
  c <- solve(x$get())
  x$setmatrix(c)
  c
 } 


## Test output code below --

## m <- makeCacheMatrix(matrix(1:4,2))
## m$get()
## m$getmatrix()
## m$set(matrix(5:8,2))
## m$get()
## cacheSolve(m)
## cacheSolve(m)
## m$getmatrix()
## i = m$getmatrix()
## m$get() %*% i