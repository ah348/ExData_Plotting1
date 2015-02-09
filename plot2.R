load_dat <- dget("load_dat.R")
dat <- load_dat()

png(filename='plot2.png',height=480,width=480,units='px')

plot(x=dat$Time,
     y=dat$Global_active_power,
     typ='l',
     xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()



