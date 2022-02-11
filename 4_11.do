*Load training data
sysuse auto, clear

*Help twoway 
help twoway 

*The relationship beteween car price and miles per gallon
tw (scatter price mpg)

*Lines of best fit
tw (scatter price mpg) (lfit price mpg)
*Lines of best fit with multiple twoway plots
tw (scatter price mpg if foreign == 0) (scatter price mpg if foreign == 1) (lfit price mpg if foreign == 0, lcolor(dknavy)) (lfit price mpg if foreign == 1, lcolor(maroon))
*Lines of best fit with by option
tw (scatter price mpg) (lfit price mpg, by(foreign, total row(1)))
*Lines of best fit with range option
tw (scatter price mpg) (lfit price mpg, range(0 50))

*Quadratic lines of best 
tw (scatter price mpg) (qfit price mpg) 
*Fractional polynomial lines of best 
tw (scatter price mpg) (fpfit price mpg) 
*Non-parametric lines of best fit
tw (scatter price mpg) (mband price mpg) (mspline price mpg) (lowess price mpg) 
*Local polynomial lines of best fit
tw (scatter price mpg) (lpoly price mpg)

*Local polynomial lines of best fit with kernel and bandwidth choices
tw (scatter price mpg) (lpoly price mpg, kernel(gaussian) bw(3))

*Linear fit with confidence intervals
tw (scatter price mpg) (lfitci price mpg) 
*Linear fit with confidence intervals
tw (lfitci price mpg) (scatter price mpg)
*Local polynomial fit with confidence intervals as spikes 
tw (scatter price mpg) (lpolyci price mpg, ciplot(rspike))












