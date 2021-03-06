
library(ggplot2)
library(quantmod)
library(PerformanceAnalytics)

#sessionInfo()

getStartDate <- function(monValue){
  startDateValue <- as.POSIXlt(Sys.Date())
  startDateValue$mon <- startDateValue$mon-monValue
  return (as.Date(startDateValue))
}

getStartEndDate <- function(monValue){
  start <- getStartDate(monValue)
  cDate <- Sys.Date()+1
  con <- '::'
  dataRange <- paste(start, con , cDate, sep ='')
  return (dataRange)
}

startDate <- getStartDate(9)
dataRange <- getStartEndDate(1)

dataRange
startDate


createChart <- function(hkStockList,chartType){
  #chartType <- c(1,3,6)
  #hkStockList <- c("0005.HK", "0700.HK", "0939.HK", "3988.hk", "^HSI")
  
  
    for (stockSymbol in hkStockList){
      print(paste("Stock : ", stockSymbol))
      stockData <- getSymbols(stockSymbol, src="yahoo" , from=startDate, to=Sys.Date()+1,auto.assign=F,type = "s", adjust = "true")
      head(stockData)
      for(mon in chartType){
        startDate <- getStartDate(mon)
        dataRange <- getStartEndDate(mon)
        chartSeries(stockData,name=stockSymbol,subset=dataRange,theme=chartTheme('white') ,
                    TA="addVo(); addBBands();addEMA();addRSI();addSMI(n=13,slow=25,fast=2,signal=9,ma.type='EMA')")
        
      }
    }
}

chartType <- c(1,3,6)
hkStockList <- c("0005.HK", "0700.HK", "0939.HK", "3988.hk", "^HSI")


createChart(hkStockList , chartType )



stockData <- getSymbols("0005.hk", src="yahoo" , from=startDate, to=Sys.Date()+1,auto.assign=F, type = "m", adjust = "true")
head(stockData)




