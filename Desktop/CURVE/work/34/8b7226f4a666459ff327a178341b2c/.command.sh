#!/bin/bash -euo pipefail
bwa mem -K 100000000 -R "@RG\tID:1234N_M6\tPU:1234N_M6\tSM:1234N\tLB:1234N\tPL:illumina"  -t 2 -M human_g1k_v37_decoy.small.fasta     D0F23_N_111212.2.AGTTGCTT_R1_xxx.fastq.gz D0F23_N_111212.2.AGTTGCTT_R2_xxx.fastq.gz |     samtools sort --threads 2 -m 2G - > 1234N_1234N_M6.bam
