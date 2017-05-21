
condata <- subset(read.table("C:/Users/ssais/Documents/11. Coursework/Data Science/4. Exploratory Data Analysis/Data/exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt",
                             sep = ";", header = TRUE, colClasses = "character"), 
                  Date == "1/2/2007" | Date == "2/2/2007")

condata$DateTime <- paste(condata$Date,condata$Time)

condata$Day <- strptime(condata$DateTime, format = "%d/%m/%Y%H:%M:%S")


condata$Global_active_power <- as.numeric(condata$Global_active_power)


with(condata, plot(x = Day, y = Global_active_power, ylab = "Global Active Power (kilowatts)",xlab ="", type = 'l'))

dev.copy(png, file = "C:/Users/ssais/Documents/11. Coursework/Data Science/4. Exploratory Data Analysis/ExData_Plotting1/Plot_2.png", width = 480, height = 480)
dev.off()