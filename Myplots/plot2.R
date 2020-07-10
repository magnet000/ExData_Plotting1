# PLOT 2

## For this plot is how the global active power changes within the 2-day period of Feb.

data <- read.csv("/Users/IMAN/Exploratory data/ExData_Plotting1/household_power_consumption.txt", sep = ";", na.strings = "?")

data2 <- subset(data, data$Date == "2/2/2007" | data$Date == "1/2/2007")

## Transform de dates and time variables 

data2$Date <- as.Date(data2$Date,"%d/%m/%Y")
data2 <-cbind(data2, "DateTime" = as.POSIXct(paste(data2$Date, data2$Time)))

## Creating the plot
png(filename = "plot2.png")
par(bg="transparent")
plot(data2$Global_active_power ~ data2$DateTime, type="l", xlab= "", ylab="Global Active power (kilowatts)")
dev.off()
