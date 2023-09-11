#!/bin/bash
#SBATCH -n 4
#SBATCH --job-name=salsa2_analysis
#SBATCH --mem=256gb
#SBATCH --time=167:00:00
#SBATCH -p bigmem

hifi_data=~/grant_452/scratch/akonecko/jobs/canu/hifi/CRR302668.fastq.gz

source ~/miniconda3/bin/conda 
source activate canu_env
canu \
 -p asm -d AT_hifi_canu \
 genomeSize=135m \
 -pacbio-hifi $hifi_data
