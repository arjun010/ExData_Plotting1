# calling code to load and process the data as per requirements
source('get_and_process_data.R')

# Opening device, not specifing size as defaut is 480x480
png(filename='plot3.png')

# Making plot
plot(data$Date_Time, data$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')
lines(data$Date_Time, data$Sub_metering_2, col='red')
lines(data$Date_Time, data$Sub_metering_3, col='blue')
legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),col=c('black', 'red', 'blue'), lty='solid')

# Turning off device
dev.off()