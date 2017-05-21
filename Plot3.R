condata <- subset(read.table("C:/Users/ssais/Documents/11. Coursework/Data Science/4. Exploratory Data Analysis/Data/exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt",
                             sep = ";", header = TRUE, colClasses = "character"), 
                  Date == "1/2/2007" | Date == "2/2/2007")

condata$DateTime <- paste(condata$Date,condata$Time)

condata$Day <- strptime(condata$DateTime, format = "%d/%m/%Y%H:%M:%S")


condata$Sub_metering_1 <- as.numeric(condata$Sub_metering_1)
condata$Sub_metering_2 <- as.numeric(condata$Sub_metering_2)
condata$Sub_metering_3 <- as.numeric(condata$Sub_metering_3)

with(condata, (plot(x = Day, y = condata$Sub_metering_1, ylab = "Energy sub metering", xlab = "", type = 'l', col = "black")))
par(new = T)
with(condata,(plot(x = Day, y = condata$Sub_metering_2, ylab = "Energy sub metering", xlab = "", type = 'l', col = "red", ylim = range(Sub_metering_1))))
par(new = T)
with(condata,(plot(x = Day, y = condata$Sub_metering_3, ylab = "Energy sub metering", xlab = "", type = 'l', col = "blue", ylim = range(Sub_metering_1))))
legend("topright", lty = 1, col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
       
               

dev.copy(png, file = "C:/Users/ssais/Documents/11. Coursework/Data Science/4. Exploratory Data Analysis/ExData_Plotting1/Plot_3.png", width = 480, height = 480)
dev.off()