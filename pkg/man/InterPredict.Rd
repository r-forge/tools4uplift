\name{InterPredict}
\alias{InterPredict}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Predictions from an interaction estimator
}
\description{
Predictions from the interaction uplift model estimator with associated model performance.
}
\usage{
InterPredict(data, treat, outcome, model, nb.group = 10, plotit = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
a data frame containing the treatment, the outcome and the predictors.
}
  \item{treat}{
name of a binary (numeric) vector representing the treatment assignment (coded as 0/1).
}
  \item{outcome}{
name of a binary response (numeric) vector (coded as 0/1).
}
  \item{model}{
a model that must be the output of \code{InterUplift} function.
}
  \item{nb.group}{
number of groups of equal observations in which to partition the data in order to compute model performance. 
}
  \item{plotit}{
if \code{TRUE}, a \code{QiniCurve} and \code{QiniBarPlot} are returned. 
}
}
\value{
\item{data}{a data frame augmented with the predicted uplift}
\item{qini }{a Qini Coefficient}
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Mouloud Belbahri
}
\seealso{
\code{InterUplift}
}
\examples{

library(tools4uplift)
scene <- GenerateScene(plotit = FALSE)
train <- GenerateUplift(scene, nbobs = 1000, dimension = 10)

fit <- InterUplift(train, "treat", "y", train[,3:12])

pred <- InterPredict(train, "treat", "y", model = fit, nb.group = 5)[[1]]

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
