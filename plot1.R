
ds<-read.table("household_power_consumption.txt", header=T, sep=";",
na.strings="?", colClasses = classes, comment.char="")

sub<-subset(ds, Date==c("1/2/2007","2/2/2007"))

png(filename= "plot1.png", width=480, height=480)
hist(sub$Global_active_power, main="Global Active Power",
     xlab="Global Active Power (kilowatts)", col = "red")
dev.off()
