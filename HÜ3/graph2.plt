set terminal pngcairo enhanced font "Arial,16" size 800,600
set output 'graph2.png'

set title "Student Numbers Over Categories - Line Graph"
set xlabel "Category"
set ylabel "Number of Students"
set xtics rotate by -45
set key left top font "Arial,14"

plot 'student_data.dat' using 2:xtic(1) with linespoints title "Domestic Women" lt rgb "red", \
     '' using 3 with linespoints title "Domestic Men" lt rgb "blue", \
     '' using 4 with linespoints title "International Women" lt rgb "purple", \
     '' using 5 with linespoints title "International Men" lt rgb "green"
