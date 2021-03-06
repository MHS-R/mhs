% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extractFacComp.R
\name{EFA.Comp.Data}
\alias{EFA.Comp.Data}
\title{EFA.Comp.Data}
\usage{
EFA.Comp.Data(Data, F.Max, N.Pop = 10000, N.Samples = 500,
  Alpha = 0.3, Graph = F, Spearman = F)
}
\arguments{
\item{Data}{N (sample size) x k (number of variables) data matrix}

\item{F.Max}{largest number of factors to consider}

\item{N.Pop}{size of finite populations of comparison data (default = 10,000 cases)}

\item{N.Samples}{number of samples drawn from each population (default = 500)}

\item{Alpha}{alpha level when testing statistical significance of improvement with add'l factor (default = .30)}

\item{Graph}{whether to plot the fit of eigenvalues to those for comparison data (default = F)}

\item{Spearman}{whether to use Spearman rank-order correlations rather than Pearson correlations (default = F)}
}
\description{
EFA.Comp.Data
}
\examples{
?Sample.Commands
}
\references{
Ruscio, John; Roche, B. (2012). 'Determining the number of factors to retain in an exploratory factor analysis using comparison data of known factorial structure'. Psychological Assessment 24: 282?\200?292.
}
