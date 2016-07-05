\name{Cs}
\alias{Cs}
\title{ Saturation Concentration at temp }
\description{
  Calculates the concentration(mg/L) @ 100% saturation
}
\usage{
Cs(x)
}
\arguments{
  \item{x}{ Temperature in Degrees Celcius }
}
\details{
  enter one temperature or a zoo time series of temperature
}
\value{ single value or time series of mg/L@saturation for that temperature
}
\references{ APHA (2005). Standard Methods for the Examination of Water and Wastewater. 21st Edition. Eds: 
Eaton, A.D., L.S. Clesceri, E.W. Rice and A. E. Greenberg. Washington D.C., published 
jointly by the American Public Health Association, the American Water Works Association 
and the Water Environment Federation. 
 }
\author{ Stephen A Sefick Jr. }

\examples{
#single temperature
temp <- sample(20:30, 1)
Cs(temp)

#USGS Data (DOTemp)
library(chron)
library(zoo)
data(DOTemp)
Cs(DOTemp[,1])
}
\keyword{ math }
