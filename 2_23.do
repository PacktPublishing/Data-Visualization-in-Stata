*Load city temperature data
sysuse citytemp, clear

*Help dotplot
help dotplot

*Dotplot
dotplot tempjan
*Dotplot with 2 variables
dotplot tempjan tempjul
*Dotpot over groups
dotplot tempjan, over(division)
*Dotplot with mean indicator
dotplot tempjan, over(division) mean
*Dotplot with adjusted marker size
dotplot tempjan, over(division) mean msize(small)

*Install stripplot
ssc install stripplot, replace 

*Help stripplot
help stripplot

*Basic dotplot
stripplot tempjan, stack 
*Adjusting dot width
stripplot tempjan, stack width(1)
*Over groups
stripplot tempjan, over(division) stack vertical 
*Complex dotplots over groups with box plots
stripplot tempjan, over(division) stack vertical box boffset(-0.3) iqr(1.5) msize(small) whiskers() outside 
