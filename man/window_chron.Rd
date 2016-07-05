\name{window_chron}
\alias{window_chron}
\title{Time Windows of Diurnal Curves}
\description{
  Takes a time window of a larger series
}
\usage{window_chron(x, day1, hour1, day2, hour2, ...)
}
\arguments{
  \item{x}{ data to be subsetted}
  \item{day1}{ start day}
  \item{hour1}{ start time}
  \item{day2}{ end date}
  \item{hour2}{ end time}
  \item{...}{ other arguments }
}
\value{
  subset by time
}
\references{ chron, window, window.zoo }
\author{ Stephen A Sefick Jr. }
\seealso{\code{\link{window}}}
\examples{
#with real data
data(DOTemp)
d <- window_chron(DOTemp, "8/18/70", "06:00:00", "8/18/70", "20:15:00")
plot(d)
}
\keyword{ chron }
