#!/bin/bash

#SBATCH -n 6
#SBATCH --partition=standard
#SBATCH --mem 16GB
cp -r fastq/* ~/jobs/flye/default/juicer/fastq/
