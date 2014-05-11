data <- read.table(file="household_power_consumption.txt", header = TRUE, sep = ";", col.names = colnames(read.table("household_power_consumption.txt", nrow = 1,   header = TRUE, sep=";")), skip = 66637, nrow = 2880, na.string = "?")
data$new <- strptime(paste(data$Date, data$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

png("plot4.png",width=400,height=400,units="px")

par(mfrow=c(2,2))

plot(y = data$Global_active_power, x = data$new, type = "l", ylab = "Global Active Power", xlab = "")

plot(y = data$Voltage, x = data$new, type = "l", ylab = "Voltage", xlab = "datetime")

plot(y = data$Sub_metering_1, x = data$new, type = "l", ylab = "Energy sub metering", xlab = "")
lines(y = data$Sub_metering_2, x = data$new, col = "red", type = "l")
lines(y = data$Sub_metering_3, x = data$new, col = "blue", type = "l")
legend(x = "topright", box.lwd = 0, cex = 0.8, box.col = "white", legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black", "red", "blue"))
box(col="black")

plot(y = data$Global_reactive_power, x = data$new, type = "l", ylab = "Global_reactive_power", xlab = "datetime")

dev.off()
