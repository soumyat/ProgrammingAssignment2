# Programming Assignment2: Lexical Scoping in R'
# Assumption is that SQUARE matrix is supplied which is always invertible.
# Function to create special matrix object to cache its inverse #


makeCacheMatrix <- function(x = matrix()) {
  #Set Inverse of Matrix as NULL
  minv <- NULL
  #Sets the inverse of matrix as NULL for new matrix
  set <- function(y) {
    x <<- y
    minv <<- NULL
  }
  #Returns in the input matrix
  get <- function() x
  #Calculates the inverse of matrix and sets minv 
  setinverse<-function(solve) minv<<-solve
  #Returns the inverse matrix
  getinverse<-function()minv
  #Lis of functions
  list(set=set,get=get, setinverse=setinverse,
       getinverse=getinverse)
  
}

#Function to Cache Inverse of matrix
cacheSolve <- function(x, ...) {
  #Fetches the Inverse of the matrix
  minv <- x$getinverse()
  #Checks if the Inverse of matrix if null, computes the inverse else returns the cached value
  if (is.null(minv)) {
    message("Newly Cached Inverse Data")
    #Fetch the matrix for which inverse is to be calculated
    data <- x$get()
    #Solve is used to compute the inverse of a matrix
    minv <- solve(data, ...)
    #Set the inverse value of matrix
    x$setinverse(minv)
  } else {
    message("Existing Cached Inverse data")
  }
  minv   # or Return the computed value of inverse of matrix
}
