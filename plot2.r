data<-read.table("household_power_consumption.txt",header = TRUE,sep = ";")
data
required_data<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
required_data
datetime <- strptime(paste(required_data$Date, required_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
datetime
png("plot2.png",height = 480,width = 480)
plot(datetime,as.numeric(required_data$Global_active_power),ylab = "Global Active Power(kilowatts)",xlab="",type = "l")
dev.off()
