*Load training data
clear
sysuse census.dta

*Help graph pie
help graph pie

*Pie chart different mode
*mode 1
graph pie poplt5 pop5_17 pop18p, 
*mode 2
graph pie death, over(region) 
*mode 3
graph pie, over(region)

*Labelling pies
graph pie, over(region) plabel(_all name)
graph pie, over(region) plabel(_all sum)
graph pie, over(region) plabel(_all percent)

*Exploding pies
graph pie, over(region) plabel(_all name) pie(3, explode)
graph pie, over(region) plabel(_all name) pie(3, explode(20))
graph pie, over(region) plabel(_all name) pie(_all, explode(20))

*Sorting pies
graph pie, over(region) plabel(_all name) sort
graph pie, over(region) plabel(_all name) sort descending

*Multiple pie graphs with by
graph pie poplt5 pop5_17 pop18p, by(region) plabel(_all percent)

