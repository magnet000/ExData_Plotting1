# PLOT 3

## For this plot is how the global active power changes within the 2-day period of Feb.

data <- read.csv("/Users/IMAN/Exploratory data/ExData_Plotting1/household_power_consumption.txt", sep = ";", na.strings = "?")

data2 <- subset(data, data$Date == "2/2/2007" | data$Date == "1/2/2007")

## Transform de dates and time variables 

data2$Date <- as.Date(data2$Date,"%d/%m/%Y")
data2 <-cbind(data2, "DateTime" = as.POSIXct(paste(data2$Date, data2$Time))) ## Same as mutate() from dplyr

## Creating the plot

png(filename = "plot3.png", width = 480, height = 480)
par(bg="transparent")
plot(data2$Sub_metering_1 ~ data2$DateTime, type="l", xlab= "", ylab="Energy submetering", col="black")
lines(data2$Sub_metering_2 ~ data2$DateTime, type = "l", col="red")
lines(data2$Sub_metering_3 ~ data2$DateTime, type = "l", col="blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), lty = 1, lwd = 2)
dev.off()
