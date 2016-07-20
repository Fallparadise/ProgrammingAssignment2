## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#1.set the value of the matrix
#2.get the value of the matrix
#3.set the value of inverse of the matrix
#4.get the value of inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
        #initial the inverse
        i<-NULL
        #set up the matrix
        set<-function(martix){
                m<<-matrix
                i<<-NULL
        }
        #get matrix
        get<-function()m#return m
        
        #set inverse of matrix
        setinverse<-function(inverse)i<<-inverse

        #get inverse 
        getinverse<-function()i
        
        #return the list    
        list(set=set,get=get,
        setinverse=setinverse,getinverse=getinverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       
        m<-x$getinverse()
        #return the inverse if it have already set
        if(!is.null(m)){
                message("getting cache data")
                return(m)
        }
        #get the matrix from object
        data<-x$get()
        #get the inverse matrix
        m<-solve(data)
        #set the inverse to the object
        x$setinverse(m)
        # Return a matrix that is the inverse of 'x'
        m
}
