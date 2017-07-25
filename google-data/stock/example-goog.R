#Example: GOOG:NASDAQ; intraday 5 mins; last 5 days; candle chart
source('intraday-data.R')
Sys.timezone()
#Sys.setenv(TZ='GMT')

ticker <- '0005'
#intra2 <- intraday(ticker, 60 * 5, '1d')
intra2 <- intraday(ticker, 60 * 1, '1d')

tail(intra2, 10)
#candleChart(intra2, multi.col = TRUE, theme = 'black')
candleChart(intra2, theme = 'black')



ticker <- '3988'
#intra2 <- intraday(ticker, 60 * 5, '1d')
intra2 <- intraday(ticker, 60 * 1, '1d')

tail(intra2, 10)
#candleChart(intra2, multi.col = TRUE, theme = 'black')
candleChart(intra2, theme = 'black')




ticker <- '0700'
#intra2 <- intraday(ticker, 60 * 5, '1d')
intra2 <- intraday(ticker, 60 * 1, '1d')

tail(intra2, 10)
#candleChart(intra2, multi.col = TRUE, theme = 'black')
candleChart(intra2, theme = 'black')




ticker <- '1299'
#intra2 <- intraday(ticker, 60 * 5, '1d')
intra2 <- intraday(ticker, 60 * 1, '1d')

tail(intra2, 10)
#candleChart(intra2, multi.col = TRUE, theme = 'black')
candleChart(intra2, theme = 'black')





ticker <- '.INX'
#intra2 <- intraday(ticker, 60 * 5, '1d')
intra2 <- intraday(ticker, 60 * 1, '1d')

tail(intra2, 10)
#candleChart(intra2, multi.col = TRUE, theme = 'black')
candleChart(intra2, theme = 'black')