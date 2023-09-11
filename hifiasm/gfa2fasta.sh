#!/bin/bash
#SBATCH -n 12
#SBATCH --mem=32GB
#SBATCH --time 01:00:00
awk '/^S/{print ">"$2;print $3}' AT_hsm.asm.bp.hap1.p_ctg.gfa > AT_hsm.asm.bp.hap1.p_ctg.fasta
awk '/^S/{print ">"$2;print $3}' AT_hsm.asm.bp.hap2.p_ctg.gfa > AT_hsm.asm.bp.hap2.p_ctg.fasta
mv *.fasta fasta/
