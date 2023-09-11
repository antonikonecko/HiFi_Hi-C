#!/bin/bash
#SBATCH -n 16
#SBATCH --mem=32gb
#SBATCH --time=5:00:00
#SBATCH -p standard

fasta_files=$(find references/ -maxdepth 1 -name "*.fasta" -type f)

if [[ -z "$fasta_files" ]]; then
    echo "No input fasta files found in the ../references/ directory."
    exit 1
fi

source ~/miniconda3/bin/conda 
source activate bwa_env

for input_file in $fasta_files; do    
    bwa index $input_file
done
