\name{photo2gps.pt}
\alias{photo2gps.pt}
\title{Fetch GPS points from a group of photos with geographical position information}
\usage{
photo2gps.pt(photo.pos, jhead.pos)
}
\description{
This function can be used to fetch GPS points from photo with geographical position. It will output photo name, latitude and longtitude. The function depends on jhead.exe file (\url{http://www.sentex.net/~mwandel/jhead/jhead.exe}), which can extract from an jpeg file. 
}

\arguments{
	\item{photo.pos} {the place of photos filefold.}
	\item{jhead.pos} {the place of jhead.exe file. please download jhead.exe file from \url{http://www.sentex.net/~mwandel/jhead/jhead.exe} }
}
\author{Juan Du \email{du@ibcas.ac.cn}

\examples{

out <- photo2gps.pt(photo.pos= "D:/photo/", jhead.pos="D:/software/EXE")

out

}
