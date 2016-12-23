# Script for the second plot, the current wd must be the one that includes the household file
# Load the set
source("getSet.R")
par(mfrow=c(1,1))

# Create plot2
with(power.1, plot(dateTime, Global_active_power,xlab = "Weekday", 
                    ylab = "Global Active Power (kilowatts)", type = "n"))
with(power.1, lines(dateTime, Global_active_power))

# Copy the graph into a PNG file (The default is 480 x 480 px)
dev.copy(png, file = "Plot2.png")

# Close device
dev.off()
