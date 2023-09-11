#!/bin/bash
#SBATCH --mem=120GB
#SBATCH --cpus-per-task=28
./bedtools bamtobed -i merged_dedup.bam > alignment.bed
sort -k 4 alignment.bed > tmp && mv tmp alignment.bed

