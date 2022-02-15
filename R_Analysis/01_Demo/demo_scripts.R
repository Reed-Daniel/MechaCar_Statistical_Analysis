print("hello world")

b <- "!!!!!!!!"

paste("hello world",b)

x <- c(1,2,3)
print(x)
print(x[2])
print(typeof(x[1]))

print(2:length(x))

y <- c(6, 7, 8)

dogs <- c("woof", "ruff", "woof", "yo")
?for (dog in dogs){
  if (nchar(dog) > 3)
  print("good boy")
  else
    print("what?")
}


#read in csv file
demo_table <- read.csv(file='demo.csv',check.names=F,stringsAsFactors = F)

#import jsonlite library
library(jsonlite)

#read in JSON file
demo_table2 <- fromJSON(txt='demo.json')

demo_table[3,"Year"]

demo_table$"Vehicle_Class"
demo_table$"Vehicle_Class"[2]

filter_table <- demo_table2[demo_table2$price > 10000,]
#filter by price and drivetrain
filter_table2 <- subset(demo_table2, price > 10000 & drive == "4wd" & "clean" %in% title_status) 

sample(c("cow", "deer", "pig", "chicken", "duck", "sheep", "dog"), 4)

num_rows <- 1:nrow(demo_table)
sample_rows <- sample(num_rows, 3)
demo_table[sample_rows,]
demo_table[sample(1:nrow(demo_table), 3),]

#import tidyverse library
library(tidyverse)

#add columns to original data frame
demo_table <- demo_table %>% mutate(Mileage_per_Year=Total_Miles/(2020-Year),IsActive=TRUE) 

#create summary table
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep') 

#read in another csv
demo_table3 <- read.csv('demo2.csv',check.names = F,stringsAsFactors = F)

#convert to long table
long_table <- gather(demo_table3,key="Metric",value="Score",buying_price:popularity)

wide_table <- long_table %>% spread(key="Metric",value="Score")

#look at dataset
head(mpg)
#import dataset into ggplot2
plt <- ggplot(mpg,aes(x=class)) 
#plot a bar plot
plt + geom_bar() 
#create summary table
mpg_summary <- mpg %>% group_by(manufacturer) %>% summarize(Vehicle_Count=n(), .groups = 'keep')
#import dataset into ggplot2
plt <- ggplot(mpg_summary,aes(x=manufacturer,y=Vehicle_Count)) 
#plot a bar plot
plt + geom_col() 
#plot bar plot with labels
plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset") 
#plot a boxplot with labels #rotate the x-axis label 45 degrees
plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset") +
theme(axis.text.x=element_text(angle=45,hjust=1)) 


#create summary table
mpg_summary <- subset(mpg,manufacturer=="toyota") %>% group_by(cyl) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') #create summary table
#import dataset into ggplot2
plt <- ggplot(mpg_summary,aes(x=cyl,y=Mean_Hwy)) 
#create line plot
plt + geom_line()
#add line plot with labels
plt + geom_line() + scale_x_discrete(limits=c(4,6,8)) + scale_y_continuous(breaks = c(15:30)) #add line plot with labels


#import dataset into ggplot2
plt <- ggplot(mpg,aes(x=displ,y=cty))
#add scatter plot with labels
plt + geom_point() + xlab("Engine Size (L)") + ylab("City Fuel-Efficiency (MPG)") 
#import dataset into ggplot2 adding aesthetic custimization (color)
plt <- ggplot(mpg,aes(x=displ,y=cty,color=class)) 
#add scatter plot with labels
plt + geom_point() + labs(x="Engine Size (L)", y="City Fuel-Efficiency (MPG)", color="Vehicle Class") 
#import dataset into ggplot2 adding aesthetic customization (color and size)
plt <- ggplot(mpg,aes(x=displ,y=cty,color=class,shape=drv)) 
#add scatter plot with multiple aesthetics
plt + geom_point() + labs(x="Engine Size (L)", y="City Fuel-Efficiency (MPG)", color="Vehicle Class",shape="Type of Drive")


