CACHED <- "subset.rds"

load_data <- function (fn="../household_power_consumption.txt", cached=CACHED) {
  # load data from original file unless we have a cached subset,
  # and then cache it for fast access later
  if( ! file.exists(cached)) {
    d <- read.csv(fn, sep=";", header=TRUE, na.strings="?", stringsAsFactors=FALSE,
                  colClasses=c("character", "character", rep("numeric", 7)))
    d <- subset(d, (Date == '1/2/2007') | (Date == '2/2/2007'))
    d$day <- strptime(d$Date, "%d/%m/%Y")
    d$datetime  <- strptime( paste(d$Date, d$Time, " "), "%d/%m/%Y %H:%M:%S")    
    saveRDS(d, cached)
  } else {
    # read the cached copy of the data set
    d <- readRDS(cached)
  }
  return(d)
}
