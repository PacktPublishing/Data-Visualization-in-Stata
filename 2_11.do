*Load city data
sysuse citytemp.dta, clear

*Install distplot
ssc install distplot

*Help distplot
help distplot

*Cumulative density
distplot tempjan
*Cumulative density with area shading
distplot tempjan, recast(area) fc(%50) 
*Cumulative density with area shading reverse option
distplot tempjan, recast(area) fc(%50) reverse
*Cumulative density as spikeplot
distplot tempjan, recast(spike)  
*Cumulative density with frequency option
distplot tempjan, frequency
*Cumulative density with inverse normal probabilities
distplot tempjan, trscale(invnormal(@)) recast(area)

*Multiple cumulative plots
distplot tempjan tempjuly
*Multiple cumulative plots with over option
distplot tempjan, over(region)
*Multiple cumulative plots
distplot tempjan tempjuly, by(region)

