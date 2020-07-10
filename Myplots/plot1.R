# PLOT 1 

data <- read.csv("/Users/IMAN/Exploratory data/ExData_Plotting1/household_power_consumption.txt", sep = ";", na.strings = "?")

data2 <- subset(data, data$Date == "2/2/2007" | data$Date == "1/2/2007")

## Creating the plot

png(filename = "plot1.png")

par(bg="transparent")
hist(as.numeric(data2$Global_active_power), col="Red", main="Global Active Power", xlab="Global Active power (kilowatts)", ylab="Frequency")

dev.off()
