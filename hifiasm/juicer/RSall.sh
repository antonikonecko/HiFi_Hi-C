#!/bin/bash
#SBATCH -n 12
#SBATCH --mem=32GB
#SBATCH --time 01:00:00

# Retrieve all fasta files in the ../references/ directory
fasta_files=$(find references/ -maxdepth 1 -name "*.fasta" -type f)

if [[ -z "$fasta_files" ]]; then
    echo "No input fasta files found in the ../references/ directory."
    exit 1
fi

cd restriction_sites

for input_file in $fasta_files; do
    filename=$(basename "$input_file")

    python ../juicer/misc/generate_site_positions.py DpnII "$filename" "../references/$filename"

    python ../juicer/misc/generate_site_positions.py HindIII "$filename" "../references/$filename"

    python ../juicer/misc/generate_site_positions.py MboI "$filename" "../references/$filename"

    python ../juicer/misc/generate_site_positions.py Sau3AI "$filename" "../references/$filename"

    python ../juicer/misc/generate_site_positions.py Arima "$filename" "../references/$filename"
done

