% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hadron-package.R
\name{jackknife-after-bootstrap}
\alias{jackknife-after-bootstrap}
\alias{jackknifeafterboot}
\alias{jab.cf}
\alias{jab.cf.derived}
\alias{jab.effectivemass}
\alias{jab.effectivemassfit}
\alias{jab.matrixfit}
\title{jackknife-after-bootstrap analysis}
\arguments{
\item{cf}{An object of class \code{cf} generated by
\code{\link{bootstrap.cf}} with \code{sim="fixed"}.}

\item{m}{\code{m} denotes the number of (overlapping) blocks to delete for
the JAB analysis.}
}
\value{
Returns an object of class \code{cf} with an element
\code{jack.boot.se}, which is the JAB estimate of standard error of the
standard error.
}
\description{
jackknife-after-bootstrap (JAB) analysis for errors of errors of correlation
functions of class \code{cf}.

We apply the jackknife-after-bootstrap method as proposed by Efron (1992)
for iid data and extended by Lahiri (2002) for dependent data. Blocks of
bootstrap samples are deleted for a jackknife analysis. The jackknife
replicates are computed from the bootstrap samples in which the
corresponding block of blocks is missing.

We use here the moving blocked bootstrap (MBB) which uses overlapping
blocks. The estimate of standard error of the bootstrap error is computed
using formula (2.3) from Lahiri, 2002: \deqn{\mathrm{var}_\mathrm{jab} =
(m(N-m)^{-1})M^{-1} \sum_{i=1}^M (\tilde t_n^{(i)}-\hat t_n)^2}{% var_jap =
(m(N-m)^-1)M^-1 \sum_{i=1}^M (ttilde_n^(i)-that_n)^2} with \deqn{\tilde
t_n^{(i)} = m^{-1}(N\hat t_n - (N-m)\hat t_n^{(i)}).}{% ttilde_n^(i) = m^-1
(N that_n - (N-m) that_n^(i)).} Here, \eqn{\hat t_n}{that_n} is the MBB
estimate (in our case of standard deviation) and \eqn{\hat
t_n^{(i)}}{that_n^(i)} is the i-th jackknife replication of it.
}
\references{
S.N. Lahiri, "On the jackknife-after-bootstrap method for
dependent data and its consistency properties", Econometric Theory, 2002,
Vol. 18, 79-98
}
\seealso{
\code{\link{bootstrap.cf}}, \code{\link{cf}},
\code{\link{jackknife.cf}}
}
\author{
Carsten Urbach \email{curbach@gmx.de}
}
\keyword{boostrap-after-jackknife}
\keyword{bootstrap}
\keyword{error-of-error}
\keyword{jackknife}
