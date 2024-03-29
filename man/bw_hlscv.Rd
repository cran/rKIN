% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bw_hlscv.R
\name{bw_hlscv}
\alias{bw_hlscv}
\title{Least-squares cross-validation bandwidth matrix selector for multivariate data.}
\usage{
bw_hlscv(x)
}
\arguments{
\item{x}{2d matrix of data values.}
}
\value{
A numeric vector of estimated x and y bandwidths. Must subset your data if you wish to obtain group specific bandwidths.
}
\description{
A simple wrapper for the ks::Hlscv function.
}
\examples{
data("rodents")
# Subset the data for a single species
spec1<- rodents[rodents$Species == "Species1", ]
# Calculate the bandwidth
bw_hlscv(as.matrix(spec1[, c("Ave_C", "Ave_N")]))
}
\author{
Shannon E. Albeke, Wyoming Geographic Information Science Center, University of Wyoming
}
