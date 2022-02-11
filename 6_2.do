*Load training data
sysuse sandstone, clear

*Help 
help twoway contour
help twoway contourline

*Basic contour plot
tw (contour depth northing easting) 
*Basic contourline plot
tw (contourline depth northing easting)
*Basic contour plot with 10 levels
tw (contour depth northing easting, levels(10)) 
*Basic contour plot with min and max legen labelling
tw (contour depth northing easting, levels(10) minmax) 
*Basic contour plot as a heatmap
tw (contour depth northing easting, levels(10) minmax heatmap) 

*Install colorpallete
net install "http://www.stata-journal.com/software/sj18-4/gr0075"

*Colorpalette
colorpalette viridis, ipolate(5) reverse 
*Examine hidden data
return list
*Contour plot with custom color and added contourlione plot
twoway (contour depth northing easting, crule(linear) ccolors(`r(p)')  levels(5)) (contourline depth northing easting,  plegend(off) scolor(black) ecolor(black) crule(linear) colorlines levels(5) clw(thin thin thin thin thin))

*Colorpalette
colorpalette plasma , ipolate(50) reverse nograph
*Contour plot with custom color and label format`'
twoway (contour depth northing easting, crule(linear) ccolors(`r(p)')  levels(50) zlabel(#10, format(%9.0f)))

