########################################################################################
#####################--------------- R BOOT CAMP  -----------------#####################
############################### By: Hemanth Mydugolam ##################################
########################################################################################


############################# A. BASICS OF R PROGRAMMING################################

# Introduction----
# 1. Coder must know how to search the web for solutions
# 2. Use ? in Rstudio for help
# 3. # is used to add comments
c(1,2,3)
?c()
# creating a vector

# RStudio overview

# 1.script----------where you code
# 2.console--------- where you get the result
# 3.environment ------ where your variables and dataframes are listed
# 4.file, packages and help section '?'
# 5.explore the menu bar of R studio


#install necessary packages

# install.packages("readxl")
# install.packages("dplyr")
# install.packages("ggplot2")
# install.packages("readr")


# setting working directory


setwd("C:/Users/username/Desktop/R programming")

getwd()

# Basic R calculations

1+1
2*7
2/2
8**2
8^2
sum(2,5) #inbuilt functions ; cran website has list of all functions

sum(15+5)
?sum
sqrt(25)

round(2.55)#round to even

round(2.5)
round(3.5)
round(2.5356464,3)  



# Variable assignment # CONTAINER OF DATA


num = 23
num
num<- 35
num

a <- 2  #assignment operators
a
a=2 
a 
#or
print(num)

a <- 3.5
a
b <- 'hello' 
b
c <- TRUE
c

TRUE / FALSE
T/F

9 * F


#3 main data types : Numeric,Character,boolean/logical , Vectors, matrices, lists and dataframes

#1. Numeric----
num1 <- 5.98   #both integers and decimals comes under numeric data type 
class(num1)

num2= 6

class(num2)


num1 = as.integer(num1)
num1
class(num1)


num2 <- as.character(4) # This method is called explicit type casting.
class(num2)


# 2.Character---- 
dd <- "it's my story" # must be within single/double quotes; string
class(dd)
num = 'T'
class(num)


# 3.Logical---- only 2 values ;TRUE/FALSE

4>5
4==8 
4!=8
h <- 4 > 8
class(h)

# Vectors----collection of elements of different data types
V1 <- c(1,2,3,4.2)
V1

V1 = as.integer(V1)
V1
class(V1)

V1-0.5
V1+1
V1/2


V2 <- c(TRUE,FALSE,2,3);class(V2) #coz true = 1 and false = 0
V2



V3<- c(TRUE,FALSE,"a",2,3);class(V3) #single character can make the entire vector class as character
V3
append(V1,V2) #adding values to the vectors-numeric values
?append()

cbind(V1,V2) 
rbind(V1,V2)


# Matrices---- 2 dimensional collection of homogenous data(single class)
m1 <- matrix(1:6,2,3) #by default it will run byrow =F if you didn't mention anything
m1

m2 <- matrix(1:6,2,3,byrow = T)
m2

# Lists----
# contain elements of different types like − numbers, strings, vectors and another list inside it. 
# The vector is one-dimensional, whereas the list is a multidimensional object.

mylist <- list(a=V1,b=V2,m1,m2) # adding names

mylist
mylist['a'] #calling the individual lists
mylist['b'] 
mylist[3] # integer indexing


class(mylist[3])       #you are applying the class() function to the sublist : m1
class(mylist[[3]])        #using double square brackets to access the actual value of the third element (m1) directly.

# An array is a multi-dimensional data structure that can have more than two dimensions. 
#Matrices are a specific type of array with two dimensions.


names(mylist) # names of elements in the list
mylist$a #using $ to call objects in list

# Data frames----tabular collection of vectors of same length
V3 <- c(1,2,3,4,5)
V4 <- c('a','b','c',TRUE,3)
df1 <- data.frame(V3,V4)
df1
class(df1)

df2 <- data.frame(a=V3,b=V4,numb=3,V = c(1,2,3,4,5))   #assigned single number will adjust to the dimensions but if the vector is assigned it should fit the dimensions.
df2

#Lists can have different lengths for each element.
#Data frames, on the other hand, are organized into columns with equal lengths.

#FACTORS

#counting the frequency of each category
#creating cross-tabulations
#visualizing data using bar plots or pie charts.


# Create a vector of colors
colors <- c("red", "blue", "green", "red", "blue", "red")

# Convert the vector to a factor
factor_colors <- factor(colors)

# Print the factor
print(factor_colors)



# Create two factor variables
gender <- factor(c("Male", "Female", "Male", "Male", "Female"))
category <- factor(c("A", "B", "B", "A", "A"))

# Create a cross-tabulation
cross_table <- table(gender, category)

# Print the cross-tabulation
print(cross_table)

######### Indexing ######

# Index=starts with 1 in R, 
# index is the position of an element in a data container(vector,matrix,list,dataframe)

## Indexing for Vectors
V4 <- c('a','b','c',TRUE,3) 
V4[3]
V4[3:5]
V4[c(FALSE,F,TRUE,F,T)] #applies indexing or subsetting to the V4 vector using a logical vector as the index.
V4[-2] #excepts the index

