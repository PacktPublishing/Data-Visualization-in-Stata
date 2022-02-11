*Load auto data
sysuse auto, clear

*Help stem
help stem

*Stem-and-leaf plot as text plot
stem price
*Stem-and-leaf plot as text plot with 4 digits
stem price, digits(4)

*Install stemplot
net install "http://www.stata-journal.com/software/sj7-3/gr0028.pkg"

*Help stemplot
help stemplot

*Graph stem-and-leaf plot
stemplot mpg
*Graph stem-and-leaf plot with 2 digits
stemplot mpg, digits(2) 
*Graph stem-and-leaf plot horizontal plot
stemplot mpg, digits(2) horizontal
*Graph stem-and-leaf plot over two variables
stemplot mpg, digits(2) by(foreign) 
