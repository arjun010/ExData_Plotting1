# calling code to load and process the data as per requirements
source('get_and_process_data.R')

# Opening device, not specifing size as defaut is 480x480
png(filename='plot4.png')

# getting the grid ready
par(mfrow=c(2,2))

# Making plot
# Top left
plot(data$Date_Time, data$Global_active_power,
     ylab='Global Active Power', xlab='', type='l')

# Top right
plot(data$Date_Time, data$Voltage,
     xlab='datetime', ylab='Voltage', type='l')

# Bottom left
plot(data$Date_Time, data$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(data$Date_Time, data$Sub_metering_2, col='red')
lines(data$Date_Time, data$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid', bty='n')

# Bottom right
plot(data$Date_Time, data$Global_reactive_power,
     xlab='datetime', ylab='Global_reactive_power', type='l')

# Turning off device
dev.off()