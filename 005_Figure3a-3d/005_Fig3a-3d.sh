#!/usr/bin/bash
# Step1: Download enhancer datasets and enhancer interactions.
wget http://bioinfo.vanderbilt.edu/AE/HACER/download/T1.txt

# Step2: Generate a BED file containing chromosome number, the start position of an enhancer, the end position of an enhancer, enhancer ID and proximal gene of an enhancer.
cat T1.txt | awk 'BEGIN {OFS="\t"}; {print $2, $3, $4, $1, $13}' >a001_Enhancers.bed

# Step3: HACER dataset uses hg19 genome assembly. To convert the genome assembly to hg38, we use crossmap.
# Download the chain file for the conversion.
wget http://hgdownload.soe.ucsc.edu/goldenPath/hg19/liftOver/hg19ToHg38.over.chain.gz

# Step4: Convert hg19 genome assembly to hg38 using crossmap.
module load crossmap
crossmap bed hg19ToHg38.over.chain.gz a001_Enhancers.bed a002_Enhancers.bed

# Step5: Remove duplicates of enhancers.
cat a002_Enhancers.bed | awk '!a[$1,$2,$3,$5]++' >a003_Enhancers.bed
cat a003_Enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $3-$2 }' >b001_Enhancers.bed

# Step6: Download promoter dataset.
wget ftp://ccg.epfl.ch/epdnew/human/current/Hs_EPDnew.bed

# Step7: Extract info, chromosome number, the start position of a promoter, the end position of a promoter and promoter ID.
cat Hs_EPDnew.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2, $3, $4}' >a004_Promoters.bed

# Step8: Extract target gene information from the promoter BED file.
cat Hs_EPDnew.bed | awk 'BEGIN {OFS="\t"}; {print $4}' >a005.bed
sed 's/_.*//g' a005.bed >a006.bed

# Step9: Add the target gene symbols to the promoter BED file.
paste a004_Promoters.bed a006.bed >a007_Promoters.bed

# Step10: Expand promoter regions +/-1000 bp.
cat a007_Promoters.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2-970, $3+970, $4, $5}' >a008_Promoters.bed

# Step11: Add length info of promoter regions in column 6.
cat a008_Promoters.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $3-$2 }' >b002_Promoters.bed

# Step12: Download bulk ChIP-seq datasets of H3K27ac and H3K27me3 (K562) from ENCODE.
wget https://www.encodeproject.org/files/ENCFF301TVL/@@download/ENCFF301TVL.bam -O H3K27ac_ENCFF301TVL_GRCh38.bam

# Step13: Convert BAM files of bulk ChIP to BED files.
module load bedtools
bedtools bamtobed -i H3K27ac_ENCFF301TVL_GRCh38.bam >H3K27ac_ENCFF301TVL_GRCh38.bed

# Step14: Generate randomized controls of bulk ChIP (H3K27ac and H3K27me3).
bedtools shuffle -i H3K27ac_ENCFF301TVL_GRCh38.bed -g GRCh38.genome >H3K27ac_Randomized_ENCFF301TVL_GRCh38.bed

# Step15: Combine BED files of 8 single cells into 1 BED file.
cat C400_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed C401_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed C402_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed C403_H3K27a_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed C404_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed C405_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed C406_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed C407_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed >a001_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions.bed

# Step16: Remove a header in the BED files.
grep chr a001_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions.bed >a002_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions_headerRemoved.bed

# Step17: Sort order of rows in the BED files.
bedtools sort -i a002_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions_headerRemoved.bed >a004_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions_Sorted.bed

# Step18: Sort order of rows in the enhancer BED files.
bedtools sort -i b001_Enhancers.bed >b001_Enhancers_sorted.bed

# Step19: Count number of the putative signals in an enhancer.
bedtools intersect -a b001_Enhancers_sorted.bed -b H3K27ac_ENCFF301TVL_GRCh38.bed -c >c001.bed
bedtools intersect -a c001.bed -b H3K27ac_Randomized_ENCFF301TVL_GRCh38.bed -c >c002.bed
bedtools map -a c004.bed -b a004_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions_Sorted.bed -c 8,11 -o sum >c005.bed

# Step20: Add signal counts in promoters.
bedtools intersect -a b002_Promoters.bed -b H3K27ac_ENCFF301TVL_GRCh38.bed -c >d001.bed
bedtools intersect -a d001.bed -b H3K27ac_Randomized_ENCFF301TVL_GRCh38.bed -c >d002.bed
bedtools map -a d004.bed -b a004_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions_Sorted.bed -c 8,11 -o sum >d005.bed

