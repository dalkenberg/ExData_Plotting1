# Read in data - separate file saved with data from two specified days
pwr <- read.table("household_power_consumption_07feb1-07feb2.txt", header=TRUE,sep=";")

# Add datetime field to data frame
pwr$datetime <- as.POSIXct(paste(pwr$Date, pwr$Time), format="%d/%m/%Y %H:%M:%S")

# Open PNG file device to save plot
png("plot2.png")

# Create the plot with nothing drawn on it
plot(pwr$datetime, pwr$Global_active_power,  xlab="", ylab="Global Active Power (kilowatts)", type="n")

# Add lines for datetime vs Global_active_power
lines(pwr$datetime, pwr$Global_active_power)

# Close the device
dev.off()





