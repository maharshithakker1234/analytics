#Data structures in R
#Vectors ----
#four dashes are like bookmarks
#either numeric or string. if one string is present, all the elements will be treated as string
z=1:10
z #print
(z=1:20) #assign and print
(z2=c(2,4,6,8)) #combining random values
class(z) #integer, not vector
z3=c('a',"b") #character vector
class(z3)
z5=LETTERS[1:10] #SQUARE BRACKETS, capital letters
z4=letters[1:20] #small letters

z6=c(T,FALSE,TRUE,T,F) #logical values with caps always, either short or small
class(z6)

class(c(3,5))

class(c(3L,5L)) #L manjhe integer

class(c(1,'a',T,4L)) #even logical mixeed with string will become string

#accessing elements
x1=seq(0,100,by=4) #create an AP end value is from less than eq to
x1

?seq

x2=seq(0,100,3)
x2

seq(to=100,from=0,by=3) #sometimes from and to are important
seq() #default value for to is 1
seq_len(5) #same as seq()

length(x2)

ls()

x2[25] #index starts from 1

x2[c(2.1,4.3)] #select 2nd and 4th element, real numbers are truncated to integers

x2[-3] #select all but third element, temporary removal

x2[c(1:10,15:20)]
x2[-c(1:10,15:20)] #opposite

x2[x2>30 & x2 < 40]  # for or, use '|'

x3=c(x2,x1) #simply appending x1 to x2
x3

#modify

(x4=sample(1:50))

sort(x4)

sort(x4[-c(1,2)]) #sort all except first and second elements

sort(x4,decreasing=T)

rev(x4) #reverse

x4[x4<30  | x4>40]

sum(x4[x4<30  | x4>30])

x4[2:10] = 99 #modify second to tenth elements to 99

x4[x4>30 & x4<40] = 999 #similar

x5=x4[1:4] #truncate to first four values
x5

x6=seq(1,5,length.out=15) #equal partitions within a range
x6

x7=NULL
x7

#rnorm and hist see help

#matrix ----

100:111
length(100:111)

m1=matrix(100:111,nrow=4) #by default by column
m1

(m2=matrix(100:111,ncol=3, byrow=T))
(m2=matrix(100:111,nrow=3, byrow=T))

length(m1)
matrix(m1,ncol=6)
class(m1)
attributes(m1)
dim(m1)

m1[1,]
m1[,1]
m1[1,2:3]
m1[,-1]
m1[c(1,3)]
m1[,-c(1,3)]

which(m1[m1>105 & m1<108])

#concatenate
paste("c","d",sep='-')
paste("C",1:100,sep='c')
paste("c",1:3) #default sep is space

#to name columns and rows
colnames(m1)=paste('C',1:3,sep = '')
m1
rownames(m1)=paste('R',1:4,sep = '')
m1
attributes(m1)
m1[,'C1']

m1[c(T,T,F,F),c('C1','C2')]
m1
m2[,-4]
colSums(m1)
rowMeans(m1)

rbind(m1,m2[,-4]) #column bind is to add next to the last col

t(m1) #transpose
m1
sweep(m1,MARGIN = 1, STATS = c(2,3,4,5), FUN='+')
#margin=2 means column

addmargins(m1,margin=1,sum) #colwise, added row
addmargins(m1,margin=1,sd) #row-wise
addmargins(m1,margin=1:2,mean) #both

#dataframe ----




#factors ----



