% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readutils.R
\name{readoutputdata}
\alias{readoutputdata}
\title{Read Data In output.data Format of tmLQCD}
\usage{
readoutputdata(filename)
}
\arguments{
\item{filename}{filename of the data file}
}
\value{
returns a data frame of class \dQuote{outputdata} containing the
data.

Returns an object of class \code{outputdata} derived from a data.frame
as generated by \link{read.table} applied to the input file.
}
\description{
reads data from an output.data file written by tmLQCD
}
\details{
The data can be plotted directly using \dQuote{plot}.
}
\examples{

plaq <- readoutputdata(paste0(system.file(package="hadron"), "/extdata/output.data"))
plot(plaq)

}
\author{
Carsten Urbach \email{curbach@gmx.de}
}
\keyword{file}
