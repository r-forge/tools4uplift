\name{InterUplift}
\alias{InterUplift}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Interaction estimator
}
\description{
Fit the interaction uplift model estimator.
}
\usage{
InterUplift(data, treat, outcome, predictors, input = "all")
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
  \item{input}{
an option for \code{predictors} argument. If \code{"all"} (default), the model assumes that the model has to create the interaction of all varibles with \code{treat}. If \code{"best"}, the model assumes that the \code{predictors} vector is the output of the \code{BestFeatures} function.
}
}
\value{
an interaction model
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Mouloud Belbahri
}
\seealso{
\code{InterPredict}
}
\examples{

library(tools4uplift)
scene <- GenerateScene(plotit = FALSE)
train <- GenerateUplift(scene, nbobs = 1000, dimension = 10)

fit <- InterUplift(train, "treat", "y", train[,3:12])

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
