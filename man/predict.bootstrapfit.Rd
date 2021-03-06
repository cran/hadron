% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bootstrap.nlsfit.R
\name{predict.bootstrapfit}
\alias{predict.bootstrapfit}
\title{Predict values for bootstrapfit}
\usage{
\method{predict}{bootstrapfit}(object, x, error = object$error.function, ...)
}
\arguments{
\item{object}{Object of type bootstrapfit.}

\item{x}{Numeric vector with independent variable.}

\item{error}{Function to compute error from samples.}

\item{...}{additional parameters to be passed on to the prediction function.}
}
\value{
List with independent variable \code{x}, predicted central value \code{val}, error
estimate \code{err} and sample matrix \code{boot}.
}
\description{
Predict values for bootstrapfit
}
\seealso{
Other NLS fit functions: 
\code{\link{bootstrap.nlsfit}()},
\code{\link{parametric.bootstrap.cov}()},
\code{\link{parametric.bootstrap}()},
\code{\link{parametric.nlsfit.cov}()},
\code{\link{parametric.nlsfit}()},
\code{\link{plot.bootstrapfit}()},
\code{\link{print.bootstrapfit}()},
\code{\link{simple.nlsfit}()},
\code{\link{summary.bootstrapfit}()}
}
\concept{NLS fit functions}
