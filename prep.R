


directory<-"C:/Users/ma/Desktop/research10-14/drafts/exdata-data-household_power_consumption/household_power_consumption2.txt";
data<-read.table(directory,header=T,sep=";",na.strings="?",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"));

data<-data[(data$Date=="1/2/2007")|(data$Date=="2/2/2007"),]
data$DateTime<-strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")











