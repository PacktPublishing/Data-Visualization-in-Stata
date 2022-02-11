*Load training data
sysuse auto, clear

*Help scatter 
help scatter 

*Basic scatterplot
tw (sc price mpg)
*Multiple y-variable against one x-variable
tw (sc trunk turn mpg price)
*Beware of scales when using multiple y-variables
tw (sc weight trunk turn mpg price)

*Multiple scatterplots
tw (sc price mpg) (sc price turn)
*Using the by option
tw (sc price mpg, by(foreign, compact))

*Scatterplot connecting
tw (sc price mpg, connect(l)) 
*Connecting with sorting price
tw (sc price mpg, connect(l) sort(price))
*Connecting with sorting mpg
tw (sc price mpg, connect(l) sort(mpg))

*Square markers
tw (sc price mpg, msymbol(S))
*Coloured markers
tw (sc price mpg, msymbol(S) mcolor(edkblue%70))
*Sized markers
tw (sc price mpg, msymbol(S) mcolor(edkblue%70) msize(*2))

*Labelled markers
tw (sc price mpg, mlabel(make))
*Labelled markers adjusted
tw (sc price mpg, mlabel(make) mlabcolor(maroon) mlabangle(45) mlabpos(2) mlabsize(*0.5))

*Advanced syntax, multiple y-vars
tw (sc trunk turn mpg price, msymbol(S T X) mcolor(gs1 gs6 gs12))
*Advanced syntax, 2 axes
tw (sc price mpg, xaxis(1)) (sc price turn, xaxis(2))
*Advanced syntax, weights
gen wt = runiform()
tw (sc price mpg [weight = wt], msymbol(Oh) mcolor(%50))
*Advanced syntax, lots of data
clear
set obs 100000
gen x = rnormal()
gen y = rnormal() + 0.2*x
tw (sc y x, msymbol(p) mcolor(%30))



















