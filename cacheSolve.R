#R Version 3.3.3

#Assuming that 'x' has been set by makeCacheMatrix with
# a square matrix as its input argment

cacheSolve <- function(x, ...) {
  
  #Set a variable 's' as the build-in function 'solve'
  s <- x$getsolve()
  
    #Note: 's' has got cached data if it's not NULL(it's)
  if(!is.null(s)) {
    #Send "getting cached data" to the console
    message("getting cached data")
    #As we know, 's' hasn't inited correctly, so we return 's',
    #and the whole function end
    return(s)
  }
  
  #The 's' is NULL, which means 'x' is a correct input argrument,
  #the implemention continues
  
  #Creat a new variable 'data' and send the argument we had sent to 
  #function 'makeCacheMatrix' before to 'data', 
  #which is a preparation for 
  #calculating the the argument's inverse matrix
  data <- x$get()
  
  #Calculate the the argument's inverse matrix and send it to 's'
  s <- solve(data, ...)
  
  #Send the matrix we got from last step to the 
  #varible 'sv'in function 'makeCacheVector'
  # The value of 'x$getsolve()' would be returned directly if we implement the 
  #function with the same argument second time
  
  #example:
  #a<-makeCacheMatrix(x)
  #cacheSolve(a)
  #output:[1] inv_matrix(a)  ---the inverse matrix of 'a'
  #cacheSolve(a)
  #output:
  #getting cached data  -------message we set in if structure
  #[1] inv_matrix(a)        ---the inverse matrix of 'a'
  x$setsolve(s)
  
  #Return 's'
  s
}
