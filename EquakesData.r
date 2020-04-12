library('datasets')
data('quakes')
View(quakes)
Equakes<- datasets::quakes
head(Equakes)
tail(Equakes)
summary(Equakes)
Equakes[,c(1,2)]
plot(Equakes$depth, Equakes$mag)
plot(Equakes$depth, Equakes$mag, type="l")
plot(Equakes$depth, Equakes$mag, type='l', main = 'depth vs mag', xlab = 'depth', ylab='mag', col = 'blue')
boxplot(Equakes[,c(1,2)])

#horizontal box plot
barplot(Equakes$depth, horiz = TRUE)

#histogram
hist(Equakes$depth, xlab ='depth', ylab = 'freq', main='hist of depth', col='blue')

#boxplot
boxplot(Equakes$depth)
boxplot(Equakes[,1:4])

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=1, bty="o")

plot(Equakes$depth)
plot(Equakes$depth, Equakes$mag)
plot(Equakes$stations, type= "l")
plot(Equakes$depth, type= "p")
plot(Equakes$long, type= "p")
barplot(Equakes$depth, main = 'depth informtion',
        xlab = 'depth', col='green',horiz = TRUE)
hist(Equakes$lat)
boxplot(Equakes$long)
boxplot(Equakes[,0:4], main='Multiple plots')

