## photoGPS
Juan Du and Guofang Liu

This is a R package used to fetch photo's GPS points, and make a kml file based GPS points, and add longitude and latitude onto JPG files. It is convenient and easy to get GPS points based on photos taken by a cell phone. The GPS fetching function depends on the third software jhead.exe (http://www.sentex.net/~mwandel/jhead/jhead.exe). It is efficient to add longitude and latitude onto multiple photos. These photos with GPS inforamtion can be visual on cell phone if they are available in your photo store. The GPS information addition function depends on the third software exiftool.exe  (https://sno.phy.queensu.ca/~phil/exiftool/exiftool-11.61.zip).

Usage

```{R,results="hide",warning=FALSE,message = FALSE}
  #install.packages("devtools")
  devtools::install_github("liuguofang/photoGPS")
  library(photoGPS)
```

If it doesn't work, you downloaded the zip file (you will see the green button "clone or download." on top right place), unzipped it and the following worked.

```{R,results="hide",warning=FALSE,message = FALSE}
devtools::install("C:\\Users\\liuguofang\\Desktop\\photoGPS-master") # please replace your own file path. 
```
