complete <- function(directory, id = 1:332) {
	myfiles <- list.files(path = directory, pattern="*.csv")
	mylist <- lapply(paste(directory, myfiles[id], sep="/"), read.csv, header = TRUE)
	mydataframe <- do.call(rbind, mylist)
	mycleanrows <- mydataframe[complete.cases(mydataframe[,2:3]),]
	mysummary <- data.frame(table(mycleanrows$ID))
	names(mysummary)[1]<-paste("id")
	names(mysummary)[2]<-paste("nobs")
	mysummary[match(id, mysummary$id),]
}