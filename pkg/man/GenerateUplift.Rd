\name{GenerateUplift}
\alias{GenerateUplift}
\title{
Simulations of synthetic data
}
\description{
Numerical simulation for treatment effect heterogeneity estimation.
}
\usage{
GenerateUplift(object, nbobs, dimension)
}
\arguments{
  \item{object}{
a scene of class as that created by the function \code{GenerateScene}.
}
  \item{nbobs}{
number of observations.
}
  \item{dimension}{
number of predictors.
}
}
\value{
a data frame containing \code{nbobs} observations with \code{dimension} features and associated outcome \code{y} and \code{treat} variable.
}
\author{
Olivier Gandouet
}
\examples{

library(tools4uplift)
scene <- GenerateScene(plotit = FALSE)
train <- GenerateUplift(scene, nbobs = 1000, dimension = 10)

}
\keyword{simulation}
\keyword{uplift}
