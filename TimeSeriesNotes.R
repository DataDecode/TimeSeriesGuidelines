# Basic assumption of Time Series
# Consecutive observations are equally spaced and
# can apply discrete-time observation index

#This may not actually hold with missing observations.
#Ex.  Stock Data has missing weekend days and no holidays

#Time Series Frequencies
start()
end()
frequency()
deltat()
cycle()

#Time Series Function
ts(____, start= , frequency = )

###Transformations###

log() #this can liniarize exponential growth trends

diff() #Frist differencing focuses on the difference between 
#two observations rather than change on an absolute scale.

#Seasonal difference transformation
#diff() with a seasonal differencing can help remove seasonal components.

###White Noise stationary###
# A Fixed, Constant mean
#a fixed, constant variance
# No correlation over time

white_noise_2 <- arima.sim(model = list(order = c(0, 0, 0)), n = 100, mean = 100, sd = 10)

###Random Walk###
#A Non-stationary time Series

# No specified mean or variance
#Strong Dependence over time
# It's changes or incrememnts follow a white noise pattern

# Random walk is the pervious observation plus Noise

#This can be reatanged as a first difference series
#The first difference of a random walk series is just a white noise series

###Random Walk with a drift