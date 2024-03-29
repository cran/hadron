% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cyprus_readutils.R
\name{cyprus_make_key_vector}
\alias{cyprus_make_key_vector}
\title{HDF5 key for Cyprus CalcLoops derivative-type loops}
\usage{
cyprus_make_key_vector(istoch, loop_type, dir, cid = 4,
  accumulated = FALSE)
}
\arguments{
\item{istoch}{Integer, index of the stochastic sample that the key should
be generated for.}

\item{loop_type}{String, name of loop type. Allowed values:
'Loops', 'LpsDw', 'LpsDwCv', 'LoopsCv'}

\item{dir}{Integer, lattice direction of the derivative. Allowed values:
\code{0 == x}, \code{1 == y}, \code{2 == z}, \code{3 == t}.}

\item{cid}{Integer, configuration number, internally produced by the CalcLoops
tool via the "trajectory" input flag. The default is '4' as this is
often not used in practice.}

\item{accumulated}{Boolean, depending on whether the loop data was accumulated
over the stochastic source d.o.f. or not, the keys are
different. Default: FALSE}
}
\value{
A character vector with the HDF5 key.
}
\description{
Generates an HDF5 key (full path) for the derivative
type loops from the Cyprus CalcLoops application.
}
