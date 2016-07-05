\name{simp}
\alias{simp}
\title{ Numeric Integration Using Simpson's method }
\description{
  Numeric Integration using the Simpson Method
}
\usage{
simp(y, a = NULL, b = NULL, x = NULL, n = 200)
}

\arguments{
  \item{y}{ y values to integrate }
  \item{x}{ x values to integrate over }
  \item{a}{NULL}
  \item{b}{NULL}
  \item{n}{ number of divisions defaults to 200 }
}

\value{ Numeric Value of the integration  
}

\examples{
# 4-x^2-y^2
fun <- function(x, y){
	a <- 4
	b <- x^2
	d <- y^2
	z <- a-b-d
	return(z)
	}
	
a <- fun(seq(-1000,1000,1), seq(-1000,1000,1))
simp(a, x=-1000:1000, n=1000)	
}

\author{ Rolf Turner }
\keyword{ math }

