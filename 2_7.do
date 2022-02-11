*Load city data
sysuse citytemp.dta, clear

*Help kdensity
help kdensity

*Standard density plot
tw (kdensity tempjan)
*Density plot with recast area
tw (kdensity tempjan, recast(area))

*Density plot with recast area and different bandwidths
tw (kdensity tempjan, recast(area) bw(10))
tw (kdensity tempjan, recast(area) bw(1))
*Density plot with recast area and different kernels
tw (kdensity tempjan, recast(area) bw(1) kernel(rectangle))
tw (kdensity tempjan, recast(area) bw(1) kernel(gaussian))

*two densities
tw (kdensity tempjan, recast(area)) (kdensity tempjuly, recast(area)) 
tw (kdensity tempjan, recast(area) fc(%50)) (kdensity tempjuly, recast(area) fc(%50)) 

*Many densities
tw (kdensity tempjan if region == 1, col(black) fc(ltblue%50) title(Kernel Density Plot of Temperature) recast(area)) ///
(kdensity tempjan if region == 2, col(black) fc(erose%50) recast(area)) ///
(kdensity tempjan if region == 3, col(black) fc(emerald%50) recast(area)) ///
(kdensity tempjan if region == 4, col(black) fc(sand%50) recast(area)) 

*Mirrored densities
tw (kdensity tempjan, recast(area) ylabel(0(0.02)0.1) fc(%50) saving(kdensf1.gph, replace) xscale(alt) xtitle("") title("") note(""))

tw (kdensity tempjul, yscale(reverse) ylabel(0(0.02)0.1)  recast(area) fc(maroon%50) saving(kdensf2.gph, replace) xscale(off) xtitle() title("") note(""))

graph combine kdensf1.gph kdensf2.gph, imargin(0 0 0 0) col(1) 
graph combine kdensf2.gph kdensf1.gph, imargin(0 0 0 0) col(1) 


