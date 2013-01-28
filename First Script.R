stop()

##==============================================================================
## INITIALIZATION
##==============================================================================

source('00 Initialize.R')

##==============================================================================
## Read CSV
##==============================================================================

dir()	

rawdat = read.table(
	file = 'Database 2013-01-21 (8zQ4cW7T).csv', sep=',', flush=TRUE, 
	header=TRUE, nrows=-1, fill=TRUE, stringsAsFactors=FALSE,
	na.strings='None',)
dat = as.data.table(rawdat)

## Convert booking and discharge dates to date time objects
## EXAMPLE FORMAT: 2012-12-30T20:57:19.616186
dat$booking_date = ExtractIsoTime(dat$booking_date)
dat$discharge_date_earliest = ExtractIsoTime(dat$discharge_date_earliest)


plot(dat$discharge_date_earliest , 1:nrow(dat))
plot(dat$booking_date , 1:nrow(dat))


plot(dat$booking_date, dat$discharge_date_earliest)


hist(dat$bail_amount, 100)