## Indexing for matrix
m1
m1[1, 2] #for matrix arg1 = row, arg2 = column
m1[1:2,1:2]

## Indexing for df
df2[2:4] #the default behavior is to select columns
df2[2:3, ]
df2[3:4,2:ncol(df2)]


df2$V #dollar sign indexing 
df2$V[5]
# OR
df2[[4]][5]     #col reference
df2[[4]][2:5]    #col reference
df2[5, 2:4]     #row reference

# Functions----creation of a function
# A function is a set of statements organized together to perform a specific task.
# R has a large number of in-built functions and the user can create their own functions.
#ex:1 square of sum
square_of_sum <- function(value1,value2){
  result <- (value1 + value2)^2
  return(result)
}
square_of_sum(2,3)

square_of_sum(123,564)

#average calculation
calculate_average <- function(numbers) {
  total <- sum(numbers)
  count <- length(numbers)
  average <- total / count
  return(average)
}

numbers <- c(4, 7, 9, 12, 5)
calculate_average(numbers)

#ex:3

check_even_odd <- function(number) {
  if (number %% 2 == 0) {
    return("Even")
  } else {
    return("Odd")
  }
}

check_even_odd(7)

# Packages
# Collection of Functions
# install.packages("dplyr")
library(dplyr)


# loading excel and csv files
# install.packages("readxl")
library(readxl)

student_data <- read.csv("student-data.csv")


##############------------------------------------------#############
##### -------------- 3 Data Load & Manipulation --------------- #####
##############------------------------------------------#############

# Clear console and Environment....

setwd("")
## install the required libraries and load the libraries
# required_libraries <- c("dplyr","tidyr","ggplot2","readxl","readr")
# install.packages(required_libraries)
### Load the libraries
library(dplyr)
library(readxl)

### --- Importing the dataset --- ###
student_data <- read.csv("student-data.csv")
student_data_xlsx <- read_xls("student-data.xls")
student_data_text <- read.delim("student-data.txt",sep = "\t")

### --- Data exploring and summarizing the dataset --- ###
# fetch the first rows
head(student_data)
head(student_data,10)
first_7rows <- head(student_data,7)

# fetch last rows
tail(student_data)
tail(student_data,20)
last_8rows <- tail(student_data,8)

# random rows
sample_n(student_data,7)
sample_frac(student_data,0.2)
sample_30per <- sample_frac(student_data,0.3)

# structure of dataset
str(student_data)
student_data$age<-as.character(student_data$age)
str(student_data)
student_data$age<-as.integer(student_data$age)
str(student_data)

# column names of the dataset
names(student_data)
#dimension of dataset
dim(student_data)
# to check the no of rows in the dataset
nrow(student_data)
# to check the no of columns in the dataset
ncol(student_data)

# summary of specific column in the dataset
summary(student_data$age)
summary(student_data$school)
summary(student_data[,c("age","G1","G2")])

# summary of complete dataset
summary(student_data)

# table of data
table(student_data$school)

## simple stats
min(student_data$age)
max(student_data$age)
mean(student_data$age)

# Creating a new column
student_data$Sumofgrades <- student_data$G1+student_data$G2+student_data$G3
student_data$Average_Grades <- (student_data$Sumofgrades)/3
student_data$Average_Grades <- round(student_data$Average_Grades,3)

### --- Filtering and Subsetting the dataset --- ###
# Filter the dataset where the age is above 19
age_gt_19 <- filter(student_data,age>19)

# validation of the filtered dataframe using max function
min(age_gt_19$age)

# Filter the dataset where guardian is father and job of the guardian is teacher
gaurdian_father_teacher <- filter(student_data,guardian=="father" & Fjob=="teacher")

# View the filtered data using View function

# validation of the filtered data frame using unique function
unique(gaurdian_father_teacher$guardian)
unique(gaurdian_father_teacher$Fjob)

subset_first10_rows <- student_data[1:10,]
subset_first4columns <- student_data[,1:4]
subset4columns <- student_data[,c("school","guardian","Mjob","Fjob")]
# ordering the dataset by using arrange function
# Question: arrange the dataset by Average grade column
student_data_arranged <- student_data %>% arrange(Average_Grades)

# desc order of the average grade
student_data_arranged <- student_data %>% arrange(desc(Average_Grades))

# create subset with only school, age, G1,G2,G3 columns
subset1 <- subset(student_data,select = c("school","age","G1","G2","G3"))
# View the subset data

#subset1 <- student_data[c("school","age","G1","G2","G3")] #Alternative way..

# deleting the age column from subset1
subset1 <- subset(subset1,select = -c(age))
names(subset1)
dim(subset1)
subset1 <- subset1[-1:-20,-3]
dim(subset1)
subset1$G3<-NULL
View(subset1)

##############------------------------------------------#############
##### ----------------- 4 Data Visualization ------------------ #####
##############------------------------------------------#############
library(ggplot2)
# scatter plot between student age and study hours
# basic scatterplot
ggplot(student_data, aes(x=absences, y=G1)) + geom_point()

