\name{GPS.pt2photo}
\alias{GPS.pt2photo}
\title{Add GPS coordinates to photos}
\usage{
GPS.pt2photo(photo.pos ="d:/photo", exiftool.pos= "D:/software/EXE", GPS.point)
}
\description{
This function can be used to add GPS coordiantes (Longitude, Latitude) onto photos. Thus photos taken by camera can be visual on the map openned by cell phone i.e. iphone  fetch GPS points from photo with geographical position. It will output photo name, latitude and longtitude. The function depends on exiftool.exe software file (\url{http://www.sentex.net/~mwandel/jhead/jhead.exe}).
}

\arguments{
	\item{photo.pos} {the place of photos filefold.}
	\item{exiftool.pos} {the place of exiftool.exe file. please download jhead.exe file from \url{https://sno.phy.queensu.ca/~phil/exiftool/} }
  \item{GPS.point} {Longitude and latitude coordinates,i.e. GPS.point=c(110,40)}
}

\examples{

GPS.pt2photo(GPS.point=c(110,40))

}
