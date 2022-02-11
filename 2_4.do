*Load auto data
sysuse nlsw88, clear

*Histogram of wage
histogram wage
*Histogram of wage with 10 and 50 bins
histogram wage, bin(10)
histogram wage, bin(50)
*Histogram of wage with discrete bins
histogram wage, discrete
*Histogram of wage with bins of width 10
histogram wage, width(10)
*Histogram of wage changing y-axis definition
histogram wage, freq
histogram wage, percent
*Histogram of wage changing y-axis with height labels
histogram wage, percent addlabels
*Equal probability histogram
ssc install eqprhistogram
eqprhistogram wage, bin(5) 
eqprhistogram wage, bin(10) 
*Histogram with custom bin sizes
ssc install hist3
hist3 wage, v(1, 2, 5, 10, 20, 50)
