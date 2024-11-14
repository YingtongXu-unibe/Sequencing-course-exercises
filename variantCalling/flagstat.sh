#!/bin/bash
# Slurm options
#SBATCH --mail-user=<yingtong.xu@students.unibe.ch>
#SBATCH --mail-type=fail,end
#SBATCH --job-name="flagstat"
#SBATCH --chdir=.
#SBATCH --time=3:00:00
#SBATCH --mem-per-cpu=2G
#SBATCH --cpus-per-task=8
#SBATCH -p pcourseb

module load SAMtools/1.13-GCC-10.3.0
samtools flagstat -@ 8 BT012.sorted.bam > BT012_mapping_stats.txt
samtools flagstat -@ 8 BT134.sorted.bam > BT134_mapping_stats.txt