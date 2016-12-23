# Script for the first plot, the current wd must be the one that includes the household file
# Load the set 
source("getSet.R")
par(mfrow=c(1,1))

# Make plot 1
hist(power.1$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red", 
     main = "Global Active Power")

# Copy the graph into a PNG file (The default is 480 x 480 px)
dev.copy(png, file = "Plot1.png")

# Close device
dev.off()
