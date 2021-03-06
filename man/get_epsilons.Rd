% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecomplex.R
\name{get_epsilons}
\alias{get_epsilons}
\title{Compute epsilon errors for a time series.}
\usage{
get_epsilons(func)
}
\arguments{
\item{func}{A structure with the time series, interpolation method, 
and parameters for the method.}
}
\value{
A \code{list} with :
\tabular{ll}{
\code{epsilons} \tab The mean sum of absolute errors at each level \cr
\code{methods}  \tab The method used or a list of methods if method 
                     "all" is used. 
}
}
\description{
Computes the mean absolute error (MAE) of a time
 series for each downsample level using an 
 interpolation (or approximation) method of type
 basis-spline, cubic spline or lifting sche
}

