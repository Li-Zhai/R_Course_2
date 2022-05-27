for (i in 1:10) {
  print(i)  # standard for loop
}
for (i in c("a", "b", "c")) print(i)  # shorter
x = matrix(1:6, 2, 3)
for (i in seq_len(nrow(x))) {
  for (j in seq_len(ncol(x))) {
    print(x[i, j])  # iterate a matrix
  }
}

count = 0
while (count < 10) {
  print(count)
  count = count + 1  # standard while loop
}
repeat {
  if (TRUE) {
    break  # while true loop and break
  }
  next  # continue to next iteration
}

# funciton is pretty the same as Python
add2 = function(x, y) {
  x + y
}
add2(3, 5)
aboven = function(x, n) {
  use = x > n
  x[use]  # don't need to explicitly type return
}
aboven(1:20, 12)
columnmean = function(y, removeNA = TRUE) {
  nc = ncol(y)
  means = numeric(nc)
  for (i in 1:nc) {
    means[i] = mean(y[, i], na.rm = removeNA)
  }
  means
}
columnmean(airquality)
myplot = function(x, y, type = "l", ...) {
  # modify an existing function
  plot(x, y, type = type, ...)
}
args(paste)
make.power = function(n) {
  pow = function(x) {
    x ^ n
  }
  pow  # allows return function type
}
make.power(2)(3)  # gets 9
ls(environment(make.power(2)))  # get "n", "pow"
get("n", environment(make.power(2)))  # get 2

x = as.Date("1970-01-01")  # Date tyep
unclass(x)  # get 0
unclass(as.Date("1970-01-03"))  # get 2

x = Sys.time()  # Time type
p = as.POSIXlt(x)
p$sec  # p is actually a list
y = Sys.time()
x - y  # time difference in seconds
# two POSIXct or POSIXlt can also do subtraction

# quiz
source("pollutantmean.R")
source("complete.R")
source("corr.R")
