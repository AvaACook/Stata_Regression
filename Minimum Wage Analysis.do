cd "\\sscwin\dfsroot\users\aacook4\Desktop\410 Problem Sets"
log using "\\sscwin\dfsroot\users\aacook4\Desktop\410 Problem Sets\PS 7 Q3.log", replace
clear

use "\\sscwin\dfsroot\users\aacook4\Desktop\410 Problem Sets\minwage.dta"

*Question 3
*Part i
reg gwage232 gmwage gmwage_1
*The immediate effect of a 1 unit increase in gmwage on gwage 232 is estimated to be .1504. The immediate effect is statistically significant even at the 1% level, since it has a p-value = 0 < .01

*Part ii
*The predicted one-period lagged effect is estimated to be -.0035. The one-period lagged effect is not statistically significant at any of the standard signficance levels. The p-value on the estimated one-period lagged effect is .714, which implies that there is a 71.4% chance of observing a statistic at least as extreme as -.0035, and therefore the gmwage_1 is not very statistically significant.

*Part iii
lincom gmwage+gmwage_1
*We use the lincom command to do a point estimate of the sum of coefficients on gmwage and gmwage_1. The resulting variable will have a coefficient of delta0 + delta1, which is the long-run effect of a one unit permanent increase in gmwage starting at time t.
*We obtain a coefficient of .1468, which implies that a 1 unit increase in gmwage starting at time t generates a .1468 unit change in gmwage232 (holding all other factors constant and interpreting in a causal manner.)
*The coefficient on the newly defined variable is statistically significant even at the 1% level, because it has a p-value = 0 < .01.