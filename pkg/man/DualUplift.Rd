\name{DualUplift}
\alias{DualUplift}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Two-model estimator
}
\description{
Fit the two-model uplift model estimator.
}
\usage{
DualUplift(data, treat, outcome, predictors)
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
  \item{predictors}{
a vector of names representing the explanatory variables to include in the model.
}
}
\value{

\item{model0}{Fitted model for control group}
\item{model1}{Fitted model for treatment group}

}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Mouloud Belbahri
}
\seealso{
\code{DualPredict}
}
\examples{

library(tools4uplift)
scene <- GenerateScene(plotit = FALSE)
train <- GenerateUplift(scene, nbobs = 1000, dimension = 10)

fit <- DualUplift(train, "treat", "y", predictors = colnames(train[, 3:12]))

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
