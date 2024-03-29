% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bootstrap.nlsfit.R
\name{simple.nlsfit}
\alias{simple.nlsfit}
\title{NLS fit with without bootstrap}
\usage{
simple.nlsfit(fn, par.guess, y, x, errormodel, priors = list(param = c(), p =
  c(), psamples = c()), ..., lower = rep(x = -Inf, times =
  length(par.guess)), upper = rep(x = +Inf, times = length(par.guess)), dy,
  dx, CovMatrix, boot.R = 0, gr, dfn, mask, use.minpack.lm = TRUE,
  error = sd, maxiter = 500, success.infos = 1:3,
  relative.weights = FALSE, na.rm = FALSE)
}
\arguments{
\item{fn}{\code{fn(par, x, ...)}. The (non-linear) function to be fitted to the
data. Its first argument must be the fit parameters named \code{par}. The
second must be \code{x}, the explaining variable. Additional parameters
might be passed to the function. Currently we pass \code{boot.r} which is \code{0}
for the original data and the ID (1, ...) of the bootstrap sample otherwise.
As more parameters might be added in the future it is recommended that the
fit function accepts \code{...} as the last parameter to be forward compatible.}

\item{par.guess}{initial guess values for the fit parameters.}

\item{y}{the data as a one-dimensional numerical vector to be described by
the fit function.}

\item{x}{values of the explaining variable in form of a one-dimensional
numerical vector.}

\item{errormodel}{Either "yerrors" or "xyerrors", depending on the x-values having
errors or not.}

\item{priors}{List possessing the elements \code{param}, \code{p} and \code{psamples}.
The vector \code{param} includes the indices of all fit parameters that are
to be constrained and the vector \code{p} the corresponding paramater values
(e.g. known from a previous fit). The list element \code{psamples} is a matrix of
dimensions \code{(boot.R, length(param))} and contains the corresponding
bootstrap samples. If this list is not specified priors are omitted
within the fit.}

\item{...}{Additional parameters passed to \code{fn}, \code{gr} and \code{dfn}.}

\item{lower}{Numeric vector of length \code{length(par.guess)}
of lower bounds on the fit parameters. If missing, \code{-Inf}
will be set for all.}

\item{upper}{Numeric vector of length \code{length(par.guess)}
of upper bounds on the fit parameters. If missing, \code{+Inf}
will be set for all.}

\item{dy, dx}{Numeric vector. Errors of the dependent and independent
variable, respectively. These do not need to be specified as they can be
computed from the bootstrap samples. In the case of parametric bootstrap it
might would lead to a loss of information if they were computed from the
pseudo-bootstrap samples. They must not be specified if a covariance matrix
is given.}

\item{CovMatrix}{complete variance-covariance matrix of dimensions
\code{c(length(y), length(y))} or \code{c(length(y)+length(x),
length(y)+length(x))} depending on the errormodel. Pass \code{NULL} if the matrix
has to be calculated from the \code{bsamples}. In that case, if the number of
boostrap samples is small compared to the number of variables, singular value
decomposition with small eigenvalue replacement will be used (see \link{invertCovMatrix})
to attempt a clean inversion.
In case a variance-covariance matrix is passed, the inversion will simply be attempted
using \code{solve} on the Cholesky decomposition.
Finally, if \code{CovMatrix} is missing, an uncorrelated fit will be performed.}

\item{boot.R}{If larger than 0, \code{boot.R} paramtetric bootstrap samples are
generated on the fit results after fit and error calculation are finished.
The original data is never boostraped in this function.}

\item{gr}{\code{gr(par, x, ...)}. \code{gr=d(fn) / d(par)} is a function to
return the gradient of \code{fn}. It must return an array with
\code{length(x)} rows and \code{length(par)} columns.}

\item{dfn}{\code{dfn(par, x, ...)}. \code{dfn=d(fn) / dx} is the canonical
derivative of \code{fn} by \code{x} and only relevant if x-errors are
provided.}

\item{mask}{logical or integer index vector. The mask is applied to select the observations from the data that are to be used in the fit. It is applied to \code{x}, \code{y}, \code{dx}, \code{dy}, \code{bsamples} and \code{CovMatrix} as applicable.}

\item{use.minpack.lm}{use the \code{minpack.lm} library if available. This
is usually faster than the default \code{optim} but somtimes also less
stable.}

\item{error}{Function that takes a sample vector and returns the error
estimate. This is a parameter in order to support different resampling
methods like jackknife.}

\item{maxiter}{integer. Maximum number of iterations that can be used in the
optimization process.}

\item{success.infos}{integer vector. When using \code{minpack.lm} there is the
\code{info} in the return value. Values of 1, 2 or 3 are certain success. A value
of 4 could either be a success or a saddle point. If you want to interpret
this as a success as well just pass \code{1:4} instead of the default \code{1:3}.}

\item{relative.weights}{are the errors on y (and x) to be interpreted as
relative weights instead of absolute ones? If TRUE, the covariance martix
of the fit parameter results is multiplied by chi^2/dof. This is the default
in many fit programs, e.g. gnuplot.}

\item{na.rm}{logical. If set to \code{true}, NAs in \code{y} and \code{dy} will be ignored.
If x-errors are taken into account, NAs in \code{x} and \code{dx} will be ignored, too.}
}
\value{
Returns an object of class \code{bootstrapfit}, see \link{bootstrap.nlsfit}.
}
\description{
NLS fit with without bootstrap
}
\examples{
## Declare some data.
value <- c(0.1, 0.2, 0.3)
dvalue <- c(0.01, 0.01, 0.015)
x <- c(1, 2, 3)
dx <- c(0.1, 0.1, 0.1)

fn <- function (par, x, ...) par[1] + par[2] * x

fit.result <- simple.nlsfit(fn, c(1, 1), value, x, "xyerrors", dy=dvalue, dx=dx)
summary(fit.result)
}
\seealso{
Other NLS fit functions: 
\code{\link{bootstrap.nlsfit}()},
\code{\link{parametric.bootstrap.cov}()},
\code{\link{parametric.bootstrap}()},
\code{\link{parametric.nlsfit.cov}()},
\code{\link{parametric.nlsfit}()},
\code{\link{plot.bootstrapfit}()},
\code{\link{predict.bootstrapfit}()},
\code{\link{print.bootstrapfit}()},
\code{\link{summary.bootstrapfit}()}
}
\concept{NLS fit functions}
