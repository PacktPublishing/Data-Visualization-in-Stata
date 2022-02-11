*Load city temperature data
sysuse citytemp, clear

*Help quantile
help quantile

*Symmetry plot
symplot tempjan
*Quantile-uniform plot
quantile tempjan
*Quantile-normal plot
qnorm tempjan
pnorm tempjan
*Quantile-Chi2 plot
qchi tempjan
qchi tempjan, df(40)
pchi tempjan, df(40)
*QQ plot
qqplot tempjan tempjuly
