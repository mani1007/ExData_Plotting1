# for using the loaded data

if (!"loading_data.R" %in% list.files()){
  setwd("~/Desktop/ExData_Plotting1/")
}
source("loading_data.R")

png(filename = "plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2, 2))

## Graph at top-left
plot(subset_data$Date_time, subset_data$Global_active_power, type = "l", xlab = "", 
     ylab = "Global Active Power")

## Graph at top-right
plot(subset_data$Date_time, subset_data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

## Graph at bottom-left
plot(subset_data$Date_time, subset_data$Sub_metering_1, type = "l", col = "black", xlab = "",
     ylab = "Energy sub metering")
lines(subset_data$Date_time, subset_data$Sub_metering_2, col = "red")
lines(subset_data$Date_time, subset_data$Sub_metering_3, col = "blue")
legend("topright", bty = "n", col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)

## Graph at bottom-right
plot(subset_data$Date_time, subset_data$Global_reactive_power, type = "l", col = "black",
     xlab = "datetime", ylab = "Global_reactive_power")
dev.off()