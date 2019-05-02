#R Version 3.3.3

makeCacheMatrix<- function(x = matrix()) {
  #create a variable 's' and set its value as NULL
  s <- NULL
  
  #Creat a function named 'set' which would set 'x' as same as 'y' 
  #and set 's' as NULL ('x' and 's' are values to 
  #objects in an environment that is different from the
  #current environment)
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  
  #Create a function 'get' which would return 'x' without any input argments
  get <- function() x
  
  #Create a function 'setsolve' that would set 's' 
  #as the bult-in function 'solve'
  setsolve <- function(solve) s <<- solve
  
  #Create a function 'getsolve' 
  #which would return 's' without any input argments
  getsolve <- function() s
  
  #return a list contain 'set','get','setsolve' and 'getsolve'
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}