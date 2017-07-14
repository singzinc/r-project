# get Financials data from google
library(ggplot2)
library(quantmod)
library(PerformanceAnalytics)
library(TTR)

mySeries <- getSymbols("0005.hk", src="yahoo" , auto.assign = FALSE)

t <- mySeries['2017-01-01::']

t






###########  example 1 ######## 

tickers <-new.env()
t <-c("AAL",  "AAME", "AAOI", "3988.hk")
t

lapply(t, getFinancials)
BS <- data.frame(lapply(tickers, function(x) {viewFinancials(x, type= 'BS', period = 'A')}))
IS <- data.frame(lapply(tickers, function(x) {viewFinancials(x, type= 'IS', period = 'A')}))
CF <- data.frame(lapply(tickers, function(x) {viewFinancials(x, type= 'CF', period = 'A')}))

BS

########### example 2 ###########

financials <- getFinancials("HKG:0005", auto.assign=F,period="A")
viewFinancials(financials, type="BS")
viewFinancials(financials, type="IS", period="Q")

