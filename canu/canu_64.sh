#!/bin/bash
#SBATCH --nodes=2
#SBATCH --mem=63gb
#SBATCH -p standard
#SBATCH --time=160:00:00
hifi_data=~/grant_452/scratch/akonecko/jobs/canu/hifi/CRR302668.fastq.gz

source ~/miniconda3/bin/conda 
source activate canu_env
canu \
 -p asm -d AT_hifi_canu \
 genomeSize=135m \
 -pacbio-hifi $hifi_data
