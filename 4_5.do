*Load training data
webuse nhanes2.dta, clear

*Install heatplot
ssc install heatplot, replace

*Help heatplot
help heatplot

*The basic problem
tw (sc weight height)
*Basic heatplot bivariate distribution
heatplot weight height
*Basic heatplot bivariate distribution different legend
heatplot weight height, statistic(count)
*Basic heatplot show relative frequencies
heatplot weight height, sizeprop
*Basic heatplot show relative frequencies
heatplot weight height, levels(5)
*Heatplot with different levels and colors
heatplot weight height, levels(10) colors(plasma)
heatplot weight height, levels(50) colors(HCL bluered, reverse)
*Heatplot with different binwidths
heatplot weight height, ybwidth(2) xbwidth(1)
heatplot weight height, ybwidth(20) xbwidth(10)
*Hexplots and round markers
heatplot weight height, scatter
heatplot weight height, hexagon

*Trivariate heatplot
heatplot female weight height
*Trivariate discrete heatplot
heatplot highbp bmi i.sex, xdiscrete(0.9) 
*Trivariate discrete heatplot with relative frequencies
heatplot highbp bmi i.race, xdiscrete(0.9) sizeprop colors(twilight)


 


