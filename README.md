## photoGPS
Du Juan and Guofang Liu

This is a R package used to fetch photo's GPS points, and make a kml file based GPS points. It is convenient and easiy to get GPS points based on photo taken by a cell phone. the GPS fetching function depends on the third software jhead.exe (http://www.sentex.net/~mwandel/jhead/jhead.exe). 

```{R,results="hide",warning=FALSE,message = FALSE}
  #install.packages("devtools")
  devtools::install_github("liuguofang/photoGPS")
  library(photoGPS)
```

If it doesn't work, you downloaded the zip file (you will see the green button "clone or download." on top right place), unzipped it and the following worked.

```{R,results="hide",warning=FALSE,message = FALSE}
devtools::install("C:\\Users\\liuguofang\\Desktop\\photoGPS-master") # please replace your own file path. 
```
