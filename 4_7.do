*Load training data
webuse nhanes2.dta, clear

*Help sunflower
help sunflower

*The basic problem
tw (sc weight height)
*A sunflower plot
sunflower weight height
*A sunflower plot with higher bin size
sunflower weight height, binwidth(5)
*A sunflower plot with higher bin size and different aspect ratio
sunflower weight height, binwidth(5) binar(2)
*A sunflower plot with custom petal weights and light/dark requirements
sunflower weight height, petalweight(2) dark(10) light(2)
*A sunflower plot with only petals
sunflower weight height, flower
*A sunflower plot with added local polynomial smoother
sunflower weight height, addplot(lpolyci weight height, lc(black) lw(*2))
