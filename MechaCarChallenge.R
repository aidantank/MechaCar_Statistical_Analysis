library(dplyr) #Install Dependencies

# Deliverable 1
MechaCar <- read.csv("MechaCar_mpg.csv") #Read in Mech Car Data
lm_model <-lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar)# Create Multiple Linear Regression Model
summary(lm_model) # Display statistical summary 

# Deliverable 2
SusCoil <- read.csv("Suspension_Coil.csv") #Read in the Suspension Coil Data
total_summary <- SusCoil %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD = sd(PSI), .groups='keep') #Create Table for Summary Statistics
lot_summary <- SusCoil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD = sd(PSI), .groups='keep') # Create Summary Statistics by lot type

# Deliverable 3
t.test(SusCoil$PSI, mu=1500) #Run t-test on PSI of all Manufacturers against Population mean of 1500

t.test(subset(SusCoil, Manufacturing_Lot=="Lot1")$PSI, mu=1500) # Run t-test on PSI for Lot 1
t.test(subset(SusCoil, Manufacturing_Lot=="Lot2")$PSI, mu=1500) # Run t-test on PSI for Lot 2
t.test(subset(SusCoil, Manufacturing_Lot=="Lot3")$PSI, mu=1500) # Run t-test on PSI for Lot 3
