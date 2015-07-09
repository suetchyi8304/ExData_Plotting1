#Module4: Exploratory Data Analysis
#Course Project 1
#Plot3

mydata <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
mySubset <- data[myData$Date %in% c("1/2/2007","2/2/2007") ,]

MyDate <- strptime(paste(mySubset$Date, mySubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(mySubset$Global_active_power)
Sub_metering_1 <- as.numeric(mySubset$Sub_metering_1) 
Sub_metering_2 <- as.numeric(mySubset$Sub_metering_2) 
Sub_metering_3 <- as.numeric(mySubset$Sub_metering_3) 


png("plot3.png", width=480, height=480)
plot(MyDate, Sub_metering_1, type = "l", ylab="Energy Sub metering", xlab="")
lines(MyDate, Sub_metering_2, type="l", col="red") 
lines(MyDate, Sub_metering_3, type="l", col="blue") 
legend("topright", lty=1, col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()