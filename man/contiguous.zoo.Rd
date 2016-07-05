\name{contiguous.zoo}
\alias{contiguous.zoo}
\title{ contiguous.zoo }
\description{
  find continuous non NA portions of zoo time series data
}
\usage{
contiguous.zoo(x)
}
\arguments{
  \item{x}{ zoo time series object whatever indexes you want }
}
\value{data frame constiting of
	\item{start}{start index}
	\item{end}{end index}
	\item{lengths}{length of record}
	\item{value}{logical stating whether a continuous string of non-NA values}
}	

\details{if you want to just find the contiguous portions of just one signal and not the interaction between two just  duplicate the signal  contiguous.zoo(data.frame(x, coredata(x))) should give you what you want}

\author{ Gabor Grothendieck and Stephen A Sefick Jr. }
\keyword{ math }

