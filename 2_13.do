*Load city data
sysuse citytemp.dta, clear

*Histogram with many bins
histogram tempjan, bin(200) lc(black) lw(vvthin)

*Help spikeplot
help spikeplot

*Spikeplot
spikeplot tempjan
*Spikeplot with different bin width
spikeplot tempjan, round(1)
*Spikeplot with different bin width
spikeplot tempjan, fraction

*Multiple spikeplots
tw (histogram tempjan, bin(200) lc(black%40) lw(vvthin)  fc(eltblue%40)) (histogram tempjuly, bin(200) lw(vvthin) lc(black%40) fc(erose%40))
