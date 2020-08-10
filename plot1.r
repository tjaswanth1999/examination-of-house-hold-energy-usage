data<-read.table("household_power_consumption.txt",header = TRUE,sep = ";")
data
required_data<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
required_data
png("plot1.png",height = 480,width = 480)
hist(as.numeric(required_data$Global_active_power),col = "red",main = "Global Active Power",xlab = "Global Active Power(kilowatts)")
dev.off()
