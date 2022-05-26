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

x = 