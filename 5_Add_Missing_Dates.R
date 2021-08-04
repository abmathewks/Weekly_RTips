

#############################################################################################

## RStats TIP OF THE WEEK: 5
## 08 / 04 / 2021


dt <- data.table(
  date_val = c(
      seq.Date(as.Date("2020-06-01"), length.out = 3, by = "day"),
      seq.Date(as.Date("2020-06-06"), length.out = 5, by = "day")),
  target_val = abs(rnorm(8)) + abs(rnorm(8))
)

dt



full_dt <- data.table(
  date_val = c(
     seq.Date(min(dt$date_val), max(dt$date_val),  by = "day")),
  target_val_full = NA
)

full_dt



new_dt <- data.table::merge.data.table(full_dt, dt, by = "date_val", all.x = TRUE)

new_dt[, .(date_val, target_val)]


#############################################################################################




