\name{SimUplift}
\alias{SimUplift}
\docType{data}
\title{
Synthetic data for uplift modeling
}
\description{
The synthetic data contains 20 predictors, a treatment allocation variable and an outcome binary variable. This dataset is used in the package examples.
}
\usage{data("SimUplift")}
\format{
  A data frame with 1000 observations on the following 22 variables.
  \describe{
    \item{\code{y}}{a binary response vector}
    \item{\code{treat}}{a binary treatment allocation vector}
    \item{\code{X1-X20}}{numeric vectors}
  }
}
\examples{
data("SimUplift")
}
\keyword{datasets}
\keyword{uplift}
