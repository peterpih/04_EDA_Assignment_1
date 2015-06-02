## Exploratory Data Analysis Assignment 1
This is repository contains the .R programs necessary for the completion of the first programming assignment in the Exploratory Data Analysis course.  The data set used is too big to be stored on this Git Hub account, but can be found here: https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

### The Assignment

The assignment consists of 4 programs which produce 4 plots:

plot1.R produces plot1.png
plot2.R produces plot2.png
plot3.R produces plot3.png
plot4.R produces plot4.png

Each of the plots has a resolution of 480 x 480.

The programs can be run from within RStudio by using: source("plot1.R")
Each of the programs is self-contained and will read in the raw data, filter the data of interest, and then produce the outpt graphic.

The study data was supplied and is from the UC Irvine Machine Learning Repository, they are "measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years"[1].

The data fields supplied were:
- Date
- Time
- Global_active_power
- Global_reactive_power
- Voltage
- Global_intensity
- Sub_metering_1
- Sub_metering_2
- Sub_metering_3


### Manipulations To The Data

The only changes made to the data while processing was coersing Date and Time fields from character to POSIX format for easier manipulation, all other data remained "as is".


### Footnotes
[1]  From the course assignment:       https://class.coursera.org/exdata-015/human_grading/view/courses/973509/assessments/3/submissions
