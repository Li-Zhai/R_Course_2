complete = function(dir, num=1:332) {
  res = data.frame(row.names = c("id", "nobs"))
  for (i in num) {
    j = sprintf("%03d", i)
    filename = paste("./", dir, "/", j, ".csv", sep = "")
    df = read.csv(filename)
    temp = sum(complete.cases(df))
    res = rbind(res, c(i, temp))
  }
  colnames(res) = c("id", "nobs")
  res
}
