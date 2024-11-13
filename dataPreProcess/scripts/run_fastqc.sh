#!/bin/bash
#SBATCH --time=1:00:00
#SBATCH --mem=2G
#SBATCH --output=fastqc.out
#SBATCH --error=fastqc.err
#SBATCH --job-name=fastqc
#SBATCH --cpus-per-task=4
#SBATCH --partition=pcourseb

 module load FastQC/0.11.9-Java-11

fastqc --extract SRR1027171_1.fastq.gz SRR1027171_2.fastq.gz --threads  4 