*Load training data
sysuse nlsw88.dta, clear

*help graph bar
help graph bar

*Simple bar graph
graph bar (count)
*Simple bar graph with over option
graph bar (count), over(race) 
*Simple bar graph with totals
graph bar (count), over(race) blabel(total)
*Simple bar graph with percent
graph bar (percent), over(race) ylabel(0(20)100)
*Simple horizontal bar graph with percent
graph hbar (percent), over(occupation) 
*Simple horizontal bar graph with sorting and all categories
graph hbar (percent), over(occupation, sort(1) descending) missing allcategories 

*Horizontal bar graph over two categories 1 
graph hbar (count), over(occupation) over(union)
*Horizontal bar graph over two categories 2
graph hbar (count), over(union) over(occupation)
*Horizontal bar graph over two categories 3
graph hbar (count), over(union) over(occupation) asyvars 
*Horizontal bar graph over two categories 3 percent
graph hbar (percent), over(union) over(occupation) asyvars
*Horizontal bar graph over two categories with percentage option
graph hbar (percent), over(union) over(occupation) asyvars percentages
*Horizontal bar graphover three categories
graph hbar (percent), over(race) over(occupation,label(labsize(vsmall))) over(union, label(labsize(vsmall))) asyvars legend(row(1)) percentages
*Horizontal bar graph over three categories
graph hbar (mean) wage hours, over(occupation,label(labsize(vsmall))) over(union, label(labsize(vsmall))) legend(row(1))

*Twoway bar graphs
*help graph twoway bar
help graph twoway_bar

*Population pyramid with twoway bar
webuse pop2000
replace maletotal = -maletotal
twoway bar maletotal agegrp, horizontal || bar femtotal agegrp, horizontal ylabel(1(1)17, angle(horizontal) valuelabel)












