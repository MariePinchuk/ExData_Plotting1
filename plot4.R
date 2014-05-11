
ds<-read.table("household_power_consumption.txt", header=T, sep=";",
na.strings="?", colClasses = classes, comment.char="")
sub<-subset(ds, Date==c("1/2/2007","2/2/2007"))

png(filename= "plot4.png", width=480, height=480)
par(mfrow=c(2,2))

# --- Plot 1 ---
plot(sub$Global_active_power, type="l", ylab="Global Active Power (kilowatts)",
     ylim=c(0,7), yaxt="n", xaxt="n", xlab="")
axis(1, at=c(0,721, 1440), labels=c("Thu","Fri","Sat"))
axis(2, at=c(0,2,4,6))

# --- Plot 2 ---
plot(sub$Voltage, type="l", ylab="Voltage", yaxt="n",
     xaxt="n", xlab="datetime")
axis(1, at=c(0,721, 1440), labels=c("Thu","Fri","Sat"))
axis(2, at=c(234,238,242,246))

# --- Plot 3 ---
sm1<-sub$Sub_metering_1
sm2<-sub$Sub_metering_2
sm3<-sub$Sub_metering_3

plot(sm1, type="l", ylab="Energy sub metering", xaxt="n", xlab="")
lines(sm2, col="red")
lines(sm3, col="blue") 
axis(1, at=c(0,721, 1440), labels=c("Thu","Fri","Sat"))
legend("topright", lty=1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

# --- Plot 4 ---
plot(sub$Global_reactive_power, type="l", xaxt="n", 
     ylab="Global_reactive_power", xlab="datetime")
axis(1, at=c(0,721, 1440), labels=c("Thu","Fri","Sat"))


dev.off()
