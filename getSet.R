# Script for loading the set
library(data.table)
library(lubridate)
library(dplyr)

# Read the file
powerFull <- fread("household_power_consumption.txt")

# Subset the file
power.1 <- subset(powerFull, Date == "2/2/2007" | Date == "1/2/2007")
rm(powerFull)

# View the structure of the set
str(power.1)

# Create a variable with the dateTime
power.1$dateTime = dmy_hms(paste(power.1$Date, power.1$Time, sep = " "))

# Give variables the right format
power.1$Date = dmy(power.1$Date)
power.1$Time = hms(power.1$Time)
power.1$Global_active_power = as.numeric(power.1$Global_active_power)
power.1$Global_reactive_power = as.numeric(power.1$Global_reactive_power)
power.1$Voltage = as.numeric(power.1$Voltage)
power.1$Global_intensity = as.numeric(power.1$Global_intensity)
power.1$Sub_metering_1 = as.numeric(power.1$Sub_metering_1)
power.1$Sub_metering_2 = as.numeric(power.1$Sub_metering_2)
