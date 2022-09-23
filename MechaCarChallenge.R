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
