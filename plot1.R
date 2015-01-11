Apower <- read.table("household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE, na.strings = c("?", ""))
Bpower <- subset(Apower, Apower$Date %in% c("1/2/2007", "2/2/2007"))
Bpower$Date <- as.Date(Bpower$Date, format="%d/%m/%Y")
Bpower$date <- paste(Bpower$Date, Bpower$Time)
Bpower$date_time <- strptime(Bpower$date, "%Y-%m-%d %H:%M:%S") 

png(file = "plot1.png")
plot1 <- hist(Bpower$Global_active_power, main= "Global Active Power", col= "red", xlab="Global Active Power (kilowatts)")
dev.off()