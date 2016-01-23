pollutantmean <- function(directory, pollutant, id = 1:332) {
	myfiles <- list.files(path = directory, pattern="*.csv")
	mytable <- lapply(paste(directory, myfiles[id], sep=""), read.csv, header = TRUE)
	mycombineddf <- do.call(rbind , mytable )
	dim(mycombineddf )
	mean(mycombineddf[,pollutant], na.rm=TRUE)
}