*Load city data
sysuse citytemp.dta, clear

*Help boxplot
help graph box

*Basic boxplot
graph box tempjan  
*Basic boxplot with outliers
graph box tempjan if region == 1
*Multiple boxplots
graph box tempjan tempjul
*Horizontal boxplots
graph hbox tempjan tempjul
*Horizontal boxplots over regions
graph hbox tempjan tempjul, over(region)
*Horizontal boxplots over regions with ascategory option
graph hbox tempjan tempjul, over(region) ascategory
*Ordering boxes
graph hbox tempjan , over(division, sort(1))

*Histogram with boxplot
graph hbox tempjan, saving(box.gph, replace) 
histogram tempjan, saving(hist.gph, replace) ytitle("")
graph combine hist.gph box.gph, col(1) xcommon

*Install histbox
ssc install histbox, replace
*Histogram with boxplot
histbox tempjan, mean



