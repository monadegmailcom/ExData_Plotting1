# read data from data range
df <- read.csv2("household_power_consumption2.txt", stringsAsFactors = FALSE)

# convert col 3 to numeric
df[[3]] <- as.numeric(df[[3]])

par(mfrow=c(1,1))

# plot without x labels
plot(df[[3]],type="l",xaxt="n", ylab="Global Active Power (kilowatts)")

# get number of x labels
l <- length(df[[1]])

# set x labels
axis(1,at=c(1,l/2,l), labels=c("Thu", "Fri", "Sat"))

dev.copy(png, file="plot2.png")
dev.off()