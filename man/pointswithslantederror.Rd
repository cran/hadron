% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotutils.R
\name{pointswithslantederror}
\alias{pointswithslantederror}
\title{pointswithslantederror}
\usage{
pointswithslantederror(x, y, dx, dy, cor, col = "black", bcol = "black",
  ...)
}
\arguments{
\item{x}{numeric vector. x-values}

\item{y}{numeric vector. y-values}

\item{dx}{numeric vector. x-standard errors}

\item{dy}{numeric vector. y-standard errors}

\item{cor}{numeric vector. Correlation coefficients between x- and y-
errors.}

\item{col}{the color of the points}

\item{bcol}{the color of the slanted error bars}

\item{...}{further graphical parameters to be passed on to \code{points}}
}
\description{
This function plots points with x- and y-errors visualised as a
slanted errorbar. The length of the error bar represents x- and y-errors
added in quadrature. The slope of the error bar is positive of negative
depending on whether the correlation betwenn x and y is positive or
negative, respectively.
}
\details{
plots data points with slanted error bars
}
\examples{
x <- c(1:5)
y <- x^2
dx <- c(0.1, 0.2, 0.2, 0.1, 0.05)
dy <- c(0.05, 0.2, 0.1, 0.2, 0.1)
cor <- c(1, -1, -1, 1, 1)
plot(NA, xlim=range(x), ylim=range(y), xlab="y", ylab="y")
pointswithslantederror(x=x, y=y, dx=dx, dy=dy, cor=cor)

}
