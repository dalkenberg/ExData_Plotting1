# Read in data - separate file saved with data from two specified days
pwr <- read.table("household_power_consumption_07feb1-07feb2.txt", header=TRUE,sep=";")

# Open PNG file device to save plot
png("plot1.png")

# Create histogram of Global_active_power 
hist(pwr$Global_active_power, main="Global Active Power", breaks=12, xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red")

# Close the device
dev.off()





