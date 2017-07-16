
library(wbstats)
library(ggplot2)
library(lubridate)


help(wbstats)

#Finding available data with wb_cachelist
str(wb_cachelist, max.level = 1)


# serach indicator 
unemploy_vars <- wbsearch(pattern = "unemployment")
head(unemploy_vars)


blmbrg_vars <- wbsearch(pattern = "Bloomberg", fields = "sourceOrg")
head(blmbrg_vars)
blmbrg_vars

povemply_vars <- wbsearch(pattern = "poverty|unemployment|employment")
head(povemply_vars)


poverty_vars <-wbsearch(pattern = "poverty", fields = c("indicator", "indicatorDesc"), extra = FALSE)
head(poverty_vars)
poverty_vars

# list all of the indicator 
all_vars <- wbsearch(pattern="", fields = c("indicator", "indicatorDesc"))
head(all_vars)
all_vars


gdp_vars <-wbsearch(pattern = "gdp", fields = c("indicator", "indicatorDesc"), extra = FALSE)
head(gdp_vars)

gdp_vars


#download data




gdp_vars <-wbsearch(pattern = "SP.POP.TOTL", fields = c("indicator", "indicatorDesc"), extra = FALSE)
head(gdp_vars)



pop_data <- wb(country = c("US", "HK"), indicator = c("SP.POP.TOTL"),
                   startdate = 2000, enddate = 2017)

head(pop_data)
pop_data


# ========================== function mrv ======================== 

#mrv - use the mrv instead of startdate and enddate
eg_data <- wb(country = c("IN"), indicator = 'EG.ELC.ACCS.ZS', mrv = 1)

eg_data



eg_data <- wb(country = c("IN"), indicator = 'EG.ELC.ACCS.ZS', mrv = 10)

eg_data





############################ POSIXct ############################

oil_data <- wb(indicator = c("CRUDE_DUBAI", "CRUDE_BRENT", "CRUDE_WTI", "CRUDE_PETRO"),
               startdate = "2000M01", enddate = "2017M05", freq = "M", POSIXct = TRUE)


head(oil_data)

oil_data

ggplot(oil_data, aes(x = date_ct, y = value, colour = indicator)) + geom_line(size = 1) +
  labs(title = "Crude Oil Price Comparisons", x = "Date", y = "US Dollars")



#################### example 2 ###########################

oil_data <- wb(indicator = c("CRUDE_DUBAI", "CRUDE_BRENT", "CRUDE_WTI", "CRUDE_PETRO"),
               mrv=72, freq = "M", POSIXct = TRUE)


head(oil_data)

oil_data

ggplot(oil_data, aes(x = date_ct, y = value, colour = indicator)) + geom_line(size = 1) +
  labs(title = "Crude Oil Price Comparisons", x = "Date", y = "US Dollars")






# querying seperate for differing time coverage example
gold_data <- wb(indicator = "GOLD", mrv = 120, freq = "M", POSIXct = TRUE)
plat_data <- wb(indicator = "PLATINUM", mrv = 60, freq = "M", POSIXct = TRUE)


gold_data
plat_data
metal_data <- rbind(gold_data, plat_data)

ggplot(metal_data, aes(x = date_ct, y = value, colour = indicator)) + geom_line(size = 1) +
  labs(title = "Precious Metal Prices", x = "Date", y = "US Dollars")



