#BLAST CSV parser
import pandas as pd
import sys

def CSV_parse(filename):
    df = pd.read_csv(filename, usecols = ['QSEQID', 'SSEQID', 'EVALUE'])
    df_selected = df.head(300)
    QSEQ_list = df_selected['QSEQID'].tolist()
    SSEQ_list = df_selected['SSEQID'].tolist()
    SSEQ_set = set(SSEQ_list)
    gene_count = {}
    for gene_name in SSEQ_set:
        count = SSEQ_list.count(gene_name)
        gene_count[gene_name] = count
    print(gene_count)
    return QSEQ_list, SSEQ_list


"""def SEQ_call(file1, file2):
    list_list = []
    with open(file2) as f2:
        for subjects in SSEQ_list:
            #print(subjects)
            for line in range(f2):
                line = line.replace("\n", "")
                #print(line)
                if subjects in line:
                    print(line)
                    list_list.append(line)
    print(list_list)"""


if __name__ == "__main__":
    QSEQ_list, SSEQ_list = CSV_parse(sys.argv[1])
    #SEQ_call("megahit_assembly1.contigs.fa", "chs.fa")
