#
# This program will plot out the first graph in the Exploratory Data Analysis Assignment #1
#
# This is program 1 of 4
#
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
# First plot, and write to file
# To view plot in seprate window in RStudio, only run the plotting commands
#
png(filename = "1.png", width = 480, height = 480, units = "px")

hist(y$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red")

dev.off()