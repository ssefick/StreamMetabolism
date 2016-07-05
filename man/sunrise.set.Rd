\name{sunrise.set}
\alias{sunrise.set}
\title{ Calculate Sunrise Sunset Times }
\description{
  This function calculates sunrise sunset times in POSIXct and returns it in a handy dandy format to either export as a csv file or use directly in the calculation of Stream Metabolism.  This function is based on maptools which is based on the NOAA sunrise sunset claculator.
}
\usage{
sunrise.set(lat, long, date, timezone = "UTC", num.days = 1)
}
\arguments{
  \item{lat}{ Latitude in decimal degrees }
  \item{long}{ Longitude in decimal degrees }
  \item{date}{ starting date (needs to be in quotes and in the format yyyy/mm/dd)}
  \item{timezone}{ Time zone set to UTC default (needs to be in quotes) }
  \item{num.days}{ 1 if you just want only the calculation   preformed on "date" (default)}
}
\details{
  Remember that the Prime Meridian is 0 through Greenwich, England. So anything W is - and anything E is +.  Also anything in the Northern hemisphere is + latitude and Southern Hemisphere is - lattitude.  Generally UTC+5 is Eastern Standard Time, UTC+6 is CST, UTC+7 MST, UTC+8 PST.  Another way of specifying time zones is Country City see examples.  Be aware of timezones and daylight and standard time when using this function!!!!!!!  This will help you avoid headaches caused because minor oversites = large error in your calculations
 }

\value{
  \item{output}{data frame with all dates sunrise and sunset times specified}
 }

\references{ 

old site:
\url{http://www.esrl.noaa.gov/gmd/grad/solcalc/sunrise.html} 

new site:
\url{http://www.esrl.noaa.gov/gmd/grad/solcalc/}

}

\author{ Stephen A Sefick Jr. }

\examples{
#This is for Atlanta Georgia 
#(Only so that you can compare it to the NOAA 
#website that is given above)
sunrise.set(33.43, -84.22, "2008/01/01", timezone="UTC+5") 	

#Same As above but look at Time Zone Specification
sunrise.set(33.43, -84.22, "2008/01/01", timezone="America/New_York")

}

\keyword{ math }
