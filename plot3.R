source("utils.R")
d <- load_data()

png("plot3.png", height=480, width=480)
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
       col=c("black","red","blue"), 
       lwd=1, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
)
dev.off()
