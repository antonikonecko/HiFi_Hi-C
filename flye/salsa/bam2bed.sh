#!/bin/bash
#SBATCH --mem=120GB
#SBATCH --cpus-per-task=28
cp -r ~/project_data/akonecko/juicer/hsm/aligned/merged_dedup.bam ~/jobs/hsm/default/salsa/merged_dedup.bam

./bedtools bamtobed -i merged_dedup.bam > alignment.bed
sort -k 4 alignment.bed > tmp && mv tmp alignment.bed

