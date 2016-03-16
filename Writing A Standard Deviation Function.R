# Writing A Standard Deviation Function
# G. Mullings - 3/16/2016

mySD = function(x){
  themean = mean(x) #Calculate the mean of the observations
  N = length(x) #N is a variable to make accessing the count of observations simple.
  distmean = {} #Initializing the variable that will store our distances from the mean.
  for (i in 1:N) {distmean = c(distmean, x[i]-themean)} #Looping over the observations, these commands pull the distance of each observation from the mean and stores the value in our "distmean" variable.
  underroot = sum(distmean^2)/(N-1) #Underroot is the variable that will be square rooted, it contains the sum of our squared distances over the number of observations minus 1 - to account for the limited degrees of freedom.
  return(sqrt(underroot))}

#Does it work?

test = c(1, 5, 64, 22)
sd(test)
mySD(test)