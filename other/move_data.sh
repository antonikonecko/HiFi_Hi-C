#!/bin/bash
#SBATCH -n 6
#SBATCH --mem=16gb
#SBATCH --time=1:00:00
#SBATCH -p standard

aligners="flye hsm hsm_hic_integrated"

for aligner in $aligners
do
    mv ~/jobs/$aligner/default/juicer/splits/ $aligner/splits
    mv ~/jobs/$aligner/default/juicer/debug/ $aligner/debug
    mv ~/jobs/$aligner/default/juicer/aligned/ $aligner/aligned
done

