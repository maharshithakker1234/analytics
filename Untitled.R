getwd() #pwd
data = read.csv("SalesRecords.csv") #get data into this variable
print(data) #same as simply writing 'data'

print(is.data.frame(data))
ncol(data)
nrow(data)
colnames(data)

#writing a csv file

data = read.csv("SalesRecords.csv")
retval=subset(data,Unit.Cost>=6.92 & Unit.Cost<=159.42)
retval
write.csv(retval,"newdata.csv")


#install dplyr - data transformaation and manipulation package
install.packages('dplyr')
library(dplyr)

df1
df1 %>% group_by(gender) %>% summarise(mean(marks1)) #group_by,summarise and mean are functions of dplyr library package
df1 %>% group_by(gender) %>% summarise(MeanM1=mean(marks1),MeanM2=mean(marks2))
summarise(mtcars,meanmpg=mean(mpg))
mtcars
table(mtcars$am) #count of different values in the column
table(mtcars$gear)
table(mtcars$cyl,mtcars$am) #contingency table
table(mtcars$cyl,mtcars$am,mtcars$vs)

xtabs(~cyl+am+vs,data=mtcars) #same as above

mtcars %>% group_by(gear,cyl) %>% summarise(MeanM1=mean(mpg)) %>% arrange(desc(MeanM1))

mtcars %>% select(mpg,wt) %>% head(7) #or n=7
mtcars %>% select(mpg,wt) %>% slice(c(1,5,6)) #selected rows

mtcars %>% select(mpg,wt) %>% slice(seq(1,nrow(mtcars),2)) #alternate rows

mtcars %>% select(mpg,wt,hp) %>% filter(mpg>25 & hp<60) #filter rows

mtcars %>% sample_n(3) #to select 3 random rows
mtcars %>% sample_frac(0.3) #select 30% rows at random
