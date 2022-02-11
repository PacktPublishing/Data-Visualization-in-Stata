*Load training data
sysuse nlsw88.dta, clear

*help graph dot
help graph dot

*Dot chart
graph dot (count)
*Dot chart over occupation
graph dot (count), over(occupation)
*Dot chart with percent over occupation
graph dot (percent), over(occupation) 
*Dot chart with extra categories
graph dot (percent), over(occupation) missing allcategories 
*Dot chart with sorting
graph dot (percent), over(occupation, sort(1) descending) missing allcategories 
*Dot chart over two categories 1 
graph dot (percent), over(occupation) over(union)
*Dot chart over two categories 2
graph dot (percent), over(union) over(occupation)
*Dot chart over two categories 3
graph dot (percent), over(union) over(occupation) asyvars
*Dot chart over three categories
graph dot (percent), over(race) over(occupation) over(union)  asyvars
*Dot chart over three categories with summary statistics of fourth variable
graph dot (mean) wage, over(race) over(occupation) over(union)  asyvars
*Dot chart over three categories with by option
graph dot (mean) wage, over(race) over(occupation, label(labsize(vsmall))) over(union, label(labsize(vsmall))) asyvars by(south) 





