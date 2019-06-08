#Load The Requried Libraries And The Data
library(dplyr)
library(data.table)
library(ggplot2)
library(plotly)
setwd(choose.dir())
getwd()
data<-read.csv("data10.csv")
View(data)

#UnderStand DataStructure And Provide InforMation
str(data)
#No.Of Observation
paste("No of ObserVation Is",nrow(data))

#No.Of Variable
paste("No of Variable Is",ncol(data))

#Number Of Continuous Variables
class(data$Type)
class(data$Subtype)
class(data$Country)
class(data$Sugar_Content)
class(data$Price)
class(data$Sweetness)
class(data)

#Number Of Categorical Variables
factor(data$Type)
factor(data$Subtype)
factor(data$Country)
factor(data$Sugar_Content)
factor(data$Price)
factor(data$Sweetness)


#Number Of Variable Which Have MissingValue
paste("Number Of ObserVation Which Have Missing Value In Sweetness : ",sum(is.na(data$Sweetness)))
paste("Number Of ObserVation Which Have Missing Value In Price : ",sum(is.na(data$Price)))

v<-"Sweetness"
x=sum(is.na(data$Type))
if(x==0){
  v<-v
}else{
  v<-paste(v,"Type")
}
x=sum(is.na(data$Subtype))
if(x==0){
  v<-v
}else{
  v<-paste(v,"SubType")
}

x=sum(is.na(data$Country))
if(x==0){
  v<-v
}else{
  v<-paste(v,"Country")
}
x=sum(is.na(data$Sugar_Content))
if(x==0){
  v<-v
}else{
  v<-paste(v,"Sugar_Content")
}

x=sum(is.na(data$Price))
if(x==0){
  v<-v
}else{
  v<-paste(v,"Price")
}
paste("Total Variable Which Have Missing Value : ",v)




