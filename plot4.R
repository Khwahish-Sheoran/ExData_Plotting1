png("plot4.png",width=480,height=480)
par(mfrow=c(2,2))
plot(datetime, data$Global_active_power, type = "l",ylab="Global Active Power(kilowatts)",xlab=" ",xaxt="n")
axis(side = 1,at = as.POSIXct(c("2007-02-01", "2007-02-02", "2007-02-03")), labels = c("Thu", "Fri", "Sat")
)
with(data,plot(datetime,Voltage,,type="l",ylab="Voltage",xlab="datetime",xaxt="n"))
axis(side = 1,at = as.POSIXct(c("2007-02-01", "2007-02-02", "2007-02-03")), labels = c("Thu", "Fri", "Sat")
)
plot(datetime,data$Sub_metering_1,col="black",type="l",xlab=" ",xaxt="n",ylab="Energy sub metering")
lines(datetime, data$Sub_metering_2, col="red")
lines(datetime, data$Sub_metering_3, col="blue")
axis(side = 1,at = as.POSIXct(c("2007-02-01", "2007-02-02", "2007-02-03")), labels = c("Thu", "Fri", "Sat")
)
legend(
  "topright",
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  col = c("black", "red", "blue"),
  lty = 1
)
with(data,plot(datetime,Global_reactive_power,type="l",xlab="datetime",xaxt="n"))
axis(side = 1,at = as.POSIXct(c("2007-02-01", "2007-02-02", "2007-02-03")), labels = c("Thu", "Fri", "Sat")
)