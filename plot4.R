source("utils.R")
d <- load_data()

png("plot4.png", height=480, width=480)
par(mfrow=c(2,2))

hist(d$Global_active_power, col="Red",xlab="Global Active Power (kilowatts)",ylab="Frequency", main="")

plot(d$datetime, d$Voltage, 
     type="l", 
     main="", 
     ylab="Voltage",
     xlab="datetime", 
     
)

plot(d$datetime, d$Sub_metering_1,
     type="n", 
     main="", 
     xlab="", 
     ylab="Energy sub metering"
)
lines(d$datetime, d$Sub_metering_1, col="black")
lines(d$datetime, d$Sub_metering_2, col="red")
lines(d$datetime, d$Sub_metering_3, col="blue")
legend("topright", 
       box.lty=0,
       col=c("black","red","blue"), 
       lwd=1, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
)

plot(d$datetime, d$Global_reactive_power, 
     type="l", 
     main="", 
     xlab="datetime", 
     ylab="Global_reactive_power"
)


par(mfrow=c(1,1))
dev.off()
