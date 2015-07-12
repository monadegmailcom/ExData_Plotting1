# read data from data range
df <- read.csv2("household_power_consumption2.txt", stringsAsFactors = FALSE)

# convert col 3 to numeric
df[[3]] <- as.numeric(df[[3]])

par(mfrow=c(1,1))

# plot
hist(df[[3]], xlab="Global Active Power (kilowatts)", main = "Global Active Power", col="Red")

dev.copy(png, file="plot1.png")
dev.off()