#Example: GOOG:NASDAQ; intraday 5 mins; last 5 days; candle chart
source('intraday-data.R')
Sys.timezone()
#Sys.setenv(TZ='GMT')

ticker <- '0005'
#intra2 <- intraday(ticker, 60 * 5, '1d')
intra2 <- intraday(ticker, 60 * 1, '1d')

#tail(intra2, 10)

#as.csv(intra2,  "MyData.csv")
filepath <- paste(getwd(), "/stockData.csv" , sep="")
# Writing mtcars data
write.table(intra2, file = filepath , sep = "\t", row.names = TRUE, col.names = NA)


