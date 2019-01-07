from Bio import SeqIO
long_contigs = open('/Users/mariahesselman/Documents/Master/assembly_proj/fasta_files/long_contigs.fa', 'w')
for seq_record in SeqIO.parse('/Users/mariahesselman/Documents/Master/assembly_proj/fasta_files/abyss_kmer30.fa', 'fasta'):
	if len(seq_record.seq) > 5000:
		long_contigs.write(str(seq_record.id) + '\n')
		long_contigs.write(str(seq_record.seq) + '\n')
long_contigs.close()