directory<-"C:/Users/ma/Desktop/research10-14/drafts/exdata-data-household_power_consumption/household_power_consumption2.txt";
data<-read.table(directory,header=T,sep=";",na.strings="?",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"));

data<-data[(data$Date=="1/2/2007")|(data$Date=="2/2/2007"),]
data$DateTime<-strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")


png(filename = "plot2.png",width=480,height = 480,units="px")
plot(data$DateTime,data$Global_active_power,type="l", ylab = "Global Active Power(kilowatts)",xlab="")
dev.off()
