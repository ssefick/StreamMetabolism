\name{dC.dt}
\alias{dC.dt}
\title{ Change in Oxygen per time step }
\description{
  Calculate the rate of change of Dissolved Oxygen
}
\usage{
dC.dt(x)
}
\arguments{
  \item{x}{ Dissolved Oxygen time series }
}
\details{
  input zoo series 
  takes the difference of DOt+1 - DOt 
}
\value{zoo series of Dissolved Oxygen Differences with an NA for the first value as there is no value before that to subtract 
}
\references{ Odum, H. T. (1956). "Primary production in flowing waters." Limnology and Oceanography, 1: 
102-117. }
\author{ Stephen A Sefick Jr. }
\examples{
data(DOTemp)
Diffconc <- dC.dt(DOTemp[,2])
plot(Diffconc)
}
\keyword{ math }