
* Here I make the cache matrix

make_cache_matrix <- function(x = numeric()) {
  
  #make cache matrix. First it = NULL
  cache_matrix <- NULL
  
  # make function for storing matrix. Use var WS for stoting
  ## after reading again make cache matrix = NULL
  
  
* Here I set the matrix and srote it.
  Then the cache matrix I want to become       empty again
  
  work_matrix <- function(work_set) {
    WS <<- work_set
      cache_matrix <<- NULL
  }


* here I return the WS matrix
  get_work_matrix <- function() {
    WS
  }
  
 * Here I make the cache of giving data
  cache_inverse_matrix <- function(cach_inv) {
    cache_inv_matrix <<- cach_inv
  }
  
 * Here I make the function for getting data from the last cache 
 
  get_innverse_matrix <- function() {
    cache_inv_matrix
  }
  
 * Here I just return the list of functions
 
  list(work_matrix = work_matrix, get_work_matrix = get_work_matrix, 
       cache_inverse_matrix = cache_inverse_matrix, get_innverse_matrix = get_innverse_matrix)
}


* Here the inverse value of  matrix from        makeCacheMatrix will
  be calculated
  First it checks if the cache matrix is not empty
  If not, retusn the cache matrix.
  if it is empty, it gets the matrix, calculates the inverse value and stores it to the 
  my z matrix in the cache colomn

cacheSolve <- function(z, ...) {
  
  ## get the value from cache
  inverse_value <- z$get_innverse_matrix()
  ## the if statement

  if(is.null(inverse_value)) {
    data <- z$get_work_matrix()
    inverse_value <- solve(data)
    z$cache_inverse_matrix(inverse_value)
   
  }
 
  else
    {  return(inverse_value)
      }
  inverse_value
}