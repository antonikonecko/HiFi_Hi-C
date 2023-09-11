#!/bin/bash
#SBATCH --job-name=salsa2_hsm_hic_integrated
#SBATCH --cpus-per-task=28
#SBATCH --mem=120G

aligner="hsm_hic_integrated"

bam_path=~/project_data/akonecko/juicer/"$aligner"/aligned/
bam_file=merged_dedup.bam
from_path=~/jobs/"$aligner"/default/juicer/references/
dest_path=~/jobs/"$aligner"/default/salsa/
fasta_file=AT_hsm_hic_integrated.asm.hic.p_ctg.fasta
fai_file="$fasta_file.fai"

cp -r "$bam_path/$bam_file" "$dest_path/$bam_file"
cp -r "$from_path/$fasta_file" "$dest_path/$fasta_file"
cp -r "$from_path/$fai_file" "$dest_path/$fai_file"

./bedtools bamtobed -i "$dest_path/$bam_file" > alignment.bed
sort -k 4 alignment.bed > tmp && mv tmp alignment.bed
rm -r "$dest_path/$bam_file"

# Load any necessary modules or activate environments
CONDA_SH_PATH=~/miniconda3/etc/profile.d/conda.sh
CONDA_ENV=salsa2_env
CONDA_ACTIVATE_CMD=$(source "$CONDA_SH_PATH" && conda activate "$CONDA_ENV")

#eval "$CONDA_ACTIVATE_CMD"
source "$CONDA_SH_PATH"
conda activate "$CONDA_ENV"

# Run Salsa2 command
run_pipeline.py -a "$dest_path/$fasta_file" -l "$dest_path/$fai_file" -b alignment.bed -o scaffolds -m yes

