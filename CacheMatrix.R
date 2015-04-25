makeCacheMatrix <- function(x = matrix()) {
  minv <- NULL
  set <- function(y) {
    x <<- y
    minv <<- NULL
  }
  get <- function() x
  setinverse<-function(solve) minv<<-solve
  getinverse<-function()minv
  list(set=set,get=get, setinverse=setinverse,
       getinverse=getinverse)
  
}
