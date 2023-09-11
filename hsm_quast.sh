#!/bin/bash

#SBATCH --job-name=hifiasm_compare
#SBATCH --cpus-per-task=12
#SBATCH --mem=20G

source ~/miniconda3/bin/conda 
source activate quast_env

quast \
-o hsm_vs_hsm_hic_compare \
-l 'hifiasm_scaffolds','hifiasm_hic_integrated_scaffolds' \
--threads 12 \
~/jobs/QUAST/scaffolds/hifiasm_scaffolds.fasta \
~/jobs/QUAST/scaffolds/hifiasm_hic_integrated_scaffolds.fasta \
-r ~/jobs/QUAST/AT_ref_genome/TAIR10.1_genomic.fna \
-g ~/jobs/QUAST/AT_ref_genome/TAIR10.1_genomic.gff

