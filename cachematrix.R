## This is the function for assignment 2.
## It will cache the inverse of a matrix

## Creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y) {
    x<<-y
    m<<-NULL
  }
  get<-function()x
  setinverse<-function(solve)m <<-inverse
  getinverse<-function()m
  list(set=set,get=get,
       setmean=setmean,
       getmean=getmean)

}


## Can compute inverse of special matrix object

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  m<-inv(data,...)
  x$setinv(m)
  m
}
