pollutantmean = function(dir, p, num=1:332) {
  res = 0
  count = 0
  for (i in num) {
    j = sprintf("%03d", i)
    filename = paste("./", dir, "/", j, ".csv", sep = "")
    df = read.csv(filename)
    res = res + sum(df[[p]], na.rm=TRUE)
    count = count + sum(!is.na(df[[p]]))
  }
  res / count
}
