#!/bin/bash
#SBATCH -n 16
#SBATCH --mem=120gb
#SBATCH --time=5:00:00
#SBATCH -p standard

cd splits/

# Decompress the first file
gunzip -c ../fastq/hic_R2.fastq.gz > hic_R2.fastq

# Decompress the second file
gunzip -c ../fastq/hic_R1.fastq.gz > hic_R1.fastq

# Launch the first split command using 8 cores
srun -n 8 split -a 3 -l 90000000 -d --additional-suffix=_R2.fastq hic_R2.fastq &

# Launch the second split command using 8 cores
srun -n 8 split -a 3 -l 90000000 -d --additional-suffix=_R1.fastq hic_R1.fastq

# Wait for both split commands to complete
wait

