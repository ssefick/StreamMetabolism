\name{read.production}
\alias{read.production}
\title{ Read in Time Series Data as zoo Object }
\description{
 Wrapper Function to read.zoo
}
\usage{
read.production(data)
}
\arguments{
  \item{data}{ a csv file with headers and the date as mm/dd/yyyy hh:mm:ss format (think excel spreadsheet date format and the file is saved as a csv file) }
}
\details{
  This is a wrapper function to read.zoo with a specific format required see above
}
\value{
zoo object
}
\author{ Stephen A Sefick Jr }
\seealso{  \code{\link{read.table}}}
\keyword{ chron }

