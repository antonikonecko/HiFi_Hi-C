#!/bin/bash
#SBATCH --job-name=quast_asm
#SBATCH --cpus-per-task=12
#SBATCH --mem=20G

source ~/miniconda3/bin/conda 
source activate quast_env

quast \
-o quast_asm \
-l 'hifiasm','hifiasm-hic','canu','flye' \
--threads 12 \
~/jobs/QUAST/assemblies/AT_hsm.asm.bp.p_ctg.fasta \
~/jobs/QUAST/assemblies/AT_hsm_hic_integrated.asm.hic.p_ctg.fasta \
~/jobs/QUAST/assemblies/asm.contigs.fasta \
~/jobs/QUAST/assemblies/assembly.fasta \
-r ~/jobs/QUAST/AT_ref_genome/TAIR10.1_genomic.fna \
-g ~/jobs/QUAST/AT_ref_genome/TAIR10.1_genomic.gff \

