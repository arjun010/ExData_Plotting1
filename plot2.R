# calling code to load and process the data as per requirements
source('get_and_process_data.R')

# Opening device, not specifing size as defaut is 480x480
png(filename='plot2.png')

# Making plot
plot(data$Date_Time, data$Global_active_power,ylab='Global Active Power (kilowatts)', xlab='', type='l')

# Turning off device
dev.off()