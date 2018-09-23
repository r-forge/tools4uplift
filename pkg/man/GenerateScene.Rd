\name{GenerateScene}
\alias{GenerateScene}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Simulations of scenarios for treatment effects
}
\description{
Creation of scenarios in low space dimenstion for treatment effect heterogeneity estimation.
}
\usage{
GenerateScene(space_dimension = 2, 
              Principal_effect = c(0.1, 1), 
              Principal_std = c(1, 4), 
              Control_effect_positive = c(0.2, 0.3), 
              Control_std_positive = c(1.5, 2), 
              Control_effect_negative = c(0.3, 0.4), 
              Control_std_negative = c(1.5, 2), 
              Nb_point = c(20, 10, 20), 
              plotit = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{space_dimension}{
space dimension.
}
  \item{Principal_effect}{
principal effect.
}
  \item{Principal_std}{
standard deviation of principal effect.
}
  \item{Control_effect_positive}{
positive effect of control group.
}
  \item{Control_std_positive}{
standard deviation of positive effect of control group.
}
  \item{Control_effect_negative}{
negative effect of control group.
}
  \item{Control_std_negative}{
standard deviation of negative effect of control group.
}
  \item{Nb_point}{
number of points per effect (principal, positive, negative) in order to generate the uplift functions.
}
  \item{plotit}{
if \code{TRUE}, plot the functions.
}
}
\value{
\item{Test_propensity}{treatment group propensity function}
\item{Control_propensity}{control group propensity function}
\item{space_dimension}{space dimension}
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Olivier Gandouet
}
\examples{

library(tools4uplift)
scene <- GenerateScene(plotit = FALSE)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