# scatter plot by gender column (sex)
ggplot(student_data, aes(x=absences, y=G1, color= sex)) + geom_point()

# add title to the above scatter plot
ggplot(student_data, aes(x=absences, y=G1, color= sex)) + geom_point() +
  labs(y="Grade 1",x="Absences")+ggtitle("Absences & G1 Scatter Plot by Sex")

# If you want to change the shape of each category
ggplot(student_data, aes(x=absences, y=G1, color= sex, shape=sex)) + geom_point(size=2) +
  labs(y="Grade 1",x="Absences")+ggtitle("Absences & G1 Scatter Plot by Sex")

# outline of the columns Father Job (Fjob)
table(student_data$Fjob)

# similar outline in the form of charts
v <- ggplot(data = student_data,aes(x=Fjob))+geom_bar()+
  labs(y= "No of Students", x = "Father Job")+ggtitle("Father's Job Distribution")
v
# adjusting the title position to the center of the plot
v1 <- ggplot(data = student_data,aes(x=Fjob))+geom_bar()+
  labs(y= "No of Students", x = "Father Job")+ggtitle("Father's Job Distribution")+
  theme(plot.title = element_text(hjust = 0.5))
v1
# Making the graph more readable adding values to each bar
v2<-ggplot(data = student_data,aes(x=Fjob))+geom_bar()+
  labs(y= "No of Students", x = "Father's Job")+ggtitle("Father's Job Distribution")+
  theme(plot.title = element_text(hjust = 0.5),legend.position = "none")+
  geom_text(stat='count', aes(label=..count..), vjust=-0.2)
v2

# beautifying the plot with aesthetic values
v3 <- v2+geom_bar(mapping = aes(x=Fjob,fill=Fjob))
v3

# Table that represents the school and sex variable distribution
table(student_data$Fjob,student_data$school)

# Plot that represents the school in x-axis and sex data 
# Stacked bar graph
# Group by on multiple columns
agg_students_data <- student_data %>% count(Fjob, school)
agg_students_data
agg_students_data <- as.data.frame(agg_students_data)
names(agg_students_data)
names(agg_students_data)[3]<-"Students_Count"
names(agg_students_data)

# If you want to change all column names of dataframe
#names(agg_students_data)<-c("School","Sex","Students_Count")

# sgtacked bar plot
ggplot(agg_students_data, aes(x = Fjob, y = Students_Count, fill = school)) +geom_col() +
  geom_text(aes(y = Students_Count, label = Students_Count), vjust = 1.0, colour = "white")

# add the axis titles and plot title using labs and ggtitle function
ggplot(agg_students_data, aes(x = Fjob, y = Students_Count, fill = school)) +geom_col() +
  geom_text(aes(y = Students_Count, label = Students_Count), vjust = 1.0, colour = "white")+
  labs(y= "No of Students", x = "Father's Job")+ggtitle("Father's Job V/S School")+
  theme(plot.title = element_text(hjust = 0.5))

# Bar graph with school on x-axis and color filled with sex ad using the position_dodge()
ggplot(agg_students_data, aes(x = Fjob, y = Students_Count, fill = school)) +geom_col(position = "dodge") +
  geom_text(aes(label = Students_Count),colour = "black", size = 3,vjust = -0.5, position = position_dodge(.9))+
  labs(y= "No of Students", x = "Father's Job")+ggtitle("Father's Job V/S School")+
  theme(plot.title = element_text(hjust = 0.5))

# If you want to show up the bars with different color scales add below code to above plot
# +scale_fill_brewer(palette="Paired")

# histogram of the age group
ggplot(student_data, aes(x = age))+geom_histogram(bins = 6, position = "dodge")+
  ggtitle("Histogram of Age")+theme(plot.title = element_text(hjust = 0.5))

# Pie chart for Mother job
table(student_data$Mjob)
pie_data_mjob <- as.data.frame(t(table(student_data$Mjob)))
pie_data_mjob
pie_data_mjob$Var1<-NULL
pie_data_mjob
names(pie_data_mjob)<-c("Mother_Job","Count")
pie_data_mjob

# Pie chart without label
ggplot(pie_data_mjob,aes(x="",y=Count,fill=Mother_Job))+
  geom_bar(stat="identity", width=1, color="white") +
  coord_polar("y", start=0)+theme_void()+ggtitle("Pie chart for Mother Job")+
  theme(plot.title = element_text(hjust = 0.5))

# Making the graph more readable adding values to the pie chart
ggplot(pie_data_mjob,aes(x="",y=Count,fill=Mother_Job))+
  geom_bar(stat="identity", width=1, color="white") +
  coord_polar("y", start=0)+ theme_void()+ggtitle("Pie chart for Mother Job")+
  theme(plot.title = element_text(hjust = 0.5))+
  geom_text(aes(label = Count),colour = "white",position = position_stack(vjust = 0.5))
