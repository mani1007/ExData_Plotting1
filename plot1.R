# for using the loaded data

if (!"loading_data.R" %in% list.files()){
  setwd("~/Desktop/ExData_Plotting1/")
  }
source("loading_data.R")

# for plotting a histogram
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(subset_data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))
dev.off()
