
library(wbstats)

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

pop_data <- wb(indicator = "SP.POP.TOTL", startdate = 2000, enddate = 2002)

head(pop_data)


gdp_vars <-wbsearch(pattern = "SP.POP.TOTL", fields = c("indicator", "indicatorDesc"), extra = FALSE)
head(gdp_vars)



pop_gdp_data <- wb(country = c("US", "HK"), indicator = c("SP.POP.TOTL", "NY.GDP.MKTP.CD"),
                   startdate = 1971, enddate = 1971)

head(pop_gdp_data)





