data <- read.table(
  "household_power_consumption.txt",
  header = TRUE,
  sep = ";",
  na.strings = "?",
  stringsAsFactors = FALSE
)

data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

data <- subset(
  data,
  Date == as.Date("2007-02-01") |
    Date == as.Date("2007-02-02")
)

png("plot1.png",width=480,height=480)

hist(data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",ylim=c(0,1200),yaxt="n",main="Global Active Power")
axis(
  side = 2,
  at = seq(200, 1200, by = 200),
  cex.axis = 0.8
)