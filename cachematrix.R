

## Write a short comment describing this function
make_cache_matrix <- function(x = numeric()) {
  
  #make cache matrix. First it = NULL
  cache_matrix <- NULL
  
  # make function for storing matrix. Use var WS for stoting
  ## after reading again make cache matrix = NULL
  work_matrix <- function(work_set) {
    WS <<- work_set
      cache_matrix <<- NULL
  }
 ## Make function for wrting X matrix
  get_work_matrix <- function() {
    WS
  }
  
  ## Make the cache of giving data
  cache_inverse_matrix <- function(cach_inv) {
    cache_inv_matrix <<- cach_inv
  }
  
  ## Make the function for getting data frim the last cache 
  get_innverse_matrix <- function() {
    cache_inv_matrix
  }
  
  ## return a list
  ## of all functions
  list(work_matrix = work_matrix, get_work_matrix = get_work_matrix, 
       cache_inverse_matrix = cache_inverse_matrix, get_innverse_matrix = get_innverse_matrix)
}


# Here the inverse value of  matrix from makeCacheMatrix will
## be calculated

cacheSolve <- function(z, ...) {
  
  ## get the value from cache
  inverse_value <- z$get_innverse_matrix()
  ## the if statement
  ## calculate inverse  if the cache does not exist exists
  if(!is.null(inverse_value)) {
  
   return(inverse_value)
  }
 
  data <- z$get_work_matrix()
  inverse_value <- solve(data)
  z$cache_inverse_matrix(inverse_value)
  inverse_value
}