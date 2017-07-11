# How to create function


#get the start date


getStartDate <- function(monValue){
  startDateValue <- as.POSIXlt(Sys.Date())
  startDateValue$mon <- startDateValue$mon-monValue
  return (as.Date(startDateValue))
}

# one month before 
getStartDate(1)

# 3 month before 
getStartDate(3)

# 6 month before 
getStartDate(6)

# 9 month before 
getStartDate(9)

# 12 month before 
getStartDate(12)



getStartEndDate <- function(monValue){
  start <- getStartDate(monValue)
  cDate <- Sys.Date()
  con <- '::'
  dataRange <- paste(start, con , cDate, sep ='')
  return (dataRange)
}






library(ggplot2)
library(quantmod)



dataRange <- getStartEndDate(3)

HSI<-getSymbols("^hsi", src="yahoo" , from='2017-01-01', to=Sys.Date(),auto.assign=F)

head(HSI)
dataRange
chartSeries(HSI,subset=dataRange,theme=chartTheme('white'),TA="addVo(); addBBands();addEMA()")

chartSeries(HSI,subset='2017-02-1::2017-07-11',theme=chartTheme('white'),TA="addVo(); addBBands();addEMA()")


c("0005.HK", "0700.HK", "0939.HK")


for (stockSymbol in c("0005.HK", "0700.HK", "0939.HK")){
     print(paste("Stock : ", stockSymbol))
     stockData <- getSymbols(stockSymbol, src="yahoo" , from='2017-01-01', to=Sys.Date(),auto.assign=F)
     chartSeries(stockData,name=stockSymbol,subset=dataRange,theme=chartTheme('white'),TA="addVo(); addBBands();addEMA()")
}

stockData <- getSymbols("0005.HK", src="yahoo" , from='2017-01-01', to=Sys.Date(),auto.assign=F)



maxmin <- function(i1,i2){
  
  if (i1>i2){
    mx <- i1
    mn <- i2
  }  else
  {
    mn <- i1
    mx <- i2
  }
  rv <- list(min=mn,max=mx)
  return(rv)
}

r1 <- maxmin(3,4)
r2 <- maxmin(6,5)

print(sprintf("minimums %d %d",r1$min,r2$min))
print(sprintf("maximums %d %d",r1$max,r2$max))






###################################################

#Example 2


GetExchangeRates <- function(from, to, dt=Sys.Date()) {
  require(quantmod)
  obj.names <- getFX(paste0(from, "/", to), from=dt, to=dt)
  result <- numeric(length(obj.names))
  names(result) <- obj.names
  for (obj.name in obj.names) {
    result[obj.name] <- as.numeric(get(obj.name))[1]
    # Clean up    
    rm(obj.name)
  }
  return(result)
}

TestExchangeRates <- function() {
  from <- c("CAD", "JPY", "USD")
  to <- c("USD", "USD", "EUR")
  GetExchangeRates(from, to)
}



