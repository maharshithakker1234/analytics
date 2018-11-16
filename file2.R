mtcars
x1=3
x1 = 3 #std assignment
x2 <- 3 #same
x2 < - 3 #extra space doesn't work
ls() #to list all variables in env
x1
women
data() #to see which datasets are available
?AirPassengers #to see info abt this data (metadata)
library() #to see which packages are loaded in packages
?mean #help
help(mean) #same thing
??mean #help from other sources
#mean example
x <- c(0:10, 50)
xm <- mean(x)
c(xm, mean(x, trim = 0.10))
#end of example
1:100 #to make a random dataset
x=c(1:100)
mean(x)
x[2] #index starts from 1
version #version of r
getwd() #working dir
Sys.Date() #it is case sensitive
methods(class='matrix') #methods available for a class of object
plot(1:10) #basic command to plot some random shit