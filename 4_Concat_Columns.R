


#############################################################################################

## RStats TIP OF THE WEEK: 4
## 08 / 01 / 2021

dt = data.table(str1 = sample(LETTERS[1:5], 20, replace = TRUE),
                str2 = sample(LETTERS[1:5], 20, replace = TRUE),
                str3 = sample(LETTERS[1:5], 20, replace = TRUE),
                vals = rnorm(20))


col_names <- c("str1", "str2", "str3")

dt[, dim_name := do.call(paste, c(.SD, sep = "_")), .SDcols = col_names]

dt


#############################################################################################




