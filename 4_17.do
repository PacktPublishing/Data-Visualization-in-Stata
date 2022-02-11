*Load training data
sysuse uslifeexp, clear

*help twoway
help twoway

*Basic range line plot
tw (rline le_female le_male year)
*Basic range area plot
tw (rarea le_female le_male year)
*Basic range bar plot
tw (rbar le_female le_male year)
*Basic range spike plot
tw (rspike le_female le_male year)
*Basic range capped spikes plot
tw (rcap le_female le_male year)
*Basic capped spikes with symbols plot
tw (rcapsym le_female le_male year)
*Basic range scatter plot
tw (rscatter le_female le_male year)
*Basic range connected scatter plot
tw (rconnected le_female le_male year)

*Two range plots overlaid
tw (rarea le_wmale le_wfemale year, color(%50)) (rarea le_bmale le_bfemale year, color(%50))
