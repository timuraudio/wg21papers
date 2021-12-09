set term png enhanced size 1000, 400
set output 'data.png'

set multiplot layout 1, 2
set boxwidth 0.5
set style fill pattern

set title "example #1: limiter"

set yrange [0:90]
set ylabel 'nr. of instructions generated'

set xrange [-0.5:5.5]
set xtics ("msvc" 0.25, "icc" 1.75, "clang" 3.25, "gcc" 4.75,)

plot 'data1.dat' every 2 u 1:2 w boxes lc -1 fs pattern 5 title 'without ASSUME', \
'' every 2::1 u 1:2 w boxes lc -1 fs pattern 2 title 'with ASSUME'

set title "example #2: refcounted smart pointer"

set yrange [0:*]
unset ylabel

plot 'data2.dat' every 2 u 1:2 w boxes lc -1 fs pattern 5 title 'without ASSUME', \
'' every 2::1 u 1:2 w boxes lc -1 fs pattern 2 title 'with ASSUME'