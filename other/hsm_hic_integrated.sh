#!/bin/bash
#SBATCH -n 1
#SBATCH -p standard
source ~/miniconda3/bin/conda 
source activate hsm_env
hifiasm

