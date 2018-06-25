#' A photo2gps.pt function
#'
#' This function can be used to fetch GPS points from photo with geographical position. It will output photo name, latitude and longtitude. 
#' @photo.pos the place of photos filefold.
#' @jhead.pos the place of jhead.exe file.
#' @examples

photo2gps.pt <- function(photo.pos, jhead.pos){
	
	setwd(photo.pos)
	# copy jhead.exe to photo directory.
	file.copy(sprintf("%s/%s",jhead.pos,"jhead.exe"),getwd())
	filename <- dir(pattern='.jpg|.JPG')
	txt.file <- gsub(".jpg|.JPG",".txt",filename)
	
	cmd <- sprintf("jhead.exe \"%s\" > \"%s\"",filename,txt.file)
	
	lapply(cmd,shell)
	
	out <- lapply(txt.file,readLines,encoding='UTF-8')
	
	file.name=gsub(".txt",".jpg",txt.file)
	
	file.remove(txt.file)
	
	res <- matrix(NA,ncol=3,nrow=length(out))
	
	for(i in 1:length(out)){
		if(length(grep("GPS L",out[[i]]))==0) res[i,]=c(file.name[i],NA,NA) else
			res[i,] = c(file.name[i],out[[i]][grep("GPS L",out[[i]])])
	}
	
	for(j in 2:3)
		for(i in 1:nrow(res)){
			if(!is.na(res[i,j]) & regexpr('[0-9]',res[i,j])!=-1)  {
				pos <- gregexpr("[0-9]{1,5}",res[i,j])
				res[i,j] = as.numeric(regmatches(res[i,j],pos)[[1]]) %*% c(1,1/60,1/3600,1/100/3600)
			} else res[i,j]=''
		}
	res <- data.frame(res, stringsAsFactors=FALSE)
	names(res) <- c("code","latitude","longitude")
	res <- within(res,{latitude=as.numeric(latitude);longitude=as.numeric(longitude)})
    res[,c(1,3,2)]
}