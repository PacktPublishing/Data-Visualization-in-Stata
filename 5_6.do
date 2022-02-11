*Load training data
sysuse nlsw88, clear

*Give all observations a weight of 1
gen weight = 1
*Collapse observations
collapse (sum) weight, by(occupation industry)

*Scatterplot with weights
tw (sc occupation industry [w=weight])

*Scatterplot with weights
tw (sc occupation industry [w=weight], ms(circle) mfc(eltblue%50) ylabel(1(1)13, labsize(small) valuelabel angle(45)) xlabel(1(1)12, labsize(small) valuelabel angle(45)) legend(off))

*Scatterplot with weights, adjusted marker size
tw (sc occupation industry [w=weight], ms(circle) mfc(eltblue%50) msize(*0.5) ylabel(1(1)13, labsize(small) valuelabel angle(45)) xlabel(1(1)12, labsize(small) valuelabel angle(45)) legend(off))

*Scatterplot with weights, adjusted marker size and cell sizes
tw (sc occupation industry [w=weight], ms(circle) mfc(eltblue%50) msize(*0.5) ylabel(1(1)13, labsize(small) valuelabel angle(45)) xlabel(1(1)12, labsize(small) valuelabel angle(45))) (sc occupation industry, ms(i) mlabc(black) mlabel(weight) mlabsize(*0.7) mlabgap(2) mlabcolor(maroon) legend(off))
