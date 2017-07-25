#tidyr is new package that makes it easy to “tidy” your data



library(tidyr)
library(dplyr)

messy <- data.frame(
  name = c("Wilbur", "Petunia", "Gregory"),
  a = c(67, 80, 64),
  b = c(56, 90, 50)
)
messy


messy %>% gather(drug, heartrate, a:b)



########### example 2 


set.seed(10)
messy <- data.frame(
  id = 1:4,
  trt = sample(rep(c('control', 'treatment'), each = 2)),
  work.T1 = runif(4),
  home.T1 = runif(4),
  work.T2 = runif(4),
  home.T2 = runif(4)
)

messy


tidier <- messy %>%
  gather(key, time, -id, -trt)
tidier %>% head(8)




tidy <- tidier %>%
  separate(key, into = c("location", "time"), sep = "\\.")
tidy %>% head(8)

tidy %>% head(8)