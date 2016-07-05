\name{SM}
\alias{SM}
\title{ Calculate Ecosystem Production with the Single Station Method }

\description{
  Calculate ER, NEP, and GPP from diurnal oxygen curves.
}

\usage{
SM(depth, min_interval, DO, temp,
K, day, sr="00:00:00", ss="23:45:00",
start="00:00:00", end="23:45:00")
}

\arguments{
  \item{depth}{ depth m \code{K} }
   \item{min_interval}{ time resolution (e.g., 15 min) }
  \item{temp}{ Zoo time Series temperature in degrees Celcius }
  \item{DO}{ Zoo time Series Dissolved Oxygen in mg/L }
  \item{day}{ date of the day of interest must be in quotes }
  \item{start}{ time of the start of the "day" usually 00:00:00 must be in quotes}
  \item{end}{ time of the end of the "day" usually 23:45:00 must be in quotes}
  \item{sr}{ time of sunrise in the form 04:22:00 must be in quotes}
  \item{ss}{ time of sunset in the form 19:23:00 must be in quotes}
  \item{K}{ K at 20 deg. C (1/dt; e.g., 1/15min)}
}
\details{

The input data has to be a zoo time series constructed with a chron date time object of month/day/year hr:min:sec (i.e., 08/18/70 23:15:00)

ER is calculated as sum Et (i.e, mean nighttime NEP corrected for the difference in daytime temp and average nighttime temp)

GPP is calculated by summing NEP-ERt from sunrise to sunset

NEP=ER+GPP

Tested Against Rivermet spreadsheet (Izagirre 2007). The data from station 1 (7/10 - 7/15/2003) were used with K=0.07 from "Introduced K". ER, NEP, and GPP are in mg/L*d. The results were not identical. When Estimation from rivermet was regressed on estimation from this software, GPP, ER, and NEP intercepts did not differ significantly from 0 and slopes were nearly 1: 0.94, 0.91, and 0.95, respectively. Further testing is greatly appreciated. 

}

\value{
  \item{ ER }{Ecosystem Respiration}
  \item{ NEP }{Net Ecosystem Production}
  \item{ GPP }{Gross Primary Productivity}
}

\references{ Odum, H. T. (1956). "Primary production in flowing waters." Limnology and Oceanography, 1: 102-117.

Thyssen, N., Erlandsen, M., Jeppesen, E., Holm T. F.,1983. Modelling the reaeration capacity of low-land streams

M.R. Grace and S.J. Imberger. 2006. "Stream Metabolism: Performing & Interpreting 
Measurements". Water Studies Centre Monash University, Murray Darling Basin Commission  and 
New South Wales Department of Environment and Climate Change.  204 pp. 
Accessed at 
http://www.sci.monash.edu.au/wsc/docs/tech-manual-v3.pdf 

Izagirre, O., M. Bermejo, J. Pozo, and A. Elosegi. 2007. RIVERMET: An Excel-based tool to calculate river metabolism from diel oxygen concentration curves. Environmental Modelling and Software, 22: 24-32.

}
\author{ Stephen A Sefick Jr. }
\examples{
#zoo real data
#velocity 0.6
#depth 0.4572
#sunrise 6:00AM
#sunset 8:15PM
#K/96 to get K per dt (i.e., 96 15 min interval in 1 day)
data(DOTemp)

K <- ODobbins(0.6, 0.4572)
prod <- SM(min_interval=15, K=K/96,
depth=0.4572, temp=DOTemp[,1], DO=DOTemp[,2],
day="8/18/70", start="00:00:00",
end="23:45:00", sr="06:00:00", ss="20:15:00")
prod

}
\keyword{ math }
