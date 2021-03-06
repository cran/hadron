% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cvc_readutils.R
\name{cf_key_meson_2pt}
\alias{cf_key_meson_2pt}
\title{Generate key string to identify a meson 2pt function}
\usage{
cf_key_meson_2pt(fwd_flav, bwd_flav, snk_gamma, src_gamma, src_p, snk_p)
}
\arguments{
\item{fwd_flav}{String, "forward" quark flavour identifier.}

\item{bwd_flav}{String, "backward" quark flavour identifier.}

\item{snk_gamma}{Integer, CVC convention gamma matrix identifier at the source.}

\item{src_gamma}{Integer, CVC convention gamma matrix identified at the sink.}

\item{src_p}{Integer vector of length 3. (x,y,z) components of the source momentum
vector in lattice units.}

\item{snk_p}{Integer vector of length 3. (x,y,z) components of the sink momentum
vector in lattice units.}
}
\value{
A character vector with the HDF5 key.
}
\description{
Generate key string to identify a meson 2pt function
}
