set terminal pngcairo enhanced font "Arial,16" size 900,600
set output 'graph3.png'

set title "Student Distribution - Point Plot"
set xlabel "Category"
set ylabel "Number of Students"
set xtics rotate by -45
set key outside bottom center font "Arial,12"

plot 'student_data.dat' using 2:xtic(1) with points pt 7 lc rgb "red" title "Domestic Women", \
     '' using 3 with points pt 7 lc rgb "blue" title "Domestic Men", \
     '' using 4 with points pt 7 lc rgb "purple" title "International Women", \
     '' using 5 with points pt 7 lc rgb "green" title "International Men"
