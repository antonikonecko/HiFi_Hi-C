#!/bin/bash
#SBATCH --nodes=2
#SBATCH --mem=240gb
#SBATCH --time=160:00:00
#SBATCH --ntasks=56
HIFI_DATA=~/grant_452/scratch/akonecko/jobs/hsm_hic_integrated/hifi/CRR302668.fastq.gz
OUT_DIR=~/grant_452/scratch/akonecko/jobs/hsm_hic_integrated/default/out/
HIC_DIR=~/grant_452/scratch/akonecko/jobs/hsm_hic_integrated/hic

H1=~/grant_452/scratch/akonecko/jobs/hsm_hic_integrated/hic/CRR302669_f1.fastq.gz
H2=~/grant_452/scratch/akonecko/jobs/hsm_hic_integrated/hic/CRR302669_r2.fastq.gz

source ~/miniconda3/bin/conda 
source activate hsm_env
hifiasm -o AT_hsm_hic_integrated.asm -t56 --h1 $H1 --h2 $H2 $HIFI_DATA
awk '/^S/{print ">"$2;print $3}' AT_hsm_hic_integrated.asm.bp.p_ctg.gfa > AT_hsm_hic_integrated.asm.bp.p_ctg.fasta 
