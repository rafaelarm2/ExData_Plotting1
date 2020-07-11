data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors = FALSE, dec=".")
data <- data[data$Date %in% c("1/2/2007","2/2/2007"),]


hist(as.numeric(data$Global_active_power), xlab="Global Active Power (kilowatts)",
     main="Global Active Power",col="red")

dev.copy(png,"plot1.png", width=480, height=480)
dev.off()