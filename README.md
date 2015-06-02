# Exploratory Data Analysis Assignment 1
This is repository contains the necessary .R programs and data for the first assignment of the Exploratory Data Analysis course.

## The Assignment

The assignment consists of 4 programs which produce 4 plots.

plot1.R produces plot1.png
plot2.R produces plot2.png
plot3.R produces plot3.png
plot4.R produces plot4.png

Each of the plots has a resolution of 480 x 480.

The programs can be run from within RStudio by using: source("plot1.R")
Each of the programs is self-contained and will read in the raw data, filter the data of interest, and then produce the outpt graphic.

The study data was supplied and is from from the UC Irvine Machine Learning Repository and is "measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years"[1].


## Manipulations To The Data

The only changes made to the data while processing was cocersing Date and Time fields from character to POSIX format for easier manipulation, all other data remained "as is".


# Footnotes
[1]  From the course assignment:       https://class.coursera.org/exdata-015/human_grading/view/courses/973509/assessments/3/submissions
