# Read in data - separate file saved with data from two specified days
pwr <- read.table("household_power_consumption_07feb1-07feb2.txt", header=TRUE,sep=";")

# Add datetime field to data frame
pwr$datetime <- as.POSIXct(paste(pwr$Date, pwr$Time), format="%d/%m/%Y %H:%M:%S")

# Open PNG file device to save plot
png("plot4.png")

# set plots to be a 2x2 configuration
par(mfrow = c(2,2))

# Create the first plot with nothing drawn on it
plot(pwr$datetime, pwr$Global_active_power,  xlab="", ylab="Global Active Power", type="n")

# Add lines for datetime vs Global_active_power in black
lines(pwr$datetime, pwr$Global_active_power, col="black")

# Create the second plot with nothing drawn on it
plot(pwr$datetime, pwr$Voltage,  xlab="", ylab="Voltage", type="n")

# Add lines for datetime vs Voltage in black
lines(pwr$datetime, pwr$Voltage, col="black")

# Create the third plot with nothing drawn on it
plot(pwr$datetime, pwr$Sub_metering_1,  xlab="", ylab="Energy sub metering", type="n")

# Add lines for datetime vs Sub_metering_1 in black
lines(pwr$datetime, pwr$Sub_metering_1, col="black")

# Add lines for datetime vs Sub_metering_2 in red
lines(pwr$datetime, pwr$Sub_metering_2, col="red")

# Add lines for datetime vs Sub_metering_3 in blue
lines(pwr$datetime, pwr$Sub_metering_3, col="blue")

# Add legend to top right with labels of 3 lines
legend("topright", pch="-", bty="n", lwd=c(3,3), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col= c("black","red","blue"))

# Create the fourth plot with nothing drawn on it
with(pwr, plot(datetime, Global_reactive_power, type="n"))

# Add lines for datetime vs Global_reactive_power in black
lines(pwr$datetime, pwr$Global_reactive_power, col="black")

# Close the device
dev.off()





