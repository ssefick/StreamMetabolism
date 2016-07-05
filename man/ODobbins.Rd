\name{ODobbins}
\alias{ODobbins}
\title{ O'Conner Dobbins Surface Renewal Method for calculating Rearration Coeffiecient }
\description{
  calculate reaeration coefficient with the O'Conner Dobbins method
}
\usage{
ODobbins(vel, dep)
}
\arguments{
  \item{vel}{ velocity in m/s }
  \item{dep}{ depth in meters }
}
\details{
  Surface Renewal
}
\value{ Reaeration Cofficient (1/d)
}
\references{ O'Connor, D. J., and W. E. Dobbins (1958). Mechanisms of reaeration in natural  streams. Transactions of American Society of Civil Engineers, 123: 641-666. }
\author{ Stephen A Sefick Jr. }
\examples{
#velocity 0.6
#depth 0.4572
ODobbins(0.6, 0.4572)
}
\keyword{ math }
