subject<-c(1:7)
subject
Gender<-c("Male","Male","Male",NA,"Female","Female","Female")
Gender
Age<-c(23,34,32,54,65,45,35)
Age
Weight<-c(67.5,NA,63.7,56.8,89.9,87.5,77.5)
Weight
trial<-data.frame(subject,Gender,Age,Weight)
View(trial)

trial[4,3]
trial[,3]

#renaming variables
help("setNames")
install.packages("data.table")
library(data.table)
setnames(trial,old='subject',new='participant')
View(trial)

#missing values
trial[!complete.cases(trial),]
trial[!complete.cases(trial),"Age"]

trial$Weight
trial$Age
trial$Weight[trial$participant==2]<-65.0
trial$Weight
trial$Age[trial$participant==6]<-55.0
trial$Age
trial$Gender[trial$participant==4]<-'Male'
trial$Gender
trial$Weight[trial$participant==2]<-54
trial$Weight
View(trial)

Manager<-c(1:5)
Date<-c("10/15/18","01/11/18","10/21/18","10/28/18","05/01/18")
Country<-c("US","US","IRL","IRL","IRL")
Gender<-c("M","F","F","M","F")
Age<-c(32,45,25,39,99)
q1<-c(5,3,3,3,2)
q2<-c(4,5,5,3,2)
q3<-c(5,2,5,4,1)
q4<-c(5,5,5,NA,2)
q5<-c(5,5,2,NA,1)
v<-data.frame(Manager,Date,Country,Gender,Age,q1,q2,q3,q4,q5)
View(v)
