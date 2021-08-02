


dt = data.table(str1 = sample(LETTERS[1:5], 20, replace = TRUE),
                str2 = sample(LETTERS[1:5], 20, replace = TRUE),
                str3 = sample(LETTERS[1:5], 20, replace = TRUE),
                vals = rnorm(20))

One way to identify the dimensions that will eventually be looped through is to concatenate 
the desired columns into the dimensions.

In the following case, I am concatenating the three columns into one string and then adding 
those values to a new column. 

col_names <- c("str1", "str2", "str3")

dt[, dim_name := do.call(paste, c(.SD, sep = "_")), .SDcols = col_names]

dt





