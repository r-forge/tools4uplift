\name{MultiQiniCurve}
\alias{MultiQiniCurve}
\title{
(Helper) Multiple Qini curves
}
\description{
Multiple Qini curves on the same plot.
}
\usage{
MultiQiniCurve(x, title = "Model Performance: Qini Curve", legend_names = NULL)
}
\arguments{
  \item{x}{
a table (or a list of tables) that must be the output of \code{PerformanceUplift} function.
}
  \item{title}{
an overall title for the plot.
}
  \item{legend_names}{
a vector of names for the legend.
}
}
\value{
multiple Qini curves
}
\references{
Belbahri, M., Murua, A., Gandouet, O., and Partovi Nia, V. (2019) Uplift Regression, <https://dms.umontreal.ca/~murua/research/UpliftRegression.pdf>
}
\author{
Mouloud Belbahri
}
\seealso{
\code{PerformanceUplift}
\code{QiniCurve}
}
\examples{

library(tools4uplift)
data("SimUplift")

fit1 <- InterUplift(SimUplift, "treat", "y", colnames(SimUplift[, 3:12]))
fit2 <- InterUplift(SimUplift, "treat", "y", colnames(SimUplift[, 5:17]))
fit3 <- InterUplift(SimUplift, "treat", "y", colnames(SimUplift[, 8:22]))

SimUplift$pred1 <- predict(fit1, SimUplift, "treat")
SimUplift$pred2 <- predict(fit2, SimUplift, "treat")
SimUplift$pred3 <- predict(fit3, SimUplift, "treat")

perf1 <- PerformanceUplift(SimUplift, "treat", "y", "pred1", equal.intervals = TRUE)
perf2 <- PerformanceUplift(SimUplift, "treat", "y", "pred2", equal.intervals = TRUE)
perf3 <- PerformanceUplift(SimUplift, "treat", "y", "pred3", equal.intervals = TRUE)

multi_perf <- list(perf1, perf2, perf3)

MultiQiniCurve(multi_perf)

}
\keyword{Qini}
\keyword{performance}

