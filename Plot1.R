condata <- subset(read.table("C:/Users/ssais/Documents/11. Coursework/Data Science/4. Exploratory Data Analysis/Data/exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt",
                             sep = ";", header = TRUE, colClasses = "character"), 
                  Date == "1/2/2007" | Date == "2/2/2007")

condata$Global_active_power <- as.numeric(condata$Global_active_power)

hist(condata$Global_active_power, xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power", col = "red")
dev.copy(png, file = "C:/Users/ssais/Documents/11. Coursework/Data Science/4. Exploratory Data Analysis/ExData_Plotting1/Plot_1.png", width = 480, height = 480)
dev.off()
