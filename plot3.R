
ds<-read.table("household_power_consumption.txt", header=T, sep=";",
na.strings="?", colClasses = classes, comment.char="")
sub<-subset(ds, Date==c("1/2/2007","2/2/2007"))

sm1<-sub$Sub_metering_1
sm2<-sub$Sub_metering_2
sm3<-sub$Sub_metering_3

png(filename= "plot3.png", width=480, height=480)

plot(sm1, type="l", ylab="Energy sub metering", xaxt="n", xlab="")
lines(sm2, col="red")
lines(sm3, col="blue") 
axis(1, at=c(0,721, 1440), labels=c("Thu","Fri","Sat"))
legend("topright", lty=1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

dev.off()
