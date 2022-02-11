*Load training data
sysuse uslifeexp, clear

*Help line 
help line

*A basic line plot
line le year

*Line plot with scatter command
scatter le year, connect(l)

*Two line plots 1
tw (line le_male year) (line le_female year)
*Two line plots 2
line le_male le_female year

*Connect options
line le year, connect(stairstep)
line le year, connect(stepstair)

*Line options
line le year, lpattern(dash) lwidth(*2) lcolor(gold)

*With markers
tw (line le year) (sc le year, msymbol(D) mcolor(%50))

*Axis options
generate diff = le_female-le_male 
label var diff "Difference"
*Example 1
tw (line le_female le_male  year, yaxis(1)) (line diff year, yaxis(1))
*Example 2
tw (line le_female le_male  year, yaxis(1)) (line diff year, yaxis(2) lpattern(dash))

*Shuffling data
gen random = runiform()
sort random
*Spaghetti plot
line le year
*Sort on le
line le year, sort(le)
*Sort on year
line le year, sort(year)




