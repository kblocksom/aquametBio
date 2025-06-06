% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/metCalcFxns.r
\name{ShanDiversity}
\alias{ShanDiversity}
\title{Shannon Diversity function}
\usage{
ShanDiversity(indata)
}
\arguments{
\item{indata}{Input data frame, containing SAMPID as variable identifying unique samples,
IS_DISTINCT numeric variable indicating taxonomic distinctness as 0 or 1,}
}
\value{
A data frame with SAMPID and the metric HPRIME
}
\description{
This function calculates the Shannon Diversity metric as used in NARS
}
\keyword{internal}
