str(str)
str(lm)  # return the brief info of function
x = rnorm(100, 2, 4)
str(x)  # brief info of the data
str(airquality)  # brief info of the table structure

# d/r/p/q for each distributions
set.seed(1)
# the next generate after seed setting would be the same
x = rnorm(10)  # r refers to random generator
x = rpois(10, 1)
ppois(2, 2)  # p refers to cumulative distribution

# simulate from model
set.seed(20)
x1 = rnorm(1000)
x2 = rbinom(1000, 1, 0.5)
e = rnorm(1000, 0, 2)
y = 0.5 + 2*x1 + x2 + e  # data generating for a linear model
summary(y)
plot(x2, y)

sample(1:10, 4)  # draw without replacement
sample(letters, 5, replace = TRUE)  # draw with replacement
sample(1:10)  # get a permutation

# use system.time() to time the code
system.time(readLines("http://www.jhsph.edu"))
hilbert = function(n) {
  i = 1:n
  1/outer(i - 1, i, "+")
}
x = hilbert(1000)
system.time(svd(x))

# Assignment 4
outcome = read.csv("outcome-of-care-measures.csv", colClasses = "character")
outcome[, 11] <- as.numeric(outcome[, 11])
hist(outcome[, 11])



