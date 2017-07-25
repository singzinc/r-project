

library(quantmod)
from <- c("CAD", "JPY", "USD")
to <- c("USD", "USD", "EUR")
getQuote(paste0(from, to, "=X"))
