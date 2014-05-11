data <- read.table(file="household_power_consumption.txt", header = TRUE, sep = ";", col.names = colnames(read.table("household_power_consumption.txt", nrow = 1,   header = TRUE, sep=";")), skip = 66637, nrow = 2880, na.string = "?")
png("plot1.png",width=400,height=400,units="px")
hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")
dev.off()
