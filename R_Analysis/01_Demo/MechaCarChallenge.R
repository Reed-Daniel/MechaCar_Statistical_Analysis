#Deliverable 1 ------------------------------------------------------------
#import dplyr library
library(dplyr)

#read in csv file
mpg_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#perform multiple linear regression, pass in all 6 variables and df as parameter
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_df) 

#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_df))


#Deliverable 2------------------------------------------------------------
#read file
suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# create a summary dataframe
total_summary <- suspension_table %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
# create summaries for each lot
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')


#Deliverable 3---------------------------------------------------------------
# Peform t-test across all Lots
t.test(suspension_table$PSI,mu = 1500)
# Peform t-test on Lot 1
t.test(subset(suspension_table,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# Peform t-test on Lot 2
t.test(subset(suspension_table,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# Peform t-test on Lot 3
t.test(subset(suspension_table,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)

