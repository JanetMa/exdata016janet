directory<-"C:/Users/ma/Desktop/research10-14/drafts/exdata-data-household_power_consumption/household_power_consumption2.txt";
data<-read.table(directory,header=T,sep=";",na.strings="?",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"));

data<-data[(data$Date=="1/2/2007")|(data$Date=="2/2/2007"),]
data$DateTime<-strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")


png(filename = "plot3.png",width=480,height = 480,units="px")
cols=c("Sub_metering_1","Sub_metering_2","Sub_metering_3");
plot(data$DateTime,data$Sub_metering_1,type="l", ylab = "",xlab="");
lines(data$DateTime,data$Sub_metering_2,type="l", ylab = "",xlab="",col="red");
lines(data$DateTime,data$Sub_metering_3,type="l", ylab = "Energy sub metering",xlab="",col="blue");
legend("topright",lty=1,lwd=1,col=c("black","blue","red"),legend=cols)

dev.off();

