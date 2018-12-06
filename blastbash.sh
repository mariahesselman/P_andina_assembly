#!/bin/bash
#Template 2 for BLAST

module load bioinfo-tools
module load blast

cd /home/zhong/PROJECT/P_andina_assembly/Raw_Data/megahit_out

blastx -query megahit_assembly1.contigs.fa -db /home/zhong/PROJECT/P_andina_assembly/Raw_Data/CHS_DB/chs.fa -outfmt 1  -out blast2

done
