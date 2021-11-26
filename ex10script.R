#Biocomp Ex 10
#Loan Duong
#Q1
#Load the table. This data is from the 1990 census on California housing prices. 
housing<-read.table("housing.txt",header=TRUE,stringsAsFactors=FALSE)
#load packages
library(ggplot2)
library(cowplot)
#plotting
ggplot(data=housing,
       aes(x=median_income,y=median_house_value)) +
  geom_point() +
  ylab("Median house value
       (US dollars)") +
  xlab("Median household income 
       (in tens of thousands of US dollars)")+
  theme_classic() +
  scale_y_continuous()+
  stat_smooth(formula=y~x, method=(lm))+
