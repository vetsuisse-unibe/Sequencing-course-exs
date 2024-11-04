#!/bin/bash
#SBATCH --time=1:00:00
#SBATCH --mem=2G
#SBATCH --output=../results/qual.out
#SBATCH --error=../results/qual.err
#SBATCH --job-name=fastp
#SBATCH --cpus-per-task=4
#SBATCH --partition=courseb

module add UHTS/Quality_control/fastp/0.12.5

cd ../data
fastp -w 4 -q 15 -z 5 -l 50     -i SRR1027171_1.fastq.gz     -I SRR1027171_2.fastq.gz     -o SRR1027171_1.clean.fq.gz     -O SRR1027171_2.clean.fq.gz
