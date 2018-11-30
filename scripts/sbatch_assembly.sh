#!/bin/bash

# This is the template sbatch script for Lab2 at BB2491 spring 2018

# Run the script like this:
# sbatch <OPTIONS> sbatch_template.sh
# Where the OPTIONS are all of:
# –A g2018023 –t 2:00:00 –p node –n 8 --res g2018023_15 –o my_job_name.out
# (you may change the job name "my_job_name.out" to anything you like).

module load bioinfo-tools
module load abyss



# cd to the directory where the data is (of course, use your own user name):

cd /home/mches/P_andina/contigs/

abyss-pe name=first_assembly in=‘../data/Phytophthora_andina/SRR1817238.fastq’


