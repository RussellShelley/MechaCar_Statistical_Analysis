library(dplyr)
mpg_df <- read.csv("./Resources/MechaCar_mpg.csv")
#Perform linear regression
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df)
#get summary stats
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df))

#import csv
Susp_coil_data <- read.csv("./Resources/Suspension_Coil.csv")

? summarize()
#create summary table
total_summary <-summarise(Susp_coil_data, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summary <- Susp_coil_data %>% group_by(Manufacturing_Lot) %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
