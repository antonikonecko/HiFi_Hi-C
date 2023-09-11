#!/bin/bash
#SBATCH -n 16
#SBATCH --mem=32gb
#SBATCH --time=5:00:00
#SBATCH -p standard

source ~/miniconda3/bin/conda 
source activate bwa_env

bwa index fasta/asm.contigs.fasta
