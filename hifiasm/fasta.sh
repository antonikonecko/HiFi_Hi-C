#!/bin/bash
#SBATCH --nodes=1
#SBATCH --mem=24gb
#SBATCH --time=3:00:00

awk '/^S/{print ">"$2;print $3}' AT_hsm.asm.bp.p_ctg.gfa > AT_hsm.asm.bp.p_ctg.fasta 
