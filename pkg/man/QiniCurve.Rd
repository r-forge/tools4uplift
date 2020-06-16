\name{QiniCurve}
\alias{QiniCurve}
\title{
Qini curve
}
\description{
Curve of the function Qini, the incremental observed uplift with respect to predicted uplift sorted from the highest to the lowest.
}
\usage{
QiniCurve(x, ...)
}
\arguments{
  \item{x}{
a table that must be the output of \code{PerformanceUplift} function.
}
  \item{...}{
additional plot arguments.
}
}
\value{
a Qini curve and the associated Qini coefficient
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

square1 <- SquareUplift(SimUplift, "X1", "X2", "treat", "y")

#performance of the heat map uplift estimation on the training dataset
perf <- PerformanceUplift(data = square1, treat = "treat", 
                  outcome = "y", prediction = "Uplift_X1_X2", 
                  equal.intervals = TRUE, nb.group = 5)
                  
QiniCurve(perf)

}
\keyword{Qini}
\keyword{performance}
