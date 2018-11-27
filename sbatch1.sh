#!/bin/bash
#Template 1 for assembly

module load bioinfo-tools
module load bwa
module load abyss

cd Raw_Data

abyss-pe k=96 name=testassembly lr='lra' lra='SRR1817238.fastq'


done
