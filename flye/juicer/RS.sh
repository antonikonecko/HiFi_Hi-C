#!/bin/bash
#SBATCH -n 12
#SBATCH --mem=32GB
#SBATCH --time 01:00:00

# Retrieve the first fasta file in the ../references/ directory
input_file=$(find references/ -maxdepth 1 -name "*.fasta" -type f | head -n 1)

if [[ -z "$input_file" ]]; then
    echo "No input fasta file found in the ../references/ directory."
    exit 1
fi

cd restriction_sites

filename=$(basename "$input_file")

python ../juicer/misc/generate_site_positions.py DpnII "$filename" "../references/$filename"

python ../juicer/misc/generate_site_positions.py HindIII "$filename" "../references/$filename"

python ../juicer/misc/generate_site_positions.py MboI "$filename" "../references/$filename"

python ../juicer/misc/generate_site_positions.py Sau3AI "$filename" "../references/$filename"

python ../juicer/misc/generate_site_positions.py Arima "$filename" "../references/$filename"

