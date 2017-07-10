# quantmod tut 


library(ggplot2)
library(quantmod)
library(PerformanceAnalytics)





HSI<-getSymbols("^hsi", src="yahoo" , from='2017-01-01', to=Sys.Date(),auto.assign=F)

HSBC<-getSymbols("0005.HK", src="yahoo" , from='2017-01-01', to=Sys.Date(),auto.assign=F)


MSFT<-getSymbols('MSFT',src='google', from='2017-01-01', to=Sys.Date(),auto.assign=F)
head(MSFT)

HSBCgoogle<-getSymbols('HSBC',src='google', from='2017-01-01', to=Sys.Date(),auto.assign=F)
head(HSBCgoogle)

# get current quote
getQuote("QQQQ;SPY;^VXN",what=yahooQF(c("Bid","Ask")))

getQuote("0005.HK;SPY;^VXN",what=yahooQF(c("Bid","Ask")))




#
CPIAUCNS <- getSymbols('CPIAUCNS',src='FRED' , from='2017-01-01', to=Sys.Date(),auto.assign=F)
head(CPIAUCNS)

head(HSI)

head(HSBC)
# String handdling
con <- '::'
startFrom <- "2017-04-1"
endTo <- Sys.Date()
dataRange <- paste(startFrom, con , endTo, sep ='')

dataRange
#chartSeries(HSI,subset='2017-02-1::2017-07-01',theme=chartTheme('white'),TA="addVo(); addBBands();addEMA()")

chartSeries(HSI,subset=dataRange,theme=chartTheme('white'),TA="addVo(); addBBands();addEMA()")
chartSeries(HSBC,name="HSBC",subset=dataRange,theme=chartTheme('white'),TA="addVo(); addBBands();addEMA();addRSI(n=14);addSAR(accel = c(0.02, 0.2), col = 'blue');addSMI(n=13,slow=25,fast=2,signal=9,ma.type='EMA')")


my_indicator<-function(x){
  return(x+90)
}