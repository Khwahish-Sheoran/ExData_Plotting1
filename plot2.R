datetime <- strptime(
  paste(data$Date, data$Time),
  format = "%Y-%m-%d %H:%M:%S"
)
png("plot2.png",width=480,height=480)

plot(datetime, data$Global_active_power, type = "l",ylab="Global Active Power(kilowatts)",xlab=" ",xaxt="n")
axis(side = 1,at = as.POSIXct(c("2007-02-01", "2007-02-02", "2007-02-03")), labels = c("Thu", "Fri", "Sat")
)
