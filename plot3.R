load_dat <- dget("load_dat.R")
dat <- load_dat()

png(filename='plot3.png',height=480,width=480,units='px')

plot(x=dat$Time,
     y=dat$Sub_metering_1,
     col='black',
     type='l',
     xlab="",
     ylab="Energy sub metering")
lines(x=dat$Time,
      y=dat$Sub_metering_2,
      col='red')
lines(x=dat$Time,
      y=dat$Sub_metering_3,
      col='blue')
legend("topright",
       lty=1,
       legend=c("Sub_metering_1",
                "Sub_metering_2",
                "Sub_metering_3"),
       col=c('black','red','blue'))
dev.off()
