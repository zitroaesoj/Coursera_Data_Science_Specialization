corr <- function(directory, threshold = 0) {
	myfiles <- list.files(path=directory, pattern="*.csv", full.names=TRUE)
	myresults <- vector('numeric')

	for (id in 1:332) { 
		mylist <- na.omit(read.csv(myfiles[id], header = TRUE))
		mycleanrowcount <- nrow(mylist)

		if (mycleanrowcount > threshold) {
			myx <- mylist[["sulfate"]]
	        	myy <- mylist[["nitrate"]]
		
			myresults <- c(myresults, cor(myx, myy))
		}
	}
	myresults 
}