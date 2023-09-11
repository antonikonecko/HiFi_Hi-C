#!/bin/bash
#SBATCH --nodes=2
#SBATCH --mem=240gb
#SBATCH --time=160:00:00
#SBATCH --ntasks=56

HIFI_DATA=~/grant_452/scratch/akonecko/jobs/flye/hifi/CRR302668.fastq.gz
OUT_DIR=~/grant_452/scratch/akonecko/jobs/flye/default/out/
HIC_DIR=~/grant_452/scratch/akonecko/jobs/flye/hic

source ~/miniconda3/bin/conda 
source activate flye_env
flye --pacbio-hifi $HIFI_DATA --out-dir $OUT_DIR --genome-size 135m --threads 56
