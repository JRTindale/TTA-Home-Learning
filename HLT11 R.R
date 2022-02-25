#Install ggplot2 package if required
##install.packages("ggplot2")

#Use the animal sleep dataset
ggplot2::msleep
#Density plot of sleep time against diet type to see if there are any patterns that form looking at diet alone
qplot(sleep_total, data=msleep, geom="density", color=vore, linetype=vore, xlab="Total Sleep (per 24 Hours)", ylab="Density", main="Density plot of Sleep Time")

#1. Write an R program to create three vectors a, b, c with 5 integers. 
#   Combine the three vectors to become a 3×5 matrix where each column represents a vector. 
#   Print the content of the matrix. 
#   Plot a graph and label correctly.
a <- as.integer(c(1,2,3,4,5))
b <- as.integer(c(2,4,6,8,10))
c <- as.integer(c(3,6,9,12,15))
d <- data.frame(a,b,c)            
print(d)                          

#install.packages("scatterplot3d")  # Install
library("scatterplot3d")            # load
scatterplot3d(x=d$a, xlab = "a vector",
              y=d$b, ylab = "b vector",
              z=d$c, zlab = "c vector",
              main="Plotting 3 vectors",
              pch = 16, color="Blue")


#2. Write a R program to create a Data frames which contain details of 5 employees and display the details. 
#   (Name, Age, Role and Length of service).
df2 <- data.frame(
  Name = c("Kyra","Boris","Alex","Alana","Gary"),
  Age = c(26,54,32,38,58),
  Role = c("HR","DataEngineer","BA","SoftwareEngineer","DevOpsEngineer"),
  LoS = c(1,4,7,4,2)
)
df2


#3. Import the GGPLOT 2 library and plot a graph using the qplot function. 
#   X axis is the sequence of 1:20 and the y axis is the x^2. 
#   Label the graph appropriately. install.packages("ggplot2",dependencies = TRUE)
library(ggplot2)

x = seq(from = 1, to = 20) 
y = x^2                   
df <- data.frame(x,y)    

ggplot(data=df, aes(x=x, y=y)) +
  geom_line()+
  geom_point()+
  labs(
    title="Plotting x squared for the values 1 to 20",
    x="Numbers 1 to 20",
    y="X^2")

#4. Create a simple bar plot of five subjects
Subject = c("Maths","Chemistry","Physics","Biology","Art")
AttendanceCount <- sample(1:100, 5, replace=F)
barplot(
  AttendanceCount,
  names.arg=Subject,
  xlab="Subject",
  ylab="Count of Attendance",
  main="Count of students attending per subject")

#5. Write a R program to take input from the user (name and age) and display the values.
my.name <- readline(prompt="Enter name:")
my.age <- as.integer(readline(prompt="Enter age:"))
print(paste("Hi, ", my.name, " you are ", my.age, " years old."))

#6. Write a R program to create a sequence of numbers from 20 to 50 and find the mean of numbers from 20 to 50 and sum of numbers.
x <- seq(from = 20, to = 50)
MeanX = mean(x)
SumX = sum(x)
MeanX
SumX

#7. Write a R program to create a vector which contains 10 random integer values between -50 and +50
x <- sample(-50:50, 10)
x