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
source activate bioawk_env

for fasta_file in $fasta_files; do    
	filename=$(basename "$fasta_file" .fasta)
    bioawk -c fastx '{print $name"\t"length($seq)}' "$fasta_file" > "chrom_sizes/${filename}.chrom.sizes"
done

