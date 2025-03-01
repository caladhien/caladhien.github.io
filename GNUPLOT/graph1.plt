set terminal pngcairo enhanced font "Arial,14" size 800,600
set output 'graph1.png'

set title "Student Distribution - Bar Chart"
set xlabel "Category"
set ylabel "Number of Students"
set xtics rotate by -45
set key outside top right font "Arial,12"

set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.8

plot 'student_data.dat' using 2:xtic(1) title "Domestic Women" lt rgb "red", \
     '' using 3 title "Domestic Men" lt rgb "blue", \
     '' using 4 title "International Women" lt rgb "purple", \
     '' using 5 title "International Men" lt rgb "green"
