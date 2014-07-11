# calling code to load and process the data as per requirements
source('get_and_process_data.R')

# Opening device, not specifing size as defaut is 480x480
png(filename='plot1.png')

# Making plot
hist(data$Global_active_power, main='Global Active Power', xlab='Global Active Power (kilowatts)', col='red')

# Turning off device
dev.off()