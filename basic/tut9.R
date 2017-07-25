# how to define the operators

########### example 1 #############
"%,%" <- function(x, y) paste(x, y, sep = ",")

# test run

"Hello" %,% "World"


########### example 2 ##########

10 %% 2 == `%%`(10, 2)
"hello" %in% c("hello", "world") == `%in%`("hello", c("hello", "world"))
10 + 2 == `+`(10, 2)


