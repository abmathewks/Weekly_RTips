
#############################################################################################

## RStats TIP OF THE WEEK: 2
## 07 / 18 / 2021


dt <- data.table(userid = c(101,101,101,101,102,102,102,103,103),
                 outcome = c("start","sold","return","sold",
                             "start","call","mailer",
                             "start","mailer"))

dt[, if("sold" %in% outcome){ 
          .SD[1:(min(which(outcome == "sold")))] 
     } else { 
          .SD[1:(.N)] }, 
   by = userid]
    

#############################################################################################



