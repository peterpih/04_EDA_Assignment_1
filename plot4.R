#
# This program will plot out the first graph in the Exploratory Data Analysis Assignment #1
#
# This is program 4 of 4
#
# This program assumes the data file is in the working directory
#
# Read in data file and figure out the column classes
# NOTE: NA's are given as "?"
#
fileName <- "household_power_consumption.txt"
sampleRead <- read.delim(file=fileName, sep=";", header=TRUE, nrows=5)
useClasses <- sapply(sampleRead, class)
#
x <- read.delim(fileName, sep=";", na.strings="?", header = TRUE, colClasses = useClasses) # , nrows=10)
#
# convert date to something that can be easily filtered
#
x$Date <- strptime(paste(x$Date, x$Time), format="%d/%m/%Y %H:%M:%S")
#
# Get the dates we want
#
startDate <- strptime("2007-02-01 00:00:00", format="%Y-%m-%d %H:%M:%S")  # from midnight
endDate <- strptime("2007-02-03 00:00:00", format="%Y-%m-%d %H:%M:%S")    # to midnight
#
y <- subset(x, x$Date >= startDate & x$Date <= endDate )
#
rm(x)   # free up space
#
# Fourth plot, and write to file
# This has 4 plots together
# To view plot in seprate window in RStudio, only run the plotting commands
#
png(filename = "4.png", width = 480, height = 480, units = "px")
#
# layout is 2 x 2 graphs
#
par(mfrow=c(2,2))
#
# Graph 1
#
par(col="black")
plot(y$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", xaxt="n", type="n")
lines(y$Global_active_power)
axis(1,at=c(1,1440,2881), labels=c("Thu","Fri","Sat"))
#
# Graph 2
#
par(col="black")
plot(y$Voltage, xlab="datetime", ylab="Voltage", xaxt="n", type="n")
axis(1,at=c(1,1440,2881), labels=c("Thu","Fri","Sat"))
lines(y$Voltage, col="black")
#
# Graph 3
#
par(col="black")
plot(y$Sub_metering_1, xlab="", ylab="Energy sub metering", xaxt="n", type="n")
lines(y$Sub_metering_1, col="black")
lines(y$Sub_metering_2, col="red")
lines(y$Sub_metering_3, col="blue")
axis(1,at=c(1,1440,2881), labels=c("Thu","Fri","Sat"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), bty="n", text.col="black",lty=c(1,1), col=c(col="black", col="red", col="blue"))
#
# Graph 4
#
par(col="black")
plot(y$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", xaxt="n", type="l", col="black")
axis(1,at=c(1,1440,2881), labels=c("Thu","Fri","Sat"))

dev.off()
