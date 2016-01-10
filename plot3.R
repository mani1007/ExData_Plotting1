# for using the loaded data

if (!"loading_data.R" %in% list.files()){
  setwd("~/Desktop/ExData_Plotting1/")
}
source("loading_data.R")

png(filename = "plot3.png", width = 480, height = 480, units = "px")
plot(subset_data$Date_time, subset_data$Sub_metering_1, type = "l", col = "black", xlab = "",
     ylab = "Energy sub metering")
lines(subset_data$Date_time, subset_data$Sub_metering_2, col = "red")
lines(subset_data$Date_time, subset_data$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
dev.off()
