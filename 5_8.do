*Input training data
clear
input byte(agegroup health) long freq
1 1 243
1 2 789
1 3 167
1 4 18
156
2 1 220
2 2 809
2 3 164
2 4 35
256
3 1 147
3 2 658
3 3 181
3 4 41
358
4 1 90
4 2 469
4 3 236
4 4 50
4 5 16
5 1 53
5 2 414
5 3 306
5 4 106
5 5 30
6 1 44
6 2 267
6 3 284
6 4 98
6 5 20
7 1 20
7 2 136
7 3 157
7 4 66
7 5 17
end

*Label values
label values agegroup agegroup
label def agegroup 1 "16-24", modify
label def agegroup 2 "25-34", modify
label def agegroup 3 "35-44", modify
label def agegroup 4 "45-54", modify
label def agegroup 5 "55-64", modify
label def agegroup 6 "65-74", modify
label def agegroup 7 "75+", modify
label values health health
label def health 1 "very good", modify
label def health 2 "good", modify
label def health 3 "regular", modify
label def health 4 "bad", modify
label def health 5 "very bad", modify

*Stacked bar graph without asyvars
graph bar [w=freq], over(health) over(agegroup) stack 
*Stacked bar graph with asyvars
graph bar [w=freq], over(health) over(agegroup) stack asyvars
*Stacked bar graph with percentage option
graph bar [w=freq], over(health) over(agegroup) stack asyvars percentage
*Stacked bar graph with labels
graph hbar [w=freq], over(health) over(agegroup) stack asyvars percentage blabel(bar, pos(center) format(%3.0f))


