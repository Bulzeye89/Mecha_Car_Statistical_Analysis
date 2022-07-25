# MechaCar Statistical Analysis
## Overview
### Background
AutosRUs' newest prototype, MechaCar, is suffering from production troubles.  The company's upper management would like some analysis done to garner insight that may help the manufacturing team.  In particular, they have asked for:

  1. A linear regression analysis to identify which variables predict the MPG of the MechaCar prototype.
  2. Summary statistics of the suspension coils PSI(pounds per square inch).
  3. T-Tests to compare statistical differences from each manufacturing lot to the mean population
  4. A design for a further statistical study that can be done to compare the MechaCar against other manufacturers.  
  
### Resources
-Data Sources: [MechaCar_mpg.csv](https://github.com/Bulzeye89/Mecha_Car_Statistical_Analysis/blob/main/Resources/MechaCar_mpg.csv), 
[Suspension_Coil.csv](https://github.com/Bulzeye89/Mecha_Car_Statistical_Analysis/blob/main/Resources/Suspension_Coil.csv)<br>
-Software: RScript, R

## Linear Regression to Predict MPG
<p float="left">
<img src="https://github.com/Bulzeye89/Mecha_Car_Statistical_Analysis/blob/main/Resources/Images/Deliverable_1.png" 
</p>  

First the p-value prior to the analysis has been set to .05.  The screenshot above shows the code to run the linear regression using R-Script.  From this model, we can determine the following: 
  - Vehicle length and ground clearance are the most significant variables in our dataset that show a non-random effect on MPG of the MechaCar.  The P-Value for vehicle length was 2.60e-12 while for ground clearance, it was 5.21e-08.  Both are significantly below the threshold of .05 that we set prior to running any analysis. 
  - The overall P-value is 5.35e-11 which is statistially significant.  The relationship between the variables in the dataset and MPG is more than random chance and the slope of the linear model cannot be considered zero.  
  - While there are other factors that aren't taken into consideration, the R-squared value of 0.7149 does signify that the model is strong (according to Pearson's correlation) to predict MPG values.  While the model can be used to accurately make predictions 72% of the time, it could be made stronger by finding additional variables that have more statistical significance to pair with vehicle length and ground clearance.   


## Summary Statistics on Suspension Coils

<p float="left">
<img src="https://github.com/Bulzeye89/Mecha_Car_Statistical_Analysis/blob/main/Resources/Images/Total_Summary.png" 
</p>  


<p float="left">
<img src="https://github.com/Bulzeye89/Mecha_Car_Statistical_Analysis/blob/main/Resources/Images/Lot_Summary.png" 
</p>  



## T-Tests on Suspension Coils

<p float="left">
<img src="https://github.com/Bulzeye89/Mecha_Car_Statistical_Analysis/blob/main/Resources/Images/Population_ttest.png" 
</p>  

<p float="left">
<img src="https://github.com/Bulzeye89/Mecha_Car_Statistical_Analysis/blob/main/Resources/Images/Lot1_ttest.png" 
</p>  

<p float="left">
<img src="https://github.com/Bulzeye89/Mecha_Car_Statistical_Analysis/blob/main/Resources/Images/Lot2_ttest.png" 
</p>  

<p float="left">
<img src="https://github.com/Bulzeye89/Mecha_Car_Statistical_Analysis/blob/main/Resources/Images/Lot3_ttest.png" 
</p>  



## Study Design: MechaCar vs Competition
