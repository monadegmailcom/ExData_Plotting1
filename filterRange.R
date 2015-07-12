library(dplyr)

# load original data
df <- read.csv2("household_power_consumption.txt")

# convert date col to string
df <- mutate(df, Date=as.character(Date))

# convert date col to Date
df <- mutate(df, Date=as.Date(Date,format="%d/%m/%Y"))

# filter range
df2 <- filter(df, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

# write data back
write.csv2(df2, "household_power_consumption2.txt", row.names=FALSE,quote=FALSE)