#import dataset into ggplot2
plt <- ggplot(mpg,aes(y=hwy)) 
#add boxplot 
plt + geom_boxplot()
#import dataset into ggplot2 adding car manufacturers as x-axis
plt <- ggplot(mpg,aes(x=manufacturer,y=hwy)) 
#add boxplot and rotate x-axis labels 45 degrees
plt + geom_boxplot() + theme(axis.text.x=element_text(angle=45,hjust=1))

#create summary table for heatmap
mpg_summary <- mpg %>% group_by(class,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') 
#import data set into ggplot2 for heatmap
plt <- ggplot(mpg_summary, aes(x=class,y=factor(year),fill=Mean_Hwy))
#create heatmap with labels
plt + geom_tile() + labs(x="Vehicle Class",y="Vehicle Year",fill="Mean Highway (MPG)") 

#create summary table
mpg_summary <- mpg %>% group_by(model,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') 
#import dataset into ggplot2
plt <- ggplot(mpg_summary, aes(x=model,y=factor(year),fill=Mean_Hwy)) 
#add heatmap with labels #rotate x-axis labels 90 degrees
plt + geom_tile() + labs(x="Model",y="Vehicle Year",fill="Mean Highway (MPG)") + 
theme(axis.text.x = element_text(angle=90,hjust=1,vjust=.5)) 


#import dataset into ggplot2
plt <- ggplot(mpg,aes(x=manufacturer,y=hwy)) 
#add boxplot, #rotate x-axis labels 45 degrees, and #overlay scatter plot on top
plt + geom_boxplot() +
theme(axis.text.x=element_text(angle=45,hjust=1)) + 
geom_point() #overlay scatter plot on top


mpg_summary <- mpg %>% group_by(class) %>% summarize(Mean_Engine=mean(displ),SD_Engine=sd(displ), .groups = 'keep')
#import dataset into ggplot2
plt <- ggplot(mpg_summary,aes(x=class,y=Mean_Engine)) 
#add scatter plot with labels and #overlay with error bars
plt + geom_point(size=4) + labs(x="Vehicle Class",y="Mean Engine Size") + 
geom_errorbar(aes(ymin=Mean_Engine-SD_Engine,ymax=Mean_Engine+SD_Engine)) 

#convert to long format
mpg_long <- mpg %>% gather(key="MPG_Type",value="Rating",c(cty,hwy)) 
head(mpg_long)
#import dataset into ggplot2
plt <- ggplot(mpg_long,aes(x=manufacturer,y=Rating,color=MPG_Type)) 
#add boxplot with labels rotated 45 degrees
plt + geom_boxplot() + theme(axis.text.x=element_text(angle=45,hjust=1)) 


#import dataset into ggplot2
plt <- ggplot(mpg_long,aes(x=manufacturer,y=Rating,color=MPG_Type)) 
#create multiple boxplots, one for each MPG type #rotate x-axis labels
plt + geom_boxplot() + facet_wrap(vars(MPG_Type)) + 
theme(axis.text.x=element_text(angle=45,hjust=1),legend.position = "none") + xlab("Manufacturer") 


#visualize distribution using density plot
ggplot(mtcars,aes(x=wt)) + geom_density() 


#import used car dataset
population_table <- read.csv('used_car_data.csv',check.names = F,stringsAsFactors = F) 
#import dataset into ggplot2
plt <- ggplot(population_table,aes(x=log10(Miles_Driven))) 
#visualize distribution using density plot
plt + geom_density() 
#randomly sample 50 data points
sample_table <- population_table %>% sample_n(50) 
#import dataset into ggplot2
plt <- ggplot(sample_table,aes(x=log10(Miles_Driven))) 
#visualize distribution using density plot
plt + geom_density() 


#compare sample versus population means
t.test(log10(sample_table$Miles_Driven),mu=mean(log10(population_table$Miles_Driven))) 

#generate 50 randomly sampled data points
sample_table <- population_table %>% sample_n(50) 
#generate another 50 randomly sampled data points
sample_table2 <- population_table %>% sample_n(50) 
#compare means of two samples
t.test(log10(sample_table$Miles_Driven),log10(sample_table2$Miles_Driven)) 
