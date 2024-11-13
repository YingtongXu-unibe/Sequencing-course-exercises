#!/bin/bash
#SBATCH --time=1:00:00
#SBATCH --mem=2G
#SBATCH --output=qual.out
#SBATCH --error=qual.err
#SBATCH --job-name=fastp
#SBATCH --cpus-per-task=4
#SBATCH --partition=pcourseb

module add fastp/0.23.4-GCC-10.3.0

# 使用 fastp 工具来清理序列
# -w 4      : 设置线程数为 4，用于并行处理
# -q 20     : 修剪低于质量阈值 20 的序列末端
# -z 5      : 使用 gzip 压缩输出文件，压缩等级为 5
# -l 60     : 丢弃修剪后短于 60 个碱基的序列
# -i        : 输入的第一个 FASTQ 文件
# -I        : 输入的第二个 FASTQ 文件（配对序列）
# -o        : 输出的第一个清理后的 FASTQ 文件
# -O        : 输出的第二个清理后的 FASTQ 文件

fastp -w 4 -q 20 -z 5 -l 60  -i SRR1027171_1.fastq.gz -I SRR1027171_2.fastq.gz -o SRR1027171_1.clean.fq.gz -O SRR1027171_2.clean.fq.gz