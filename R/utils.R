#' Normalize sequence values to (0,1).
#'
#' Computes (x - min x)/(max x - min x).
#'
#' @param  x The sequence to normalize.
#' @return  The normalized sequence.
#' @export
normalize <- function(x){
    if(!max(x) == min(x)){
      (x - min(x))/(max(x) - min(x)) 
    } else {
      rep(0, length(x))
    }
  }


#' Create list of all possible index patterns 
#'  for a given downsampling amount.
#' 
#' Creates a list of indices that correspond to 
#'  possible downsampling of a vector of length n
#'  at the given downsample rate.
#'
#' @param  n Length of list.
#' @param  ds Downsample rate.
#'
#' @return  List of indices 
#' @export
downsample_perm <- function(n, ds){
  x   <- 1:n
  ind  <- vector("list", ds)    
  for (k in 1:ds){
    ind[[k]] <- x[(x - (k))%% ds == 0] 
  }
  ind
}

#' Create indices to randomly downsample a sequence.
#' 
#' Creates a list of indices that sample a fractional
#'  of the total values. The fraction sampled is
#'  1/2:ds, the same fraction sampled in downsample_perm.
#'
#' @param  n Length of list.
#' @param  ds Downsample rate.
#'
#' @return  List of indices 
#' @export
random_sample <- function(n, ds){
  x <- 1:n
  sample_num <- floor(1/ds * n)
  ind <- vector("list", ds)
  for (k in 1:ds){
    ind[[k]] <- sort(sample(x, sample_num, replace = FALSE))
  }
  ind
}

#----------------------------------------------------------
# Added for testing affect of error types. 
# In summary, mae and mse performed similarly.
#----------------------------------------------------------

# mean computed in error function
mae <- function(x, y){
  sum(abs(x - y))
}

mse <- function(x, y){
  sum((x - y)^2)
}

maxerr <- function(x, y){
  max(abs(x - y))
}

