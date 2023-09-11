#!/bin/bash
#SBATCH --nodes=2
#SBATCH --mem=240gb
#SBATCH --time=160:00:00
#SBATCH --ntasks=56

HIFI_DATA=~/grant_452/scratch/akonecko/jobs/hsm/hifi/CRR302668.fastq.gz
OUT_DIR=~/grant_452/scratch/akonecko/jobs/hsm/default/out/
HIC_DIR=~/grant_452/scratch/akonecko/jobs/hsm/hic

source ~/miniconda3/bin/conda 
source activate hsm_env
hifiasm -o AT_hsm.asm -t56 $HIFI_DATA
