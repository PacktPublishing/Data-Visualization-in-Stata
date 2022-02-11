*Load training data
sysuse auto, clear

*Scatter plot with discrete data
tw (scatter foreign rep78)
*Scatter plot with discrete data and jitter
tw (scatter foreign rep78, jitter(12))
*Different jitter seed
tw (scatter foreign rep78, jitter(12) jitterseed(1234))
*Jitter with continuous variables
tw (scatter price mpg, mc(%50)) (sc price mpg, jitter(5) mc(%70))

*Load training data
sysuse nlsw88, clear
*Many discrete categories
tw (scatter occupation industry if union == 1, ylabel(1(1)13, valuelabel angle(45)) xlabel(1(1)12, valuelabel angle(45)))
*With jitter
tw (scatter occupation industry if union == 1, ylabel(1(1)13, valuelabel angle(45)) xlabel(1(1)12, valuelabel angle(45)) jitter(4) msize(tiny) mc(%50))
