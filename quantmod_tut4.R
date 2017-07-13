



require(quantmod)
getQuote("QQQQ;SPY", what=yahooQF("Last Trade (Price Only)"))

getQuote("QQQQ;0005.hk", what=yahooQF("Last Trade (Price Only)"))


getQuote("AAPL")
quote<-getQuote("QQQQ;SPY;^VXN",what=yahooQF(c("Bid","Ask")))

head (quote)


standardQuote()
yahooQF()