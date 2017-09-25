
#Tim Annable
#Exploratory Data Analysis Project 1, part 2

#set up my working directory
setwd("C:/Users/tim/OneDrive/Johns Hopkins/Exploratory Data Analysis/Project 1")


#read the data in, set ? values to NA, file is a semicolin delminted
powerData <- read.table("household_power_consumption.txt",sep=";", header = TRUE, na.strings = "?", stringsAsFactors = FALSE)

#create subset based on the dated requested
smallData <- subset(powerData, powerData$Date=="1/2/2007" | powerData$Date =="2/2/2007")




#create datetime variable
datetime <- strptime(paste(smallData$Date, smallData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#create variable for global active power
gap <- as.numeric(smallData$Global_active_power)



plot(datetime, gap, type = "l", ylab = "Global Active Power")

dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()


