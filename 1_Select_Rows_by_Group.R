
#############################################################################################

## RStats TIP OF THE WEEK: 1
## 07 / 14 / 2021

library(data.table)

DT = data.table(
        id = sample(c("US", "Other"), 100, replace = TRUE), 
        loc = seq(as.Date("2001-01-01"), length.out = 100, by = "month"), 
        value = runif(100)
        )

# DT

DT[, .SD[1], by = id]  # get the first row per id

DT[, .SD[.N], by = id]  # get the last row per id

#############################################################################################


