#R Version 3.3.3

makeCacheMatrix<- function(x = matrix()) {
  #create a variable 'sv' and set its value as NULL
  sv <- NULL
  
  #Creat a function named 'set' which would set 'x' as same as 'y' 
  #and set 'sv' as NULL ('x' and 'sv' are values to 
  #objects in an environment that is different from the
  #current environment)
  set <- function(y) {
    x <<- y
    sv <<- NULL
  }
  
  #Create a function 'get' which would return 'x' without any input argments
  get <- function() x
  
  #Create a function 'setsolve' that would set 'sv' 
  #as the bult-in function 'solve'
  setsolve <- function(solve) sv <<- solve
  
  #Create a function 'getsolve' 
  #which would return 'sv' without any input argments
  getsolve <- function() sv
  
  #return a list contain 'set','get','setsolve' and 'getsolve'
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}