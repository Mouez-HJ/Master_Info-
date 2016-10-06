set xrange[0:30];set yrange[0:30];
plot "comparaisons_refs.txt" using 1:2 title "f(n)=n" with lines, "comparaisons_refs.txt" using 1:3 title "g(n)=log(n)" with lines, "comparaisons_refs.txt" using 1:4 title "f(n)=n*log(n)" with lines, "comparaisons_refs.txt" using 1:5 title "f(n)=exp(n)" with lines, "comparaisons_refs.txt" using 1:6 title "f(n)=k^n" with lines;

pause -1