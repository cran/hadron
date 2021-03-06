% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/raw_cf.R
\name{plot.raw_cf}
\alias{plot.raw_cf}
\title{plot all correlators in \code{raw_cf} object}
\usage{
\method{plot}{raw_cf}(x, ..., reim = "real", reim_same = FALSE)
}
\arguments{
\item{x}{Object of class \code{raw_cf} with data and meta-data.}

\item{...}{Further parameters passed to \link{plotwitherror}.}

\item{reim}{Character vector, may contain 'real', 'imag' or 'both'. Determines
whether the real and/or imaginary parts of the correlation funtions
should be plotted.}

\item{reim_same}{Boolean, determines whether the real and imaginary parts, if both
are to be plotted, will be plotted in the same plot.}
}
\value{
Invisibly returns the plotdata, see \link{get_plotdata_raw_cf}.
}
\description{
plot all correlators in \code{raw_cf} object
}
