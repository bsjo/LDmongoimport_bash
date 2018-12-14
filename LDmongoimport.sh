#!/bin/bash

#JPT, EAS...
Species=$1

for i in $(seq 1 22)
do

chrom="chr$i"

mongoimport --db $Species'_LD' --collection $chrom --type csv --file $Species/linkage-disequilibrium_1000-genomes-phase-3_ldCutoff0.4_window1MB_sub_pop_$Species'_'$chrom --fieldFile LD_header.txt

done