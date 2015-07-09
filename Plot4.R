#Module4: Exploratory Data Analysis
#Course Project 1
#Plot4

mydata <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
mySubset <- data[myData$Date %in% c("1/2/2007","2/2/2007") ,]

myDate <- strptime(paste(mySubset$Date, mySubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")  
globalActivePower <- as.numeric(mySubset$Global_active_power) 
globalReactivePower <- as.numeric(mySubset$Global_reactive_power)
Voltage <- as.numeric(mySubset$Voltage)
Sub_metering_1 <- as.numeric(mySubset$Sub_metering_1) 
Sub_metering_2 <- as.numeric(mySubset$Sub_metering_2) 
Sub_metering_3 <- as.numeric(mySubset$Sub_metering_3) 

png("plot4.png", width=480, height=480) 
par(mfrow = c(2, 2))
with(mySubset, {
  plot(myDate, globalActivePower, type="l", ylab="Global Active Power", xlab="")
  plot(myDate, Voltage, type="l", ylab="Voltage", xlab="datetime")
  plot(MyDate, Sub_metering_1, type = "l", ylab="Energy Sub metering", xlab="")
  lines(MyDate, Sub_metering_2, type="l", col="red") 
  lines(MyDate, Sub_metering_3, type="l", col="blue") 
  legend("topright", lty=1, col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")) 
  plot(myDate, globalReactivePower, type="l", ylab="Global_Reacive_power", xlab="datetime")
})
dev.off() 