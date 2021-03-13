library(dplyr)
mpg_df <- read.csv("./Resources/MechaCar_mpg.csv")
#Perform linear regression
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df)
#get summary stats
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df))
