install.packages("Rtools")
install.packages("splitstackshape")
install.packages("tidyverse")
install.packages("reshape2")
install.packages("devtools")
install.packages("plotly")
install.packages("crosstalk")
install.packages("DT")
install.packages("fivethirtyeight")
install.packages("dplyr")

library(tidyverse)
library(dplyr)


MechaCar_mpg <- read.csv("MechaCar_mpg.csv")

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg))


Suspension_Coil <- read.csv("Suspension_Coil.csv")

total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=(sd(PSI)*sd(PSI)), SD=sd(PSI))

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=(sd(PSI)*sd(PSI)), SD=sd(PSI))


t.test(Suspension_Coil$PSI, mu = 1500)

lot1_population = subset(Suspension_Coil, Manufacturing_Lot == 'Lot1')
t.test(lot1_population$PSI, mu = 1500)

lot2_population = subset(Suspension_Coil, Manufacturing_Lot == 'Lot2')
t.test(lot2_population$PSI, mu = 1500)

lot3_population = subset(Suspension_Coil, Manufacturing_Lot == 'Lot3')
t.test(lot3_population$PSI, mu = 1500)