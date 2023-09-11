#!/bin/bash
#SBATCH --job-name=salsa2_analysis
#SBATCH --cpus-per-task=28
#SBATCH --mem=120G

# Load any necessary modules or activate environments
CONDA_SH_PATH=~/miniconda3/etc/profile.d/conda.sh
CONDA_ENV=salsa2_env
CONDA_ACTIVATE_CMD=$(source "$CONDA_SH_PATH" && conda activate "$CONDA_ENV")

eval "$CONDA_ACTIVATE_CMD"

# Run Salsa2 command
run_pipeline.py -a asm.contigs.fasta -l asm.contigs.fasta.fai -b alignment.bed -o scaffolds -m yes
