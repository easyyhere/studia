set terminal pngcairo size 800,600 enhanced font 'Arial,12'
set output 'czas_wykres.png'

set title "Czas dekompozycji i rozwiązywania układu równań"
set xlabel "Rozmiar układu równań (n)"
set ylabel "Czas (s)"
set grid

set logscale x 10
set key outside
set key top left

plot "data.txt" using 1:2 with linespoints title "Czas dekompozycji" lw 2 lc rgb "blue", \
     "data.txt" using 1:3 with linespoints title "Czas rozwiązywania" lw 2 lc rgb "red"
