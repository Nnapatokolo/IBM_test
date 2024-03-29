library(datasets)
# Load Data
data(mtcars)
# view the first 5 rows
head(mtcars,5)

?mtcars

#load ggplot package 
library(ggplot2)
# create a scatterplot of displacement (disp) and miles per gallon (mpg)
ggplot (aes (x=disp, y=mpg), data=mtcars)+geom_point()

# Add a title to the graph
ggplot (aes (x=disp, y=mpg), data=mtcars)+geom_point()+ggtitle("displacement Vs Miles per gallon")

#change x axis name
ggplot (aes (x=disp, y=mpg), data=mtcars)+geom_point()+ggtitle("displacement Vs Miles per gallon") + labs(x= "Displacement", y = "Miles per Gallon")

#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)
# create a boxplot of the distribution for the v-shaped and straight Engine
ggplot (aes(x=vs, y=mpg), data = mtcars)+geom_boxplot()

#Add color to help differentiate 
ggplot (aes(x=vs, y=mpg, fill = vs), data = mtcars)+
  geom_boxplot(alpha=0.3) + 
  theme(legend.position = "none")

#create a histogram of weight
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth = 0.5)
