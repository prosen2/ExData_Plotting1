setwd("C:/Users/phil/Desktop/Data")

data<- read.table("household_power_consumption.txt", sep=";", header=TRUE)

data$Time <- strptime(data$Time, "%H%M%S")

data$Date <- as.Date(data$Date, "%d/%m/%Y")

feb1data<-data[data$Date == "2007-02-01",]
feb2data<-data[data$Date == "2007-02-02",]
febdata<- rbind(feb1data, feb2data)

hist(as.numeric(febdata$Global_active_power)/1000, col = "red", main = "Global Active Power", xlab = "Global Active Power (Kilowatts)")