
#dir <- paste( getwd() , "/csv/", sep="")
#setwd(dir)
getwd()

filepath <- paste(getwd(), "/mydata.csv" , sep="")

filepath
# Loading mtcars data
data("mtcars")

mtcars
# Writing mtcars data
write.table(mtcars, file = filepath , sep = "\t", row.names = TRUE, col.names = NA)