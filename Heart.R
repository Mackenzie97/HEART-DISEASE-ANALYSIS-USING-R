# importing dataset
data1 <- read.csv("C:/Users/USER/Desktop/heart_R/data.csv")
View(data1)

# Line graph
x <- data1[1:20,"chol"]

plot(x,type = "o", col="red",xlab="sex",ylab="chol",main="HEART DETAILS OF MALE AND FEMALE CHOLESTEROL LEVELS")
# x - it is a vector containing numeric value
# Xlab - it is the label of x axis
#ylab - it is the label of y axis
#main it is the title of the plot
#col -indicates the color
#type "o" - draw both parts and lines, i - to draw only the lines, P - to draw only the plots

#Pie chart

x <- data1[1:13,"oldpeak"]
labels <- data1[1:13,"oldpeak"]
pie(x,labels,main="oldpeak in Heart Disease", col=rainbow(length(x)))

#Bar Plot
B <- data1[1:20,"cp"]
N <- data1[1:20,"age"]
barplot(B,names.arg=N,xlab="cp",ylab="age",main="THE DETAILS OF HEART DISEASES AGES AND CP", col = "Blue")

#Box plot
input_data <- data1[,c('cp','age')]
print(input_data)
boxplot(age ~ cp,data=data1,xlab = 'cp', ylab='No Of Age',main="Datails Of Heart Attack Patients",col=c("green","purple"))

#Scatter plot

ss <- data1[1:270,c("trestbps","thalach")]
print(ss)
plot(x=data1$thalach,xlab = "Trestbps",ylab="Thalach",main="Trestbps VS Thalach", col='red')
