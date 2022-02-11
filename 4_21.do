*Load training data
sysuse uslifeexp, clear

*Many line plots
line le_wfemale le_female le_w le le_wmale le_male le_bfemale le_b le_bmale year

*Install colorpallete
ssc install palettes.pkg, replace

*Help colorpalette
help colorpalette

*Colorpalette 1
colorpalette Gold FireBrick, n(9) 
*Return list
return list
*Lineplot with colorpalette
line le_wfemale le_female le_w le le_wmale le_male le_bfemale le_b le_bmale year, lcolor(`r(p)') legend(off)

*Colorpalette 2
colorpalette HSV rainbow, n(9)
*Lineplot with colorpalette
line le_wfemale le_female le_w le le_wmale le_male le_bfemale le_b le_bmale year, lc(`r(p)') legend(off)

*Load training data
use https://www.stata-press.com/data/r17/pig, clear 
*Sort data
bys id: gen mw = weight[1]
sort mw id week 
drop id
egen id = seq(), block(9)
separate weight, by(id) gen(DD)
*Colorpalette 3
colorpalette spmap rainbow, n(20) nograph
*Line plot with 20 variables
line DD1-DD20 week, lc(`r(p)') legend(off)

*Line plot with 48 variables
colorpalette spmap rainbow, n(48) nograph
twoway ///
(line weight week if id == 	1	, lc("`r(p1)'")) 	///
(line weight week if id == 	2	, lc("`r(p2)'")) 	///
(line weight week if id == 	3	, lc("`r(p3)'")) 	///
(line weight week if id == 	4	, lc("`r(p4)'")) 	///
(line weight week if id == 	5	, lc("`r(p5)'")) 	///
(line weight week if id == 	6	, lc("`r(p6)'")) 	///
(line weight week if id == 	7	, lc("`r(p7)'")) 	///
(line weight week if id == 	8	, lc("`r(p8)'")) 	///
(line weight week if id == 	9	, lc("`r(p9)'")) 	///
(line weight week if id == 	10	, lc("`r(p10)'")) 	///
(line weight week if id == 	11	, lc("`r(p11)'")) 	///
(line weight week if id == 	12	, lc("`r(p12)'")) 	///
(line weight week if id == 	13	, lc("`r(p13)'")) 	///
(line weight week if id == 	14	, lc("`r(p14)'")) 	///
(line weight week if id == 	15	, lc("`r(p15)'")) 	///
(line weight week if id == 	16	, lc("`r(p16)'")) 	///
(line weight week if id == 	17	, lc("`r(p17)'")) 	///
(line weight week if id == 	18	, lc("`r(p18)'")) 	///
(line weight week if id == 	19	, lc("`r(p19)'")) 	///
(line weight week if id == 	20	, lc("`r(p20)'")) 	///
(line weight week if id == 	21	, lc("`r(p21)'")) 	///
(line weight week if id == 	22	, lc("`r(p22)'")) 	///
(line weight week if id == 	23	, lc("`r(p23)'")) 	///
(line weight week if id == 	24	, lc("`r(p24)'")) 	///
(line weight week if id == 	25	, lc("`r(p25)'")) 	///
(line weight week if id == 	26	, lc("`r(p26)'")) 	///
(line weight week if id == 	27	, lc("`r(p27)'")) 	///
(line weight week if id == 	28	, lc("`r(p28)'")) 	///
(line weight week if id == 	29	, lc("`r(p29)'")) 	///
(line weight week if id == 	30	, lc("`r(p30)'")) 	///
(line weight week if id == 	31	, lc("`r(p31)'")) 	///
(line weight week if id == 	32	, lc("`r(p32)'")) 	///
(line weight week if id == 	33	, lc("`r(p33)'")) 	///
(line weight week if id == 	34	, lc("`r(p34)'")) 	///
(line weight week if id == 	35	, lc("`r(p35)'")) 	///
(line weight week if id == 	36	, lc("`r(p36)'")) 	///
(line weight week if id == 	37	, lc("`r(p37)'")) 	///
(line weight week if id == 	38	, lc("`r(p38)'")) 	///
(line weight week if id == 	39	, lc("`r(p39)'")) 	///
(line weight week if id == 	40	, lc("`r(p40)'")) 	///
(line weight week if id == 	41	, lc("`r(p41)'")) 	///
(line weight week if id == 	42	, lc("`r(p42)'")) 	///
(line weight week if id == 	43	, lc("`r(p43)'")) 	///
(line weight week if id == 	44	, lc("`r(p44)'")) 	///
(line weight week if id == 	45	, lc("`r(p45)'")) 	///
(line weight week if id == 	46	, lc("`r(p46)'")) 	///
(line weight week if id == 	47	, lc("`r(p47)'")) 	///
(line weight week if id == 	48	, lc("`r(p48)'")) 	///
 , legend(off)

*Load training data
sysuse nlsw88, clear
*Colorpalette 4
colorpalette viridis, n(13) nograph
*Bar graph with 13 colors
graph bar wage, over(occ) asyvars ytitle(Average Wage) ///
  bar(1, fcolor("`r(p1)'") lcolor(black) lwidth(vthin)) ///
  bar(2, fcolor("`r(p2)'") lcolor(black) lwidth(vthin)) ///
  bar(3, fcolor("`r(p3)'") lcolor(black) lwidth(vthin)) ///
  bar(4, fcolor("`r(p4)'") lcolor(black) lwidth(vthin)) ///
  bar(5, fcolor("`r(p5)'") lcolor(black) lwidth(vthin)) ///
  bar(6, fcolor("`r(p6)'") lcolor(black) lwidth(vthin)) ///
  bar(7, fcolor("`r(p7)'") lcolor(black) lwidth(vthin)) ///
  bar(8, fcolor("`r(p8)'") lcolor(black) lwidth(vthin)) ///
  bar(9, fcolor("`r(p9)'") lcolor(black) lwidth(vthin)) ///
  bar(10, fcolor("`r(p10)'") lcolor(black) lwidth(vthin)) ///
  bar(11, fcolor("`r(p11)'") lcolor(black) lwidth(vthin)) ///
  bar(12, fcolor("`r(p12)'") lcolor(black) lwidth(vthin)) ///  
  bar(13, fcolor("`r(p13)'") lcolor(black) lwidth(vthin)) 	 
  
  
  
  
  
  
  
  
  
  
