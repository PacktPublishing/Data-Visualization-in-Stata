*Load training data
sysuse uslifeexp, clear

*help twoway
help twoway

*Basic line plot
tw (line le year)
*Basic area plot
tw (area le year)
*Basic bar plot
tw (bar le year)
*Basic spike plot
tw (spike le year)
*Basic dropline plot
tw (dropline le year)


*Area plot with options
tw (area le year, horizontal)
tw (area le year, base(0))
tw (area le year, color(gs8%40))
*Bar plot with options
tw (bar le year, barwidth(2))
*Spike plot with options
tw (spike le year, lpattern(longdash))
*Dropline plot with options
tw (dropline le year, mfcolor(ltblue%80)  mlcolor(black%80))

*Twoway area plots
tw (area le_female year, color(%40)) (area le_male year, color(%40))
