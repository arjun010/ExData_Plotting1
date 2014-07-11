library(lubridate)

download.file(paste0('https://d396qusza40orc.cloudfront.net/',
                         'exdata%2Fdata%2Fhousehold_power_consumption.zip'),
                  method='curl', destfile='raw-power-data.zip')

unzip('raw-power-data.zip')

# Reading data
data <- read.table('household_power_consumption.txt', header=TRUE,sep=';', na.strings='?',colClasses=c(rep('character', 2),rep('numeric', 7)))
  
# Converting to dates and times
data$Date <- dmy(data$Date)
data$Time <- hms(data$Time)

# Filtering the data
data <- subset(data, year(Date) == 2007 & month(Date) == 2 & (day(Date) == 1 | day(Date) == 2))
  
# Combining date and time for easy plotting
data$Date_Time <- data$Date + data$Time
