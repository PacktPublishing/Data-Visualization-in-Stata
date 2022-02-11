*Load training data
sysuse nlsw88, clear

*Install tabplot
net install "http://www.stata-journal.com/software/sj20-3/gr0066_2", replace

*Help tabplot
help tabplot

*One way tabulation
tab occupation
*Tabplot
tabplot occupation

*Two way tabulation
tab occupation industry
*Tabplot
tabplot occupation industry, ylabel(1(1)13, labsize(small) valuelabel angle(45)) xlabel(1(1)12, labsize(small) valuelabel angle(45)) 
*Tabplot
tabplot occupation industry, ylabel(1(1)13, labsize(small) valuelabel angle(45)) xlabel(1(1)12, labsize(small) valuelabel angle(45)) percent missing
*Tabplot
tabplot occupation industry, ylabel(1(1)13, labsize(small) valuelabel angle(45)) xlabel(1(1)12, labsize(small) valuelabel angle(45)) percent missing horizontal
*Tabplot
tabplot occupation industry, ylabel(1(1)13, labsize(small) valuelabel angle(45)) xlabel(1(1)12, labsize(small) valuelabel angle(45)) percent missing  showval(offset(0.15) format(%2.1f) mlabsize(*0.5))
*Tabplot
tabplot occupation industry, ylabel(1(1)13, labsize(small) valuelabel angle(45)) xlabel(1(1)12, labsize(small) valuelabel angle(45)) percent missing  showval(offset(0.15) format(%2.1f) mlabsize(*0.5)) recast(rspike)
*Tabplot 
tabplot occupation industry, ylabel(1(1)13, labsize(small) valuelabel angle(45)) xlabel(1(1)12, labsize(small) valuelabel angle(45)) percent missing  showval(offset(0.15) format(%2.1f) mlabsize(*0.5)) barwidth(0.8)

*Three way tabulation
table occupation industry union
*Tabplot 
tabplot occupation industry, by(union) ylabel(1(1)13, labsize(small) valuelabel angle(45)) xlabel(1(1)12, labsize(small) valuelabel angle(45))

