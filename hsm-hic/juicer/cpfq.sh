#!/bin/bash
#SBATCH -n 12
#SBATCH --mem=32GB
#SBATCH --time 01:00:00

cp -r ~/jobs/hsm/default/juicer/fastq/* fastq/

