source("utils.R")
d <- load_data()

png(file="plot2.png", height=480, width=480 )
plot(d$datetime, d$Global_active_power, 
     type="l", 
     main="", 
     xlab="", 
     ylab="Global Active Power (kilowatts)"
)
dev.off()
