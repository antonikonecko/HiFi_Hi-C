#!/bin/bash
#SBATCH -n 16
#SBATCH --mem=32gb
#SBATCH --time=5:00:00
#SBATCH -p standard

cp -r ~/grant_452/scratch/akonecko/jobs/hsm/default/juicer/fastq* ~/grant_452/scratch/akonecko/input_data/hic/
