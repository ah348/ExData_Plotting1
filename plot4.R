load_dat <- dget("load_dat.R")
dat <- load_dat()

attach(dat)
par(mfrow=c(2,2))
plot(Time,Global_active_power,
     type='l',
     main="",
     xlab="",ylab="Global Active Power")
plot(Time,Voltage,
     type='l',
     main="",
     xlab="datetime")
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
       col=c('black','red','blue'),
       bty="n")
plot(Time,Global_reactive_power,
     main="",
     type='l',
     xlab="datetime")