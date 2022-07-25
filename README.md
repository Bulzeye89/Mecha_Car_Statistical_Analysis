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
First, total summary statistics were found the entire dataset as can be seen below.  The expectation is that the variance of the suspension coils must not exceed 100 pounds per square inch.  The entirety of the manufacturing data meets this design specificaction as can be seen in the table below. 
<p float="left">
<img src="https://github.com/Bulzeye89/Mecha_Car_Statistical_Analysis/blob/main/Resources/Images/Total_Summary.png" 
</p>  

Then, individual manufacturing lots' summary statistics (below) were found to compare to the population dataset. Manufacturing Lot 1 and Manufacturing Lot 2 see very similar statisicts to the total summary findings.  However, Manufacturing Lot 3 see a significnt increase in variance of 170.29.  This does not meet the design specifications and further research and investigation should be done regarding the processes of Manufacturing Lot 3.  
<p float="left">
<img src="https://github.com/Bulzeye89/Mecha_Car_Statistical_Analysis/blob/main/Resources/Images/Lot_Summary.png" 
</p>  



## T-Tests on Suspension Coils
Next, T-tests were done to see if there were done across all manufacturing lots to determine if there was a statistical difference from the population mean of 1,500 pounds per square inch. For the purposes of review, a null hypthosis will be used that there is no statistical difference from each manufacturing lot from the population mean.  
<p float="left">
<img src="https://github.com/Bulzeye89/Mecha_Car_Statistical_Analysis/blob/main/Resources/Images/Population_ttest.png" 
</p>  

- Above, the results of the T-test for the suspension coils across all the manufacturing lots show that there is no statistical difference from the population mean.  In addition, the p-value is 0.06028, which is not low enough to reject a null hypothesis.

<p float="left">
<img src="https://github.com/Bulzeye89/Mecha_Car_Statistical_Analysis/blob/main/Resources/Images/Lot1_ttest.png" 
</p>  

- Manufacturing Lot 1 has a P-value of 1 which is not low enough to reject a null hypothesis and it shows there is no statistical difference from the population mean.

<p float="left">
<img src="https://github.com/Bulzeye89/Mecha_Car_Statistical_Analysis/blob/main/Resources/Images/Lot2_ttest.png" 
</p>  

- Manufacturing Lot 2 has a P-Value of .6072 which is not low enough to reject a null hypothesis and it shows there is not statistical difference from the population mean.  

<p float="left">
<img src="https://github.com/Bulzeye89/Mecha_Car_Statistical_Analysis/blob/main/Resources/Images/Lot3_ttest.png" 
</p>  

-Manufacturing Lot 3 has a P-Value of .004168 which is low enough to accept a null hypothesis.  There is a statistical difference between Manufacturing Lot 3 and the population mean beyond random chance.  This further supports the summary statistic findings discussed previously.  

## Study Design: MechaCar vs Competition
With gas prices soaring, consumers are extremely conscious of fuel efficiency.  With this in mind, a further statistical study can be done exploring the MechaCar prototype's highway fuel efficiency versus vehicles of other manufacturers.  The null hypothesis for this study would be that there is no statistical difference between fuel efficiency of the MechaCar and that of the competitors.  The alternative hypothesis then would be that there is a statistical difference.  For this study, we would need competitors' data regarding highway fuel efficiency to combine with the MechaCar data.  We could use a one-way ANOVA test to check if the means of all groups are equal.  

