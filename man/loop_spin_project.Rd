% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/looptools.R
\name{loop_spin_project}
\alias{loop_spin_project}
\title{spin projection of quark loop data}
\usage{
loop_spin_project(loop, gamma, reim = "both", stochav = FALSE,
  scale_factor = as.complex(1), herm_conj = FALSE)
}
\arguments{
\item{loop}{'raw_cf' container with loop data}

\item{gamma}{4x4 complex matrix}

\item{reim}{String, one of 'real', 'imag' or 'both'. After the spin projection and trace,
the result can be restricted to just the real or imaginary part, if desired.
Useful for the cases in which it is clear that only one or the other contains
any signal.}

\item{stochav}{Boolean, specifies whether the average over stochastic samples should be
performed. This makes the projection much faster
but of course prevents the projected loop data to be
used for the construction of diagrams with multiple quark loops.}

\item{scale_factor}{Complex scaling factor to be applied.}

\item{herm_conj}{Boolean, optionally the loop matrix \eqn{M} can be hermitian
conjugated before the spin projection is performed.}
}
\value{
Returns an object of class \link{raw_cf}.
}
\description{
Implements the operation
\deqn{ L = a*( \Gamma_{ik} M_{ki} ) }
to give the trace of a quark loop \eqn{M} multiplied by a gamma structure \eqn{\Gamma}
and scaled by a complex factor \eqn{a}.
}
