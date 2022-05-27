print("This file was created within RStudio.")
print("And now it lives on GitHub.")

x = 1  # numeric
x = 1L  # int

x = c(0.5, 0.6)  # create vector 1
x = c(1.7, "a")  # get c("1.7", "a")
x = c(TRUE, 2)  # get c(1, 2)
x = vector("numeric", length = 10)  # create vector 2
class(x)  # numeric 0 of length 10
as.logical(x)  # transfer 0 to FALSE
as.numeric(c("a", "b"))  # get c(NA, NA)

x = list(1, "a", TRUE, 1+4i)  # create list
x  # print out each elements

x = matrix(1:6, nrow = 2, ncol = 3)  # create matrix 1
dim(x)  # get 2 3
x  # fill the columns first, then rows
x = 1:10
dim(x) = c(2, 5)  # create matrix 2
cbind(1:3, 10:12)
rbind(1:3, 10:12)  # create matrix 3

x = factor(c("yes", "yes", "no", "yes", "no"))
table(x)  # get {no: 2, yes: 3}
unclass(x)  # reveals the embedded vector
# determines the order of levels manually
x = factor(c("yes", "yes", "no", "yes", "no"), levels = c("yes", "no"))

is.na(x)  # sees if x is NA
is.nan(x)  # sees if x is NAN
# NAN is also NA; NA is not always NAN
x = c(1, NaN, NA, 10, 3)
is.na(x)  # the second and the third is TRUE
is.nan(x)  # only the second is TRUE

x = data.frame(foo = 1:4, bar = c(T, T, F, F))  # create dataframe

x = 1:3
names(x) = c("foo", "bar", "norf")  # add names to values
x = list(a = 1, b = 2, c = 3)  # a/b/c are names
x = matrix(1:4, nrow = 2, ncol = 2)
dimnames(x) = list(c("a", "b"), c("c", "d"))  # names for rows and cols

# Quiz
x = read.csv("hw1_data.csv")
colnames(x)  # columns names
x[1:2,]
x[152:153,]
x[47,"Ozone"]
sum(is.na(x["Ozone"]))
mean(x$Ozone, na.rm = TRUE)
class(x$Ozone)  # integer
class(x[["Ozone"]])  # integer
class(x["Ozone"])  # data.frame
y = x[x$Ozone>31 & x$Temp>90,]
mean(y$Solar.R, na.rm = TRUE)
mean(x[x$Month==6,]$Temp, na.rm = TRUE)
max(x[x$Month==5,]$Ozone, na.rm = TRUE)
