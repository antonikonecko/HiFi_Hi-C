#!/bin/bash
aligner=$1

#SBATCH --job-name=cmp_${aligner}
#SBATCH --cpus-per-task=12
#SBATCH --mem=20G

source ~/miniconda3/bin/conda 
source activate quast_env

quast \
-o ${aligner}_compare \
-l "${aligner}_contigs","${aligner}_scaffolds" \
--threads 12 \
~/jobs/QUAST/assemblies/${aligner}.fasta \
~/jobs/QUAST/scaffolds/${aligner}_scaffolds.fasta \
-r ~/jobs/QUAST/AT_ref_genome/TAIR10.1_genomic.fna \
-g ~/jobs/QUAST/AT_ref_genome/TAIR10.1_genomic.gff \
