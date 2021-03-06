% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hankel.R
\name{bootstrap.hankel}
\alias{bootstrap.hankel}
\title{GEVP method based on Hankel matrices.}
\usage{
bootstrap.hankel(cf, t0 = 1, n = 2, N = (cf$Time/2 + 1),
  t0fixed = TRUE, deltat = 1, Delta = 1, submatrix.size = 1,
  element.order = 1)
}
\arguments{
\item{cf}{object of type \link{cf}}

\item{t0}{Integer. Initial time value of the GEVP, must be in between 0 and
\code{Time/2-n}. Default is 1. Used when \code{t0fixed=TRUE}.}

\item{n}{Integer. Size of the Hankel matrices to generate}

\item{N}{Integer. Maximal time index in correlation function to be used in
Hankel matrix}

\item{t0fixed}{Integer. If set to \code{TRUE}, keep t0 fixed and vary deltat, otherwise
keep deltat fixed and vary t0.}

\item{deltat}{Integer. value of deltat used in the hankel GEVP. Default is 1. Used
\code{t0fixed=FALSE}}

\item{Delta}{integer. Delta is the time shift used in the Hankel matrix.}

\item{submatrix.size}{Integer. Submatrix size to be used in build
of Hankel matrices. Submatrix.size > 1 is experimental.}

\item{element.order}{Integer vector. specifies how to fit the \code{n} linearly ordered single
correlators into the correlator
matrix for submatrix.size > 1. \code{element.order=c(1,2,3,4)} leads to a matrix
\code{matrix(cf[element.order], nrow=2)}.
Matrix elements can occur multiple times, such as \code{c(1,2,2,3)} for the symmetric case,
for example.}
}
\value{
List object of class "hankel". The eigenvalues are stored in a
numeric vector \code{t0}, the corresonding samples in \code{t}. The reference input
time \code{t0} is stored as \code{reference_time} in the returned list.
}
\description{
Alternative method to determine energy levels from correlation
matrices. A so-called Hankel matrix is generated from an input
\link{cf} object and a generalised eigenvalue problem is solved
then. This is the function to call. It will perform a bootstrap
analysis.
}
\details{
See \code{vignette(name="hankel", package="hadron")}
}
\examples{

data(correlatormatrix)
correlatormatrix <- bootstrap.cf(correlatormatrix, boot.R=99, boot.l=1, seed=132435)
t0 <- 4
correlatormatrix.gevp <- bootstrap.gevp(cf=correlatormatrix, t0=t0, element.order=c(1,2,3,4))
pc1 <- gevp2cf(gevp=correlatormatrix.gevp, id=1)
pc1.hankel <- bootstrap.hankel(cf=pc1, t0=1, n=2)
hpc1 <- hankel2cf(hankel=pc1.hankel, id=1)
plot(hpc1, log="y")
heffectivemass1 <- hankel2effectivemass(hankel=pc1.hankel, id=1)
}
\seealso{
Other hankel: 
\code{\link{bootstrap.hankel_summed}()},
\code{\link{gevp.hankel_summed}()},
\code{\link{gevp.hankel}()},
\code{\link{hankel2cf}()},
\code{\link{hankel2effectivemass}()},
\code{\link{plot_hankel_spectrum}()}
}
\concept{hankel}
