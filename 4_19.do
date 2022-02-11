*Load training data
sysuse lifeexp, clear

*Help twoway dropline
help twoway dropline

*Generate log gnp per capita
generate lngnp = ln(gnppc)

*Basic dropline plot for all data
twoway dropline lexp lngnp
*Basic dropline plot for limited data
twoway dropline lexp lngnp if region == 3
*Dropline plot with marker labels
twoway dropline lexp lngnp if region == 3, mlabel(country) mlabpos(11) mlabsize(*.7)
*Dropline plot with horizontal option
twoway dropline lexp lngnp if region == 3, mlabel(country) mlabpos(11) mlabsize(*.7) horizontal
*Dropline plot with base option
twoway dropline lexp lngnp if region == 3, mlabel(country) mlabpos(11) mlabsize(*.7) base(66) yline(66)
*Two overlaid droplines with angles marker text
twoway (dropline lexp lngnp if region == 3, mlabel(country) mlabpos(11) mlabsize(*.7) base(66) yline(66) mlabangle(-45))  (dropline lexp lngnp if region == 2, mlabel(country) mlabpos(2) mlabsize(*.7) mlabangle(45) base(66) legend(off))

