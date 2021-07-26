

#############################################################################################

## RStats TIP OF THE WEEK: 3
## 07 / 18 / 2021

library(data.table)
library(gtrendsR)

res <- gtrends(c("NBA"), geo = c("US"), time = "all")
res

dat <- as.data.table(res$interest_over_time)

dat[, X := rnorm(nrow(dat))]

dat[, data_segment := rep(1:ceiling(nrow(dat)/50), each = 50, length.out = nrow(dat))]
  
dat                            
                       
dat[, {
    model = lm(hits ~ X)
    broom::tidy(model) },
    by = data_segment
][1:4]


#############################################################################################


