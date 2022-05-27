corr = function(dir, th=0) {
  res = vector()
  source("complete.R")
  ans = complete("specdata", 1:332)
  idx = ans[ans["nobs"]>=th,]$id
  for (i in idx) {
    j = sprintf("%03d", i)
    filename = paste("./", dir, "/", j, ".csv", sep = "")
    df = read.csv(filename)
    corr = cor(df["sulfate"], df["nitrate"], use = "pairwise.complete.obs")[1,1]
    res[length(res) + 1] = corr
  }
  res
}
