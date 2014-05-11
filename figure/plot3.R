data <- read.table(file="household_power_consumption.txt", header = TRUE, sep = ";", col.names = colnames(read.table("household_power_consumption.txt", nrow = 1,   header = TRUE, sep=";")), skip = 66637, nrow = 2880, na.string = "?")
data$new <- strptime(paste(data$Date, data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

png("plot3.png",width=400,height=400,units="px")

plot(y = data$Sub_metering_1, x = data$new, type = "l", ylab = "Energy sub metering", xlab = "")
lines(y = data$Sub_metering_2, x = data$new, col = "red", type = "l")
lines(y = data$Sub_metering_3, x = data$new, col = "blue", type = "l")
legend(x = "topright", xjust=1, yjust=1,  border = "black", legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black", "red", "blue"))

dev.off()