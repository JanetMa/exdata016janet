directory<-"C:/Users/ma/Desktop/research10-14/drafts/exdata-data-household_power_consumption/household_power_consumption2.txt";
data<-read.table(directory,header=T,sep=";",na.strings="?",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"));

data<-data[(data$Date=="1/2/2007")|(data$Date=="2/2/2007"),]
data$DateTime<-strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")


png(filename = "plot4.png",width=480,height = 480,units="px")


par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
plot(data$DateTime,data$Global_active_power,type="l", ylab = "Global Active Power(kilowatts)",xlab="")
plot(data$DateTime, data$Voltage, xlab="datetime", ylab="Voltage", type="l")

cols=c("Sub_metering_1","Sub_metering_2","Sub_metering_3");
plot(data$DateTime,data$Sub_metering_1,type="l", ylab = "Energy sub metering",xlab="");
lines(data$DateTime,data$Sub_metering_2,type="l", ylab = "Energy sub metering",xlab="",col="red");
lines(data$DateTime,data$Sub_metering_3,type="l", ylab = "Energy sub metering",xlab="",col="blue");
legend("topright",lty=1,lwd=1,col=c("black","blue","red"),legend=cols)

plot(data$DateTime, data$Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datetime")


dev.off()
