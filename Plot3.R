# Script for the third plot, the current wd must be the one that includes the household file
# Load the set
source("getSet.R")
par(mfrow=c(1,1))

# Create plot3
with(power.1, plot(dateTime, Sub_metering_1 ,xlab = "Weekday", 
                   ylab = "Energy sub metering", type = "n"))
with(power.1, {lines(dateTime, Sub_metering_1)
               lines(dateTime, Sub_metering_2, col = "red")
               lines(dateTime, Sub_metering_3, col = "blue")})
legend("topright", col = c("black","red","blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1, 
       x.intersp = 0.3, y.intersp = 0.3, xjust = 0.5, cex = 0.9, seg.len = 0.8, adj = -0.3)

# Copy the graph into a PNG file (The default is 480 x 480 px)
dev.copy(png, file = "Plot3.png")

# Close device
dev.off()