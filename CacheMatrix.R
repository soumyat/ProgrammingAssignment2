# Function to create special matrix object to cache its inverse #
makeCacheMatrix <- function(x = matrix()) {
  #Set matrix inverse to NULL
  minv <- NULL
  set <- function(y) {
    x <<- y
    minv <<- NULL
  }
  get <- function() x
  #Inverse of matrix is calculated using solve function
  setinverse<-function(solve) minv<<-solve
  getinverse<-function()minv
  list(set=set,get=get, setinverse=setinverse,
       getinverse=getinverse)
  
}
