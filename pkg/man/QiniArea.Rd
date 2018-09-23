\name{QiniArea}
\alias{QiniArea}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Qini coefficient
}
\description{
Computes the area under the Qini curve.
}
\usage{
QiniArea(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
a table that must be the output of \code{QiniTable} function.
}
}
\value{
the Qini coefficient
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Mouloud Belbahri
}
\seealso{
\code{QiniTable}
}
\examples{

library(tools4uplift)
scene <- GenerateScene(plotit = FALSE)
train <- GenerateUplift(scene, nbobs = 1000, dimension = 10)

square1 <- SquareUplift(train, "X1", "X2", "treat", "y")

#performance of the heat map uplift estimation on the training dataset
perf <- QiniTable(data = square1, treat = "treat", 
                  outcome = "y", prediction = "Uplift_X1_X2", nb.group = 5)

QiniArea(perf)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
