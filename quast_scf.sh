#!/bin/bash
#SBATCH --job-name=quast_scf
#SBATCH --cpus-per-task=12
#SBATCH --mem=20G

source ~/miniconda3/bin/conda
source activate quast_env

quast \
-o quast_scf \
-l 'hifiasm','hifiasm-hic','canu','flye' \
--threads 12 \
~/jobs/QUAST/scaffolds/hsm_scaffolds.fasta \
~/jobs/QUAST/scaffolds/hsm_hic_scaffolds.fasta \
~/jobs/QUAST/scaffolds/canu_scaffolds.fasta \
~/jobs/QUAST/scaffolds/flye_scaffolds.fasta \
-r ~/jobs/QUAST/AT_ref_genome/TAIR10.1_genomic.fna \
-g ~/jobs/QUAST/AT_ref_genome/TAIR10.1_genomic.gff \

