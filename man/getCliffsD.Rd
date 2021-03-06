% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getCliffsD.R
\name{getCliffsD}
\alias{getCliffsD}
\title{Cliff's d}
\usage{
getCliffsD(col, g, withCI = FALSE)
}
\arguments{
\item{col}{a numeric vector with data values, with complete cases}

\item{g}{factor; a factor for a grouping variable. The first level is the group to which the second level is compared.}

\item{withCI}{logical; include CIs?}
}
\description{
Wrapper function to call effsize::cliff.delta. Returns only the Cliff's delta estimate and its confidence intervals.
For further details on the original function or to use the original function, see effsize::cliff.delta.
The magnitude is assessed using the thresholds provided in (Romano 2006), i.e. |d|<0.147 'negligible', |d|<0.33 'small', |d|<0.474 'medium', otherwise 'large'
Minimum value is -1, maximum value is 1.
Values closer to -1 indicate that the first group tends to endorse lower values than the second group.
Values closer to 1 indicate that the first group tends to endorse higher values than the second group.
Values closer to 0 indicate that the first group tends to endorse similar values as the second group.
}
\examples{
#' \dontrun{
#raw data
dat <- data.frame(item1 = c(1,1,2,2,2,3,3,3,4,5, 1,2,3,4,4,5), item2 = c(5,2,3,1,4,2,4,3,2,1,4,5, 1, 1, 1, 1), group = rep(c('g1', 'g2'), c(10, 6)))
getCliffsD(dat$x, dat$group)
}
}
\references{
Marco Torchiano http://softeng.polito.it/torchiano/
}
