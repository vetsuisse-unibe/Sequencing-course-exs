#!/bin/bash
#SBATCH --time=1:00:00
#SBATCH --mem=2G
#SBATCH --output=../results/final_fastqc.out
#SBATCH --error=../results/final_fastqc.err
#SBATCH --job-name=final_fastqc
#SBATCH --cpus-per-task=4
#SBATCH --partition=courseb

module add vital-it
module add UHTS/Quality_control/fastqc/0.11.5

cd ../data
fastqc --extract *clean.fq.gz --threads 4
