#!/bin/bash
#SBATCH -n 1
#SBATCH --mem=120gb
#SBATCH --time=160:00:00
#SBATCH -p standard

hifi_data=~/grant_452/scratch/akonecko/jobs/canu/hifi/CRR302668.fastq.gz

source ~/miniconda3/bin/conda 
source activate canu_env
canu \
 -p asm -d AT_hifi_canu \
 genomeSize=135m \
 -pacbio-hifi $hifi_data
