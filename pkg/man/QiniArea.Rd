\name{QiniArea}
\alias{QiniArea}
\title{
Qini coefficient
}
\description{
Computes the area under the Qini curve.
}
\usage{
QiniArea(x, adjusted=FALSE)
}
\arguments{
  \item{x}{
a table that must be the output of \code{PerformanceUplift} function.
}
  \item{adjusted}{
if TRUE, returns the Qini coefficient adjusted by the Kendall's uplift rank correlation.
}
}
\value{
the Qini or the adjusted Qini coefficient
}
\references{
Radcliffe, N. (2007). Using control groups to target on predicted lift: Building and assessing uplift models. Direct Marketing Analytics Journal, An Annual Publication from the Direct Marketing Association Analytics Council, pages 14-21.

Belbahri, M., Murua, A., Gandouet, O., and Partovi Nia, V. (2019) Uplift Regression, <https://dms.umontreal.ca/~murua/research/UpliftRegression.pdf>
}
\author{
Mouloud Belbahri
}
\seealso{
\code{PerformanceUplift}
}
\examples{

library(tools4uplift)
data("SimUplift")

model <- BinUplift2d(SimUplift, "X1", "X2", "treat", "y")

#performance of the heat map uplift estimation on the training dataset
perf <- PerformanceUplift(data = model, treat = "treat", 
                  outcome = "y", prediction = "Uplift_X1_X2", 
                  equal.intervals = TRUE, nb.group = 5)
QiniArea(perf)

}
\keyword{Qini}
\keyword{performance}
