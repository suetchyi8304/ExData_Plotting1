#Module4: Exploratory Data Analysis
#Course Project 1
#Plot2


myData <- read.table("household_power_consumption.txt", header=TRUE, sep = ';', stringsAsFactors=FALSE, dec=".")
mySubset <- myData[myData$Date %in% c("1/2/2007", "2/2/2007"),]

myDate <- strptime(paste(mySubset$Date, mySubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(mySubset$Global_active_power)
png(file = 'plot2.png', width = 480, height = 480) 
plot(myDate, GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()