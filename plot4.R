# read data from data range
df <- read.csv2("household_power_consumption2.txt", stringsAsFactors = FALSE)

# get number of x labels
l <- length(df[[1]])

# 2x2 plots
par(mfrow=c(2,2))

# convert to numeric
vs <- as.numeric(df$Global_active_power)

# plot without x labels
plot( vs,type="l",xaxt="n", ylab="Global Active Power")

# set x labels
axis(1,at=c(1,l/2,l), labels=c("Thu", "Fri", "Sat"))

# convert to numeric
vs <- as.numeric(df$Voltage)

# plot without x labels
plot(vs,type="l",xaxt="n", ylab="Voltage", xlab="datetime")

# set x labels
axis(1,at=c(1,l/2,l), labels=c("Thu", "Fri", "Sat"))

# convert to numeric
vs <- as.numeric(df$Sub_metering_1)

# plot without x labels
plot(vs,type="l",xaxt="n", ylab="Energetic sub metering")

# set x labels
axis(1,at=c(1,l/2,l), labels=c("Thu", "Fri", "Sat"))

# plot 2. metering
vs <- as.numeric(df$Sub_metering_2)
lines(1:l, vs, col="Red")

# plot 3. metering
vs <- as.numeric(df$Sub_metering_3)
lines(1:l, vs, col="Blue")

# draw legend
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("Black", "Red", "Blue"))

# convert to numeric
vs <- as.numeric(df$Global_reactive_power)

# plot without x labels
plot(vs,type="l",xaxt="n", ylab="Global_reactive_power", xlab="datetime")

# set x labels
axis(1,at=c(1,l/2,l), labels=c("Thu", "Fri", "Sat"))

dev.copy(png, file="plot4.png")
dev.off()
