\name{QiniTable}
\alias{QiniTable}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Performance of an uplift estimator
}
\description{
Table of performance of an uplift model. This table is used in order to vizualise the performance of an uplift model and to compute the qini coefficient.
}
\usage{
QiniTable(data, treat, outcome, prediction, nb.group = 10)
}
%- maybe also 'usage' for other objects documented here.
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
  \item{nb.group}{
number of groups of equal observations in which to partition the data set to show results.
}
}
\value{
a table with descriptive statistics related to an uplift model estimator.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Mouloud Belbahri
}
\seealso{
\code{QiniArea}, \code{QiniBarPlot} and \code{QiniCurve}
}
\examples{

library(tools4uplift)
scene <- GenerateScene(plotit = FALSE)
train <- GenerateUplift(scene, nbobs = 1000, dimension = 10)

square1 <- SquareUplift(train, "X1", "X2", "treat", "y")

#performance of the heat map uplift estimation on the training dataset
perf <- QiniTable(data = square1, treat = "treat", 
                  outcome = "y", prediction = "Uplift_X1_X2")
                  
perf
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
