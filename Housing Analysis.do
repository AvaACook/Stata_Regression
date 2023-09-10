cd "\\sscwin\dfsroot\users\aacook4\Desktop\410 Problem Sets"
log using "\\sscwin\dfsroot\users\aacook4\Desktop\410 Problem Sets\PS 7 Q2.log", replace
clear

use "\\sscwin\dfsroot\users\aacook4\Desktop\410 Problem Sets\htv.dta"

*Question 2
*Part i
reg lwage educ, r
*Without controlling for other factors, the 95% confidence interval for the return to another year of education is [.0867, .1161]

*Part ii
corr educ ctuit
*The correlation between educ and ctuit is only -.0169. This implies that there is a very weak correlation between educ and ctuit. Since the correlation between educ and ctuit is practically zero, we cannot say that ctuit fulfills the relevance condition for an IV.
*If we wanted to use ctuit as an IV for educ, we would need a nonzero correlation between the two. Therefore ctuit is not a possible IV for educ in this model.

*Part iii
reg lwage educ exper expersq ne nc west ne18 nc18 west18 urban urban18, r
*The estimated return to a year of education is equal to the OLS coefficient in front of educ in the mdoel, which is .1371.
*We interpret this coefficient in a causal manner: controlling for all other factors, an additional year of education causes a 13.71% increase in wage.

*Part iv
reg educ ctuit exper expersq ne nc west ne18 nc18 west18 urban urban18, r
*We see that ctuit has a statistically significant effect on educ at the 5% level. The p-value for ctuit is .028, which is less than the significance level .05.

*Part v
ivregress 2sls lwage (educ=ctuit) exper expersq ne nc west ne18 nc18 west18 urban urban18, r
*The 95% confidence interval for the return to education using ctuit as an IV for educ is [.0209, .4791]. We note that this is a much larger confidence interval than the 95% confidence interval from part iii. This is because when we use ctuit as an IV for educ, the robust standard error is larger than the robust standard error for educ.

*Part vi
*I still think that ctuit is not the best IV for educ, since the relevance condition is barely met.
* corr(educ, ctuit) = -.0169, which does not equal 0 but is close to 0, which implies that educ and ctuit are only weakly correlated.
*The information given in Part vi lets us assume corr(ctuit,u) = 0. Therefore the exogenetiy condition is met.
*Since the relevance condition is barely met, I do not find the IV procedure from Part iv convincing.
