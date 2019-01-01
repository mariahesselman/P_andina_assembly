#!/bin/bash
#Template 2 for BLAST

module load bioinfo-tools
module load blast

cd /home/zhong/PROJECT/P_andina_assembly/Raw_Data

blastx -query k_30-3.fa -db /home/zhong/PROJECT/P_andina_assembly/Raw_Data/CHS_DB/chs.fa -outfmt 10 -out blast_abyss_k30

done