# Step21: Calculate reads per kilobase per million input (RPKM).
# $7: H3K27ac_ENCFF301TVL/$8:H3K27ac_Randomized_ENCFF301TVL/$9:H3K27me3_ENCFF330YFF/$10:H3K27me3_Randomized_ENCFF330YFF
# $11: H3K27ac_Rep1-3_SC1-8/$12:Randomized_H3K27ac_Rep1-3_SC1-8/$13:H3K27me3_Rep1-3_SC1-8/$14:Randomized_H3K27me3_Rep1-3_SC1-8
cat c006_Bulk_and_SC_signal_counts_in_Enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7/$6*1000/9761907*1000000,  $8/$6*1000/9761907*1000000, $9/$6*1000/4462017*1000000, $10/$6*1000/4462017*1000000, "" }' >e001_Bulk_and_SC_signal_RPKM_in_Enhancers.bed
cat d006_Bulk_and_SC_signal_counts_in_Promoters.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7/$6*1000/9761907*1000000,  $8/$6*1000/9761907*1000000, $9/$6*1000/4462017*1000000, $10/$6*1000/4462017*1000000, "" }' >e002_Bulk_and_SC_signal_RPKM_in_Promoters.bed

# Step22: Extract rows, which have signals in bulk H3K27ac or Single cell #1-8 H3K27ac.
cat e001_Bulk_and_SC_signal_RPKM_in_Enhancers.bed | awk '$7+$9 >0 {print}' >e011_H3K27ac_RPKM_Bulk_SC_in_Enhancers.bed
cat e002_Bulk_and_SC_signal_RPKM_in_Promoters.bed | awk '$7+$9 >0 {print}' >e021_H3K27ac_RPKM_Bulk_SC_in_Promoters.bed

# Step23: Add a header to the BED files.
cat e011_H3K27ac_RPKM_Bulk_SC_in_Enhancers.bed | sed 1s/^/"Chr\tStart\tEnd\tEnhancerID\tTargetGene\tLength\tBulkH3K27ac\tRandBulkH3K27ac\tscH3K27ac\tRandscH3K27ac\t\n"/  >e111_H3K27ac_RPKM_Bulk_SC_in_Enhancers_header.bed
cat e021_H3K27ac_RPKM_Bulk_SC_in_Promoters.bed | sed 1s/^/"Chr\tStart\tEnd\tEnhancerID\tTargetGene\tLength\tBulkH3K27ac\tRandBulkH3K27ac\tscH3K27ac\tRandscH3K27ac\t\n"/  >e121_H3K27ac_RPKM_Bulk_SC_in_Promoters_header.bed 

# Step24: Extract the first 200,000 rows for the bootstrap statistical test, and add row numbers for read.delim for R.
head -n 200001 e111_H3K27ac_RPKM_Bulk_SC_in_Enhancers_header.bed | nl >e211_H3K27ac_RPKM_Bulk_SC_in_Enhancers_200000.bed
head -n 200001 e121_H3K27ac_RPKM_Bulk_SC_in_Promoters_header.bed | nl >e221_H3K27ac_RPKM_Bulk_SC_in_Promoters_200000.bed

# Step25: Run swarm command for Bootstrap test.
swarm -f e300_Swarm_Rscript.swarm --module R/3.5 --time 24:00:00 --partition=ccr,norm -g 240 -t 50

# Step26: Separate K562-cell-type specific, and non-specific, active enhancers.
grep K562 a002_Enhancers.bed >e002_K562-cell-type_specific_active_enhancers.bed
grep -v K562 a002_Enhancers.bed >e002_K562-cell-type_NON-specific_active_enhancers.bed

# Step27: Extract target gene names from the K562-specific active enhancers list.
cat e002_K562-cell-type_specific_active_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $5}' >e002_enhancer-interacting_gene_promoters_in_K562.txt

# Step28: Extract promoters interacting with K562-cell-type-specific, active enhancers form e002_Bulk_and_SC_signal_RPKM_in_Promoters.bed
grep -f e002_enhancer-interacting_gene_promoters_in_K562.txt e002_Bulk_and_SC_signal_RPKM_in_Promoters.bed >e002_Promoters_interacting_with_K562-active_enhancers.bed
# Open Files of e002_Bulk_and_SC_signal_RPKM_in_Promoters.bed and e002_Promoters_interacting_with_K562-active_enhancers.bed with EXCEL and summarize the results.
# Count numbers of enhancers and promoters, which have RPKM values greater than the value of confidence interval 0.99 calculated by Bootstrap test.

