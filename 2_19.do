*Load city data
sysuse citytemp.dta, clear

*Install vioplot
ssc install vioplot

*Help boxplot
help vioplot

*A violin plot
vioplot tempjan
*Multiple violin plots
vioplot tempjan tempjuly, over(division) 
*Multiple violin plots horizontal
vioplot tempjan tempjuly, over(division) horizontal
*Multiple violin plots horizontal with observation count
vioplot tempjan tempjuly, over(division) horizontal obs
*Multiple violin plots with different kernel
vioplot tempjan, over(region) horizontal obs kernel(gaussian)
*Multiple violin plots with different kernel and bandwidth
vioplot tempjan, over(region) horizontal obs kernel(gaussian) bw(5)
