\name{PerformanceUplift}
\alias{PerformanceUplift}
\alias{print.PerformanceUplift}
\title{
Performance of an uplift estimator
}
\description{
Table of performance of an uplift model. This table is used in order to vizualise the performance of an uplift model and to compute the qini coefficient.
}
\usage{
PerformanceUplift(data, treat, outcome, prediction, rank.precision = 2, 
                  equal.intervals = FALSE, nb.group = 10)
}
\arguments{
  \item{data}{
a data frame containing the response, the treatment and predicted uplift.
}
  \item{treat}{
a binary (numeric) vector representing the treatment assignment (coded as 0/1).
}
  \item{outcome}{
a binary response (numeric) vector (coded as 0/1).
}
  \item{prediction}{
a predicted uplift (numeric) vector to sort the observations from highest to lowest uplift.
}
  \item{rank.precision}{
precision for the ranking quantiles. Must be 1 or 2. If 1, the ranking quantiles will be rounded to the first decimal. If 2, to the second decimal.
}
  \item{equal.intervals}{
flag for using equal intervals (with equal number of observations) or the true ranking quantiles which result in an unequal number of observations in each group.
}
  \item{nb.group}{
if equal.intervals is set to true, the number of groups of equal observations in which to partition the data set to show results.
}
}
\value{
a table with descriptive statistics related to an uplift model estimator.
}
\references{
Radcliffe, N. (2007). Using control groups to target on predicted lift: Building and assessing uplift models. Direct Marketing Analytics Journal, An Annual Publication from the Direct Marketing Association Analytics Council, pages 14-21.

Belbahri, M., Murua, A., Gandouet, O., and Partovi Nia, V. (2019) Uplift Regression, <https://dms.umontreal.ca/~murua/research/UpliftRegression.pdf>
}
\author{
Mouloud Belbahri
}
\seealso{
\code{QiniArea}, \code{QiniBarPlot} and \code{QiniCurve}
}
\examples{

library(tools4uplift)
data("SimUplift")

square1 <- SquareUplift(SimUplift, "X1", "X2", "treat", "y")

#performance of the heat map uplift estimation on the training dataset
perf <- PerformanceUplift(data = square1, treat = "treat", 
                  outcome = "y", prediction = "Uplift_X1_X2",
                  equal.intervals = TRUE, nb.group = 5)
                  
print(perf)
}
\keyword{performance}
