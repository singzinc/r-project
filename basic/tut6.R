#learning objective 
# 1. for loop 
# 2. data handling



############## for loop 

#example 1
for (year in c(2010,2011,2012,2013,2014,2015)){
  print(paste("The year is", year))
}

#example 2
for (year in 2010:2015){
  print(paste("The year is", year))
}

#example 3
loopArray <-  c("v1", "v2", "v3")

for (arrValue in loopArray){
  print(paste("This is", arrValue))
}

##################################







library(ggplot2)
library(quantmod)



# get current date
Sys.time()
Sys.Date()

# date handling
d <- as.POSIXlt(as.Date('2010/03/17'))
d$year <- d$year-2
as.Date(d)




startDate <- as.POSIXlt(Sys.Date())
startDate$year <- startDate$year-2
as.Date(startDate)

threeMonStartDate <- as.POSIXlt(Sys.Date())
threeMonStartDate$mon <- threeMonStartDate$mon-3
as.Date(threeMonStartDate)


sixMonStartDate <- as.POSIXlt(Sys.Date())
sixMonStartDate$mon <- sixMonStartDate$mon-6
as.Date(sixMonStartDate)





##################### case study ##################



HSI<-getSymbols("^hsi", src="yahoo" , from='2017-01-01', to=Sys.Date(),auto.assign=F)

head(HSI)

# String handdling
con <- '::'
startFrom <- "2017-04-1"
endTo <- Sys.Date()
dataRange <- paste(startFrom, con , endTo, sep ='')

dataRange
#chartSeries(HSI,subset='2017-02-1::2017-07-01',theme=chartTheme('white'),TA="addVo(); addBBands();addEMA()")

chartSeries(HSI,subset=dataRange,theme=chartTheme('white'),TA="addVo(); addBBands();addEMA()")


my_indicator<-function(x){
  return(x+90)
}

#newEMA<-newTA(my_indicator,Cl,legend.name="my Fancy Indicator",on=1,col=5)
#newEMA(col=6)

newEMA<-newTA(my_indicator,Cl,legend.name="my Fancy Indicator",on=1,col=5)
newEMA(col=6)

# on = NA >>>>> insert the new diagram under the chart
newEMA(on=NA,col=6)



