pollutantmean <- function(directory, pollutant, id = 1:332) {
	myfiles <- list.files(path = directory, pattern="*.csv")
	mylist <- lapply(paste(directory, myfiles[id], sep="/"), read.csv, header = TRUE)
	mydataframe <- do.call(rbind , mylist)
	mean(mydataframe[,pollutant], na.rm=TRUE)
}