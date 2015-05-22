#The program will create a special matrix
# and cche the  inverse of the matrix
# The following COmputes the inverse of a square matrix


makeCacheMatrix<-function(x=matrix()){
   
 #function creates special matrix to cache object
 #first set special matrix
 
  invn <-NULL           #  stores inverse
  set <-function(y){    #sets function
    
    x<<-y
    invn<<-NULL   
  }
 get <-function() x     # will return raw matrix
 
 setinv <-function(i)  invn <<-i # inverse function
  
 getinv <-function() invn        # get inverse  function
   

 # return special matrix set
 
 list(set=set, get=get, setinv=setinv, getinv=getinv)
 
}

# program to compute inverse of above matrix

cacheSolve <-function(x,...){
  invn<-x$getinv()
  
  if(!is.null(invn)){
    message("getting cached data")
    return(invn)
  }
  #calculate inverse and provide result
  matinv <-x$get()
  invn<- solve(matinv,...)
 x$setinv(invn)
  invn
# return(invn)
}