## Scripts for processing FASTQ files from the GSE52194 study:
- run_fastqc.sh: Quality control analysis using FastQC
- fastp_clean.sh: Adapter and quality trimming using fastp

## Usage:
1. Run FastQC on raw data
2. Clean reads using fastp
3. Run FastQC on cleaned data

# Variant Calling Workflow

## Directory Structure
- refIdx/: Reference genome and BWA indices
- mapping/: Target genome downloaded
- variantCalling/: Read mapping results and scripts

## Analysis Steps
1. Reference Indexing
   - Location: variantCalling/
   - Script: index_reference.sh
   - Dependencies: BWA v0.7.17

2. Read Mapping
   - Location: variantCalling/
   - Script: map_reads_to_reference_BT012.sh map_reads_to_reference.sh
   - Dependencies: BWA v0.7.17, SAMtools v1.13

## Sample Information
- BT012: Bull Terrier sample 1
- BT134: Bull Terrier sample 2

## Mapping stats 
- Location: variantCalling/
- Script: flagstat.sh
- Dependencies: SAMtools v1.13

## Key Locations Visualized in IGV
- chr14:5408613 - G/CTT insertion
- chr14:5731405 - T/G variant
- chr14:5822263