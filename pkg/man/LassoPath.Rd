\name{LassoPath}
\alias{LassoPath}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
LASSO path for penalized logistic regression
}
\description{
Fit an interaction uplift model via penalized maximum likelihood. The regularization path is computed for the lasso penalty at a grid of values for the regularization parameter lambda.
}
\usage{
LassoPath(data, formula, nb.lambda = 100)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
a data frame containing the treatment, the outcome and the predictors.
}
  \item{formula}{
an object of class "formula" (or one that can be coerced to that class): a symbolic description of the model to be fitted.
}
  \item{nb.lambda}{
the number of lambda values - Default is 100.
}
}
\value{
a dataframe containing the coefficients values and the number of nonzeros coefficients for different values of lambda.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Mouloud Belbahri
}
\seealso{
\code{BestFeatures}, \code{glmnet}
}
\examples{
#See glmnet() from library("glmnet") for more information
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
