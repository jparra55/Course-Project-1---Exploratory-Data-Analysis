# Script for the fourth plot, the current wd must be the one that includes the household file
# Load the set
source("getSet.R")

# Stablish some parameters
par(mfrow = c(2,2), mar = c(4,4,2,1))

# Create plot4
# Plot 1 (TopLeft)
with(power.1, plot(dateTime, Global_active_power,xlab = "Weekday", 
                   ylab = "Global Active Power", type = "n"))
with(power.1, lines(dateTime, Global_active_power))
# Plot 2 (TopRight)
with(power.1, plot(dateTime, Voltage,xlab = "Weekday", 
                   ylab = "Voltage", type = "n"))
with(power.1, lines(dateTime, Voltage))
# Plot 3 (BottomLeft)
with(power.1, plot(dateTime, Sub_metering_1 ,xlab = "Weekday", 
                   ylab = "Energy sub metering", type = "n"))
legend("topright", col = c("black","red","blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1, 
       x.intersp = 0.3, y.intersp = 0.3, xjust = 1, cex = 0.75, seg.len = 0.7, 
       box.col = "white", adj = -0.3)
with(power.1, {lines(dateTime, Sub_metering_1)
     lines(dateTime, Sub_metering_2, col = "red")
     lines(dateTime, Sub_metering_3, col = "blue")})
box()
# Plot 4 (BottomRight)
with(power.1, plot(dateTime, Global_reactive_power,xlab = "Weekday", 
                   ylab = "Global Reactive Power", type = "n"))
with(power.1, lines(dateTime, Global_reactive_power))

# Copy the graph into a PNG file (The default is 480 x 480 px)
dev.copy(png, file = "Plot4.png")

# Close device
dev.off()

