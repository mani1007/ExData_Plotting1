# for using the loaded data

if (!"loading_data.R" %in% list.files()){
  setwd("~/Desktop/ExData_Plotting1/")
}
source("loading_data.R")

png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(subset_data$Date_time, subset_data$Global_active_power, type = "l", xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()
