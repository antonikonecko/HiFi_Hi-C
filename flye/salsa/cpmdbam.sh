#!/bin/bash
#SBATCH -n4
#SBACTH --mem=32GB
cp -r ~/project_data/akonecko/juicer/flye/ok/aligned/merged_dedup.bam ~/jobs/flye/default/salsa/merged_dedup.bam
