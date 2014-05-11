
ds<-read.table("household_power_consumption.txt", header=T, sep=";",
na.strings="?", colClasses = classes, comment.char="")
sub<-subset(ds, Date==c("1/2/2007","2/2/2007"))

png(filename= "plot2.png", width=480, height=480)

plot(sub$Global_active_power, type="l", ylab="Global Active Power (kilowatts)",
     ylim=c(0,7), yaxt="n", xaxt="n", xlab="")
axis(1, at=c(0,721, 1440), labels=c("Thu","Fri","Sat"))
axis(2, at=c(0,2,4,6), labels=c(0,2,4,6))

dev.off()
