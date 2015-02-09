load_dat <- dget("load_dat.R")
dat <- load_dat()

png(filename='plot1.png',height=480,width=480,units='px')

hist(dat$Global_active_power,
     col='red',
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     yaxp=c(0,1200,6) )
dev.off()

