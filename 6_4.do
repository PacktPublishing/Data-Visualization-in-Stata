*Load training data
sysuse census, clear

*Help scatter
help scatter

*Basic scatter plot
tw (scatter medage death) (qfit medage death)

*Basic bubble plot
tw (scatter medage death [fweight = pop]) (qfit medage death [fweight = pop])

*Setting bubble options into global macro
global circle "mlcolor(black) mlwidth(vthin) mfcolor(ltblue%70)"

*Bubble plot formatted
tw (scatter medage death [fweight = pop], $circle ) (qfit medage death [fweight = pop]) 

*Bubble plot with marker labels
tw (scatter medage death [fweight = pop], $circle ) (qfit medage death [fweight = pop]) (scatter medage death, ms(i) mlabel(state2) mlabcolor(black))

*Bubble plot with 2 x marker labels
tw (scatter medage death [fweight = pop], $circle ) (qfit medage death [fweight = pop]) (scatter medage death, ms(i) mlabel(state2) mlabcolor(black)) (scatter medage death, ms(i) mlabpos(6) mlabel(pop) mlabsize(tiny) mlabcolor(maroon))

*Bubble plot with Diamond markers
tw (scatter medage death [fweight = pop], $circle msymbol(D)) (qfit medage death [fweight = pop]) (scatter medage death, ms(i) mlabel(state2) mlabcolor(black)) (scatter medage death, ms(i) mlabpos(6) mlabel(pop) mlabsize(tiny) mlabcolor(maroon))

*Bubble plot with multiple colors v1 
tw (scatter medage death [fweight = pop] if region == 1, mlcolor(black) mlwidth(vthin) mfcolor(ltblue%70)) ///
(scatter medage death [fweight = pop] if region == 2, mlcolor(black) mlwidth(vthin) mfcolor(erose%70)) ///
(scatter medage death [fweight = pop] if region == 3, mlcolor(black) mlwidth(vthin) mfcolor(eltgreen%70)) ///
(scatter medage death [fweight = pop] if region == 4, mlcolor(black) mlwidth(vthin) mfcolor(edkblue%70))

*Install sepscatter
ssc install sepscatter

*Bubble plot with multiple colors v2
sepscatter medage death [fweight = pop], separate(region)










