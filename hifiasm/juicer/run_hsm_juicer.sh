#!/bin/bash
#SBATCH --nodes=4
#SBATCH --mem=64gb
#SBATCH --time=160:00:00
#SBATCH -p standard

source ~/miniconda3/bin/conda 
source activate juicer_env
#module load cuda/9.0.176_384.81                                   

scripts/juicer.sh -q standard -l standard -d ~/grant_452/scratch/akonecko/jobs/hsm/default/juicer/ -p chrom.sizes -s none -z references/AT_hsm.asm.bp.p_ctg.fasta -t 28

