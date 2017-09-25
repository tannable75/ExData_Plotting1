
#Tim Annable
#Exploratory Data Analysis Project 1, part 3

#set up my working directory
setwd("C:/Users/tim/OneDrive/Johns Hopkins/Exploratory Data Analysis/Project 1")


#read the data in, set ? values to NA, file is a semicolin delminted
powerData <- read.table("household_power_consumption.txt",sep=";", header = TRUE, na.strings = "?", stringsAsFactors = FALSE)

#create subset based on the dated requested
smallData <- subset(powerData, powerData$Date=="1/2/2007" | powerData$Date =="2/2/2007")




#create datetime variable
datetime <- strptime(paste(smallData$Date, smallData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 



#plot the first sub metering and build the plot
plot(datetime, smallData$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")

#plot the other two meterings
lines(datetime, smallData$Sub_metering_2, col = 'Red')
lines(datetime, smallData$Sub_metering_3, col = 'Blue')

#place the legend
legend("top", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1), lwd= c(1,1), xpd = TRUE)



dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()

