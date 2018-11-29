#!/bin/bash
#Template 1 for assembly

module load bioinfo-tools
module load megahit

cd /home/zhong/PROJECT/P_andina_assembly/Raw_Data

megahit -r SRR1817238.fastq -o megahit_out
