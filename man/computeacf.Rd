% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/computeacf.R
\name{computeacf}
\alias{computeacf}
\title{Computes The ACF and Integrated AC Time}
\usage{
computeacf(tseries, W.max, Lambda = 100)
}
\arguments{
\item{tseries}{the time series.}

\item{W.max}{maximal time lag to be used.}

\item{Lambda}{cut-off needed to estimate the standard error of the ACF.}
}
\value{
It returns a list of class \code{hadronacf} with members
\item{lags}{time lags of the integrated autocorrelation function}
\item{Gamma}{normalised autocorrelation function} \item{dGamma}{error of
normalised autocorrelation function} \item{W.max}{max time lag used for
the call of \code{acf}} \item{W}{the cut-off up to which the ACF is
integrated for the integrated autocorrelation time} \item{tdata}{the
original time series} \item{tau}{the estimated integrated autocorrelation
time} \item{dtau}{the estimated error of the integrated autocorrelation
time}
}
\description{
Computes the ACF and integrated autocorrelation time of a time series. It
also estimates the corresponding standard errors.
}
\details{
The standard error of the ACF is computed using equation (E.11) of M.
Luescher, hep-lat/0409106. The error of the integrated autocorrelation time
using the Madras Sokal formula, see also hep-lat/0409106.
}
\examples{

data(plaq.sample)
myacf <- computeacf(plaq.sample, 300)
plot(myacf)
summary(myacf)

}
\references{
'Monte Carlo errors with less errors', Ulli Wolff,
http://arxiv.org/abs/hep-lat/0306017hep-lat/0306017

'Schwarz-preconditioned HMC algorithm for two-flavour lattice QCD', Martin
Luescher, http://arxiv.org/abs/hep-lat/0409106hep-lat/0409106

N. Madras, A. D. Sokal, J. Stat. Phys. 50 (1988) 109
}
\seealso{
\code{\link{uwerr}}, \code{\link{acf}}
\code{\link{bootstrap.analysis}}
}
\author{
Carsten Urbach, \email{curbach@gmx.de}
}
\keyword{autocorrelationfunction}
\keyword{autocorrelationtime}
\keyword{timeseries}
