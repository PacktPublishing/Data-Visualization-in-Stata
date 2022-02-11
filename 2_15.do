*Load city data
sysuse citytemp.dta, clear

*Install hangroot
ssc install hangroot

*Rootgram
spikeplot tempjan, root

*Help Hangroot
help hangroot

*Hanging rootogram
hangroot tempjan
*Hanging rootogram with more detail
hangroot tempjan, width(1)
*Hanging rootogram with more detail
hangroot tempjan, bin(50)
*Hanging rootogram with more detail and lognormal distributiont
hangroot tempjan, width(0.2) dist(lognormal) 
*Hanging rootogram with more detail and uniform distributiont
hangroot tempjan, width(0.2) dist(uniform) 
*Hanging rootogram with confidence intervals
hangroot tempjan, ci

