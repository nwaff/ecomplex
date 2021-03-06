% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/palarm.R
\name{palarmf}
\alias{palarmf}
\title{Recursive algorithm for detection of change points by successive interval
bisection.}
\usage{
palarmf(X, kin = double(0), P = 1, delta = 1, thresh = 1.224, m = 5,
  epsilon = 0.02)
}
\arguments{
\item{X}{Local data.}

\item{kin}{Vector containing estimated global change points.}

\item{P}{Global index of first point of local data.}

\item{delta}{Detect parameter.}

\item{thresh}{Minimum statistic for change point characterization.}

\item{m}{Minimum interval size.}

\item{epsilon}{Minimum relative distance of change point from endpoints.

 @return kout    Updated vector of estimated global change points.}
}
\description{
Recursive algorithm for detection of change points by successive interval
bisection.
}

