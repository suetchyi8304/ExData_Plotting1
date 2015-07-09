#Module4: Exploratory Data Analysis
#Course Project 1
#Plot1


myData <- read.table("household_power_consumption.txt", header=TRUE, sep = ';', stringsAsFactors=FALSE, dec=".")
mySubset <- myData[myData$Date %in% c("1/2/2007", "2/2/2007"),]
png(file = 'plot1.png', width = 480, height = 480)  
hist(as.numeric(mySubset$Global_active_power), col="red", main="Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()