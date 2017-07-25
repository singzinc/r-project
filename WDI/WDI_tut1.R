library(WDI)

WDIsearch(string = 'market capitalization')


mc <- WDI(indicator = 'CM.MKT.LCAP.GD.ZS',
          country = c('HK', 'US', 'GB', 'JP', 'IN', 'FR', 'DE', 'BR'),
          start = 2000, end = 2017)

mc[mc$iso2c == 'HK' , ]
mc[mc$iso2c == 'US' , ]
mc[mc$iso2c == 'GB' , ]
mc[mc$iso2c == 'JP' , ]
mc[mc$iso2c == 'IN' , ]
mc[mc$iso2c == 'FR' , ]
mc[mc$iso2c == 'DE' , ]
mc[mc$iso2c == 'BR' , ]


WDIsearch(string='gdp', field='name', cache=NULL)




WDIsearch(string='AG.AGR.TRAC.NO', field='indicator', cache=NULL)

indicator <- WDIsearch(string='', field='indicator', cache=NULL)

indicator[3000:4000]
indicator[3000:4000,]
indicator[3000:4000, c("indicator", "name")]

WDIsearch(string= 'Rice production', field='name', cache=NULL)
WDIsearch(string= 'Food production index', field='name', cache=NULL)
WDIsearch(string= 'London Interbank Offered', field='name', cache=NULL)
