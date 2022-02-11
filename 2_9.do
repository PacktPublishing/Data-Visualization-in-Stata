*Load city data
sysuse citytemp.dta, clear

*install mylabels
ssc install mylabels, replace

*Ridgeline plot
range attemp 0 80

levelsof division, local(levels)

foreach l of local levels {
    kdensity tempjan if division == `l',  gen(x`l' d`l') nograph at(attemp)
    
    gen yaxis`l' =  `l'/25 
    replace d`l'  = d`l' + yaxis`l'

    local g "`g' rarea d`l' yaxis`l'  x`l' , lw(thick) fc(%60)  lc(black)  lw(vvthin) || "
}
disp "`g'"

mylabels 1(1)9 , local(a) myscale(@/25)

twoway  `g'  , legend(off) xlabel(, nogrid) xlabel(-10(20)90) ylabel(`a')  ytitle(Division) xtitle(Average January Temperature)
  