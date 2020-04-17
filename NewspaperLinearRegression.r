#Load data
Nd<-read.csv(file.choose())

# Visualization
install.packages("lattice")
library(lattice)
dotplot(Nd$sunday, main="Dot Plot of Sunday Circulations",col="dodgerblue4")
dotplot(Nd$daily, main="Dot Plot of Daily Circulations", col="dodgerblue4")
boxplot(Nd$sunday,col="dodgerblue4")
boxplot(Nd$daily,col="dodgerblue4")
#Regression equation
#Syntax  model<-lm(y~x,data=data set name)
colnames(Nd)
model<- lm(sunday~daily,data =Nd)
summary(model)
#y(dependant var) = intercept(B0) + slope(B1)*x(independant var)
summary(model)
sun= 13.84 + (1.34*200)
sun
newdata=data.frame(daily=200)
sun1=predict(model,newdata=newdata)
sun1
##################
pred<-predict(model)
pred
pred<-predict(model)
finaldata<-data.frame(Nd,pred,"Error"= Nd$sunday-pred)

model<- lm(AT~Waist,data =WC_AT)
summary(model)
sun= 13.84 + (1.34*200)
sun
