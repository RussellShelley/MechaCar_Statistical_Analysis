library(dplyr)
mpg_df <- read.csv("./Resources/MechaCar_mpg.csv")
#Perform linear regression
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df)
#get summary stats
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df))

#import csv
Susp_coil_data <- read.csv("./Resources/Suspension_Coil.csv")

#create summary table
total_summary <-summarise(Susp_coil_data, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

#create summaries for each Lot.
lot_summary <- Susp_coil_data %>% group_by(Manufacturing_Lot) %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

#T test to compare all lots to population mean of 1500.

t.test(Susp_coil_data$PSI, mu=1500)

#T test for each subset Lot.

t.test(subset(Susp_coil_data$PSI, Susp_coil_data$Manufacturing_Lot == "Lot1"), mu=1500) #Lot 1

t.test(subset(Susp_coil_data$PSI, Susp_coil_data$Manufacturing_Lot == "Lot2"), mu=1500) #Lot 2

t.test(subset(Susp_coil_data$PSI, Susp_coil_data$Manufacturing_Lot == "Lot3"), mu=1500) #Lot 3

