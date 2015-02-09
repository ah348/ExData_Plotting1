load_dat <- function() {
  dat <- read.table('feb12.txt',header=TRUE,sep=";")
  dt <- paste(dat$Date,dat$Time)
  dat$Time <- strptime(dt,'%d/%m/%Y %H:%M:%S')
  dat$Date <- as.Date(dat$Time)
  dat
}