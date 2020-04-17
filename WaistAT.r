WC<-read.csv(file.choose())

# Visualization
install.packages("lattice")
library(lattice)
dotplot(WC$AT, main="Dot Plot of AT",col="dodgerblue4")
dotplot(WC$Waist, main="Dot Plot of Waist measurements", col="dodgerblue4")
boxplot(WC$AT,col="dodgerblue4")
boxplot(WC$Waist,col="dodgerblue4")
#Regression equation
#Syntax  model<-lm(y~x,data=data set name)
colnames(WC)
model<- lm(AT~Waist,data =WC)
summary(model)
newdata=data.frame(Waist = 100)
#y(dependant var) = intercept(B0) + slope(B1)*x(independant var)
#AT = -215.98 + 3.4(100)
AT1=predict(model,newdata=newdata)
AT1
##################
pred<-predict(model)
pred
pred<-predict(model)
finaldata<-data.frame(WC,pred,"Error"= WC$AT-pred)


