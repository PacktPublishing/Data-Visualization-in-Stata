*Load training data
sysuse auto, clear

*Install polarsm
net install "http://www.stata-journal.com/software/sj15-4/gr0021_2", replace 

*Help polarsm
help polarsm

*Basic polar smoother
polarsm price mpg  
*Basic polar smoother with custom fourier terms
polarsm price mpg, terms(5)
*Basic polar smoother with quantiles
polarsm price mpg, regcmd(qreg, q(.75))
*Basic polar smoother with add local polynomial smoother
polarsm price mpg, addplot(lpoly price mpg, k(epan) degree(1) bw(5))
*Basic polar smoother with over option
polarsm price mpg, over(foreign)
*Basic polar smoother with by option
polarsm price mpg, over(foreign) by(foreign)
*Basic polar smoother with data and smooth customisation
polarsm price mpg, data(mfc(ltblue%80) mlc(black%80) ms(O)) smooth(lw(medium) lc(black))


