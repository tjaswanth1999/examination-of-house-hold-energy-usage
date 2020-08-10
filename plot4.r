data<-read.table("household_power_consumption.txt",header = TRUE,sep = ";")
data
required_data<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
required_data
datetime <- strptime(paste(required_data$Date, required_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
datetime
png("plot4.png",height = 480,width = 480)
par(mfrow=c(2,2))
plot(datetime,as.numeric(required_data$Global_active_power),ylab = "Global Active Power",xlab="",type = "l")
plot(datetime,as.numeric(required_data$Voltage),ylab = "voltage",xlab="datetime",type = "l")
plot(datetime,as.numeric(required_data$Sub_metering_1),ylab = "energy sub metering",xlab="",type = "l")
lines(datetime,as.numeric(required_data$Sub_metering_2),type="l",col="red")
lines(datetime,as.numeric(required_data$Sub_metering_3),type="l",col="blue")
legend("topright",bty="n",c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black","red","blue"),lty = ,lwd = 1)
plot(datetime,as.numeric(required_data$Global_reactive_power),ylab = "Global Reactive Power",xlab="datetime",type = "l")
dev.off()
