source("utils.R")
d <- load_data()

png(file="plot1.png", height=480, width=480 )
hist(d$Global_active_power, 
     col="Red",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency", 
     main="Global Active Power"
)
dev.off()

