#!/bin/bash
#SBATCH --time=1:00:00
#SBATCH --mem=2G
#SBATCH --output=../results/fastqc.out
#SBATCH --error=../results/fastqc.err
#SBATCH --job-name=fastqc
#SBATCH --cpus-per-task=4
#SBATCH --partition=courseb

module add vital-it
module add UHTS/Quality_control/fastqc/0.11.5

cd ../data
fastqc --extract SRR1027171_1.fastq.gz SRR1027171_2.fastq.gz --threads 4
