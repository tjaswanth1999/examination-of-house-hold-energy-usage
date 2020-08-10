data<-read.table("household_power_consumption.txt",header = TRUE,sep = ";")
data
required_data<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
required_data
datetime <- strptime(paste(required_data$Date, required_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
datetime
png("plot3.png",height = 480,width = 480)
plot(datetime,as.numeric(required_data$Sub_metering_1),ylab = "energy sub metering",xlab="",type = "l")
lines(datetime,as.numeric(required_data$Sub_metering_2),type="l",col="red")
lines(datetime,as.numeric(required_data$Sub_metering_3),type="l",col="blue")
legend("topright",c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black","red","blue"),lty = 1,lwd = 2)
dev.off()
