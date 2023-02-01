library(dplyr)
Mecha_Car_df <- read.csv(file='Starter_Code/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_Car_df) 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_Car_df))

Coil_Table <- read.csv(file='Starter_Code/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary_df <- Coil_Table %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary_df <- Coil_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

t.test((Coil_Table$PSI),mu=1500)
t.test((subset(Coil_Table, Coil_Table$Manufacturing_Lot == 'Lot1')$PSI),mu=1500)
t.test((subset(Coil_Table, Coil_Table$Manufacturing_Lot == 'Lot2')$PSI),mu=1500)
t.test((subset(Coil_Table, Coil_Table$Manufacturing_Lot == 'Lot3')$PSI),mu=1500)

