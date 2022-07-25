#Challenge deliverable #1

#Load Packages
library(dplyr)
library(tidyverse)

#Import csv file and create data frame
mechaCar_mpg <- read.csv(file = "Resources/MechaCar_mpg.csv", check.names=F, stringsAsFactors = F)
head(mechaCar_mpg)

#Perform linear regression using the 6 columns
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar_mpg)

#Using summary function to determine p-value and r-squared values
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar_mpg))

#Challenge Deliverable #2

#import csv file
suspension_coil <- read.csv(file = "Resources/Suspension_Coil.csv", check.names=F, stringsAsFactors = F)
head(suspension_coil)

#Create Summary data frame for PSI column
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), 
                                               Median = median(PSI),
                                               VAR = var(PSI),
                                               Std_Dev = sd(PSI))

#Create summary data grouped by lot for PSI column
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),
                                                                             Median = median(PSI),
                                                                             VAR = var(PSI),
                                                                             Std_Dev = sd(PSI),
                                                                             .groups = 'keep')

#Challenge Deliverable #3

#T-Test for population with mu=1500
t.test(suspension_coil$PSI, mu = 1500)

#T-test for each manufacturing lot
t.test(subset(suspension_coil, Manufacturing_Lot =="Lot1")$PSI, mu = 1500)
t.test(subset(suspension_coil, Manufacturing_Lot =="Lot2")$PSI, mu = 1500)
t.test(subset(suspension_coil, Manufacturing_Lot =="Lot3")$PSI, mu = 1500)
