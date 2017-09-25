
#Tim Annable
#Exploratory Data Analysis Project 1, part 1

#set up my working directory
setwd("C:/Users/tim/OneDrive/Johns Hopkins/Exploratory Data Analysis/Project 1")


#read the data in, set ? values to NA, file is a semicolin delminted
powerData <- read.table("household_power_consumption.txt",sep=";", header = TRUE, na.strings = "?")

#create subset based on the dated requested
smallData <- subset(powerData, powerData$Date=="1/2/2007" | powerData$Date =="2/2/2007")

#create the histogram
hist(smallData$Global_active_power, main = "Global Active Power", xlab="Global Active Power (Kilowatts)", ylab = "Frequency", col="red")

dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
