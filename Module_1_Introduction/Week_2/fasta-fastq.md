### Example of fasta and fastq fo0rmats

**FASTA format**

In bioinformatics and biochemistry, the FASTA format is a text-based format for representing either nucleotide sequences or amino acid (protein) sequences, in which nucleotides or amino acids are represented using single-letter codes.

```
>NG_007386.2:5037-92221 Homo sapiens presenilin 1 (PSEN1), RefSeqGene (LRG_224) on chromosome 14
GGAAACAAAACAGCGGCTGGTCTGGAAGGAACCTGAGCTACGAGCCGCGGCGGCAGCGGGGCGGCGGGGAAGCGTATGTGCGTGATGGGGAGTCCGGGCAAGCCAGGAAGGCACCGCGGACATGGGCGGCCGCGGGCAGG
GCCCGGCCCTTTGTGGCCGCCCGGGCCGCGAAGCCGGTGTCCTAAAAGATGAGGGGCGGGGCGCGGCCGGTTGGGGCTGGGGAACCCCGTGTGGGAAACCAGGAGGGGCGGCCCGTTTCTCGGGCTTCGGGCGCGGCCGG
GTGGAGAGAGATTCCGGGGAGCCTTGGTCCGGAAATGCTGTTTGCTCGAAGACGTCTCAGGGCGCAGGTGCCTTGGGCCGGGATTAGTAGCCGTCTGAACTGGAGTGGAGTAGGAGAAAGAGGAAGCGTCTTGGGCTGGG
TCTGCTTGAGCAACTGGTGAAACTCCGCGCCTCACGCCCCGGGTGTGTCCTTGTCCAGGGGCGACGAGCATTCTGGGCGAAGTCCGCACGCCTCTTGTTCGAGGCGGAAGACGGGGTCTGATGCTTTCTCCTTGGTCGGG
```


**FASTQ format**

A FASTQ file normally uses four lines per sequence.

Line 1 begins with a '@' character and is followed by a sequence identifier and an optional description (like a FASTA title line).
Line 2 is the raw sequence letters. A,T,C,G,N.
Line 3 begins with a '+' character and is optionally followed by the same sequence identifier (and any description) again.
Line 4 encodes the quality values for the sequence in Line 2, and must contain the same number of symbols as letters in the sequence.

```
@SRR062634.321 HWI-EAS110_103327062:6:1:1446:951/2
TGATCATTTGATTAATACTGACATGTAGACAAGAAGAAAAGTATGTTTCATGCTATTTTGAGTAACTTCCATTTAGAAGCCTACTCCTGAGCACAACATT
+
B5=BD5DAD?:CBDD-DDDDDCDDB+-B:;?A?CCE?;D3A?B?DB??;DDDEEABD+>DAC?A-CD-=D?C5A@::AC-?AB?=:>CA@##########
```

