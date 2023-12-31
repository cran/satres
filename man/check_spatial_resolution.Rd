% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/satres.R
\name{check_spatial_resolution}
\alias{check_spatial_resolution}
\title{Check spatial resolution}
\usage{
check_spatial_resolution(sr, res = NULL, valid_null = TRUE)
}
\arguments{
\item{sr}{A \code{satres} object.}

\item{res}{A string, spatial resolution.}

\item{valid_null}{A boolean, resolution can be null.}
}
\value{
A string, spatial resolution.
}
\description{
Check if the indicated spatial resolution is one of those available.
}
\keyword{internal}
