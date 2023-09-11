#!/bin/bash
#SBATCH --job-name=salsa2_test
#SBATCH --cpus-per-task=2
#SBATCH --mem=1G

# Load any necessary modules or activate environments
CONDA_SH_PATH=~/miniconda3/etc/profile.d/conda.sh
CONDA_ENV=salsa2_env
CONDA_ACTIVATE_CMD=$(source "$CONDA_SH_PATH" && conda activate "$CONDA_ENV")

# Run Salsa2 command
#salsa2 <options> -bed scaffold.bed -fasta contigs.fasta

eval "$CONDA_ACTIVATE_CMD"
run_pipeline.py
