# Read in data - separate file saved with data from two specified days
pwr <- read.table("household_power_consumption_07feb1-07feb2.txt", header=TRUE,sep=";")

# Add datetime field to data frame
pwr$datetime <- as.POSIXct(paste(pwr$Date, pwr$Time), format="%d/%m/%Y %H:%M:%S")

# Open PNG file device to save plot
png("plot3.png")

# Create the plot with nothing drawn on it
plot(pwr$datetime, pwr$Sub_metering_1,  xlab="", ylab="Energy sub metering", type="n")

# Add lines for datetime vs Sub_metering_1 in black
lines(pwr$datetime, pwr$Sub_metering_1, col="black")

# Add lines for datetime vs Sub_metering_2 in red
lines(pwr$datetime, pwr$Sub_metering_2, col="red")

# Add lines for datetime vs Sub_metering_3 in blue
lines(pwr$datetime, pwr$Sub_metering_3, col="blue")

# Add legend to top right with labels of 3 lines
legend("topright", pch="-", lwd=c(3,3), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col= c("black","red","blue"))

# Close the device
dev.off()





