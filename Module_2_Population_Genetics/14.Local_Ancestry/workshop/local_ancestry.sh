# Script for determining Local ancestry with RFMix2
# Juliana Acosta-Uribe 2024

## run script as:
# chmod u+x local_ancestry.sh
# nohup ./local_ancestry.sh > local_ancestry.log


## REQUIRED SOFTWARE:
# bcftools: https://samtools.github.io/bcftools/bcftools.html#index
# RFMix2: https://github.com/slowkoni/rfmix
rfmix='/home/acostauribe/bin/rfmix/rfmix'

## REQUIRED FILES:

# Cromosome that is being processed
chromosome='chr19'

# 1.  File with admixed genomes (must be a file.vcf.gz)
query_file='ASW-CEU-YRI_chr19.study.vcf.gz' 

# 2. Reference panel with ancestral populations (must be a file.vcf.gz)
reference_ancestry='ASW-CEU-YRI_chr19.reference.vcf.gz'

# 3. Fasta file of reference genome. Must have an index (.fai) in same directory 
# fasta file was downloaded from https://hgdownload.soe.ucsc.edu/goldenPath/hg38/bigZips/latest/
# The index file fasta.fai was created using http://www.htslib.org/doc/samtools-faidx.html
fasta_file='chr19.hg38.fa.gz'

# 4. Genetic map
# Three columns chromosome, physical position in bp, genetic position in cM.
g_map='chr19.b38.gmap.rfmix2'

# 5. Sample Map
# The sample map file specifies which subpopulation each reference sample represents. 
# It is tab delimited text with at least two columns. 
# The first column gives the sample name or identifier, which must match the one used in the reference VCF/BCF. 
# The second column is a string naming a subpopulation and may contain spaces (e.g., "European", or "East_African").
ancestry_sample_map='sample_map.txt'

## VARIABLES
threads='8'


## USE RFMIX2 TO DETERMINE LOCAL ANCESTRY

# Make sure your admixed and reference files are phased and indexed
#bcftools index -f file.vcf.gz 

# Run RFMix2

${rfmix} -f ${query_file} \
-r ${reference_ancestry} \
-m ${ancestry_sample_map} \
-g ${g_map} \
-o ${query_file}.rfmix2 \
--chromosome=${chromosome} \
-n 5

# do `rfmix` to see a summary of command line options

# RFMix2 will generate the following output files:
# *output.msp.tsv*: The most likely assignment of subpopulations per CRF point. Produced by computing the viterbi algorithm on the CRF. The *.msp.tsv* file is condensed such that CRF windows are combined if all query samples are in the sample subpopulations for successive windows. 
# *output.fb.tsv*: The marginal probabilities of each subpopulation being the ancestral population of the corresponding CRF point. Produced by computing the forward-backward algorithm on the CRF
# *output.Q*: RFMix2 also reports global ancestry estimated based on local ancestries identified by their algorithm in their standard output file (∗results.rfmix.Q) corresponding to the .Q output files from ADMIXTURE that can be compared to ADMIXTURE generated global ancestry directly. 
