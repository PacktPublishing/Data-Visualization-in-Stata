*Load training data
sysuse auto, clear

*Instal radar command
ssc install radar, replace

*Help radar
help radar

*Radar plot
radar make weight in 1/12
*Radar plot with aspect ratio
radar make weight in 1/12, aspect(1)
*Radar plot with multiple variable
radar make turn mpg trunk if foreign == 1, aspect(1)
*Radar plot with multiple variable and radial representation
radar make turn mpg if foreign == 1, aspect(1) radial(trunk)
*Radar plot with multiple variable
radar make weight if foreign ==1, aspect(1) rlabel(0 500 1000 1500 2000 2500 3000 3500)
*Radar plot with many categories
radar make weight, aspect(1) rlabel(0 1000 2000 3000 4000 5000) labsize(*0.5) 


