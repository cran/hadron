% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/matrixfit.R
\name{bootstrap.meanerror}
\alias{bootstrap.meanerror}
\title{Compute the bootstrap error of the mean}
\usage{
bootstrap.meanerror(data, R = 400, l = 20)
}
\arguments{
\item{data}{Original data to bootstrap}

\item{R}{Number of bootstrap replicates.}

\item{l}{Block length.}
}
\value{
Returns a numeric vector with the estimated standard error
of the mean.
}
\description{
Compute the bootstrap error of the mean
}
