#part 1 - code for creating a multiple regression line and analysis
mecha_car_data <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import mecha car dataset

lm(mpg ~ length + clearance,data=mecha_car_data) #generate multiple linear regression model with two statistically signifcant categorical values
summary(lm(mpg ~ length  + clearance ,data=mecha_car_data)) #generate summary statistics of the linear regression above

#part 2 - code for suspension summary
suspension_coil_data <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import suspension coil dataset
summary(suspension_coil_data) # find the mean and median PSI
suspension_df <-as.data.frame(suspension_coil_data) #turn table into a datafram
var(suspension_df$PSI) # find the variance of PSI 
sd(suspension_df$PSI)# find the standard deviation of PSI

#part 3 - t-test of suspension data
t.test((suspension_df$PSI),mu=1500) #compares sample data to mean of 1500