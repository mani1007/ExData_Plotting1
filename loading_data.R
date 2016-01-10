# for loading the data
data_file <- "/home/lilly/Desktop/household_power_consumption.txt"
data <- read.table(data_file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na = "?")
dim(data)

# for extracting data of 2 days only
subset_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
dim(subset_data)

new = paste(subset_data$Date, subset_data$Time)
subset_data$Date_time = strptime(new, "%d/%m/%Y %H:%M:%S")
dim(subset_data)
