#Install ggplot2 package if required
##install.packages("ggplot2")

#Use the animal sleep dataset
ggplot2::msleep
#Density plot of sleep time against diet type to see if there are any patterns that form looking at diet alone
qplot(sleep_total, data=msleep, geom="density", color=vore, linetype=vore, xlab="Total Sleep (per 24 Hours)", ylab="Density", main="Density plot of Sleep Time")

