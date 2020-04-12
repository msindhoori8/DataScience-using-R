library(datasets)
data("airquality")
AQ<-datasets::airquality
View(AQ)
head(AQ)
tail(AQ)
AQ[,c(1,2)]
AQ$Ozone
summary(AQ$Ozone)
summary(AQ)
plot(AQ$Ozone, AQ$Temp)
plot(AQ$Ozone, AQ$Temp,type = 'p')
plot(AQ$Ozone, xlab = "ozone conc", ylab = "no of instances", type = 'l',main = "Ny city",col = 'blue')
barplot(AQ$Ozone, xlab = "ozone conc", ylab = "no of instances", horiz = F)
hist(AQ$Ozone, col ='blue')
boxplot(AQ[,1:4])
# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col= 'blue',horiz = F)
#Histogram
hist(airquality$Solar.R)
hist(airquality$Solar.R, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(airquality$Solar.R)

# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=1, bty="o")

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple plots')
