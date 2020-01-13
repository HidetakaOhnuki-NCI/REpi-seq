#!/usr/bin/bash
# Step1: Download enhancer datasets and enhancer interactions.
wget http://bioinfo.vanderbilt.edu/AE/HACER/download/T1.txt

# Step2: Change the file format of promoter dataset to BED file format.
cat T1.txt | awk 'BEGIN {OFS="\t"}; {print $2, $3, $4, $1, $13, $9, ""}' >a001_Enhancers.bed

# Step3: HANCER dataset uses hg19 genome assembly. To convert the genome assembly to hg38, we use crossmap.
# Download the chain file for the conversion.
wget http://hgdownload.soe.ucsc.edu/goldenPath/hg19/liftOver/hg19ToHg38.over.chain.gz

# Step4: Convert hg19 genome assembly to hg38 using crossmap.
module load crossmap
crossmap bed hg19ToHg38.over.chain.gz a001_Enhancers.bed a002_Enhancers.bed

# Step5: Extract K562-cell specific active enhancers.
grep K562 a002_Enhancers.bed >a003_K562-specific_active_enhancers.bed

# Step6: Extract Non-K562 active enhancers.
cat a002_Enhancers.bed | grep -v "K562" >a004_Non-K562_active_enhancers.bed

# Step7: Add length information.
cat a003_K562-specific_active_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $3-$2, "" }' >a005_K562-specific_active_enhancers.bed
cat a004_Non-K562_active_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $3-$2, "" }' >a006_Non-K562_active_enhancers.bed

# Step8: Download bulk ChIP-seq datasets of H3K27ac and H3K27me3 (K562) from ENCODE.
wget https://www.encodeproject.org/files/ENCFF301TVL/@@download/ENCFF301TVL.bam -O H3K27ac_ENCFF301TVL_GRCh38.bam
wget https://www.encodeproject.org/files/ENCFF330YFF/@@download/ENCFF330YFF.bam -O H3K27me3_ENCFF330YFF_GRCh38.bam

# Step9: Convert BAM files of bulk ChIP to BED files.
module load bedtools
bedtools bamtobed -i H3K27ac_ENCFF301TVL_GRCh38.bam >H3K27ac_ENCFF301TVL_GRCh38.bed
bedtools bamtobed -i H3K27me3_ENCFF330YFF_GRCh38.bam >H3K27me3_ENCFF330YFF_GRCh38.bed

# Step10: Combine BED files of 8 single cells into 1 BED file.
cat C400_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed C401_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed C402_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed C403_H3K27a_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed C404_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed C405_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed C406_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed C407_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed >a007_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions.bed
cat C408_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed C409_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed C410_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed C411_H3K27me3_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed C412_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed C413_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed C414_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed C415_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed >a008_H3K27me3_SC1-8_Rep1-3_PutativeSignalRegions.bed
grep chr a007_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions.bed >a009_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions_headerRemoved.bed
grep chr a008_H3K27me3_SC1-8_Rep1-3_PutativeSignalRegions.bed >a010_H3K27me3_SC1-8_Rep1-3_PutativeSignalRegions_headerRemoved.bed
bedtools sort -i a009_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions_headerRemoved.bed >a011_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions_Sorted.bed
bedtools sort -i a010_H3K27me3_SC1-8_Rep1-3_PutativeSignalRegions_headerRemoved.bed >a012_H3K27me3_SC1-8_Rep1-3_PutativeSignalRegions_Sorted.bed

# Step11: Add signal counts in enhancers.
bedtools sort -i a005_K562-specific_active_enhancers.bed >a100_K562-specific_active_enhancers_sorted.bed
bedtools sort -i a006_Non-K562_active_enhancers.bed >a101_Non-K562_active_enhancers_sorted.bed

bedtools intersect -a a100_K562-specific_active_enhancers_sorted.bed -b H3K27ac_ENCFF301TVL_GRCh38.bed -c >b001.bed
bedtools intersect -a b001.bed -b H3K27me3_ENCFF330YFF_GRCh38.bed -c >b002.bed
bedtools map -a b002.bed -b a011_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions_Sorted.bed -c 8,11 -o sum >b003.bed
bedtools map -a b003.bed -b a012_H3K27me3_SC1-8_Rep1-3_PutativeSignalRegions_Sorted.bed -c 8,11 -o sum >b004_Bulk_and_SC_signal_counts_in_K562-specific_active_enhancers.bed

bedtools intersect -a a101_Non-K562_active_enhancers_sorted.bed -b H3K27ac_ENCFF301TVL_GRCh38.bed -c >b005.bed
bedtools intersect -a b005.bed -b H3K27me3_ENCFF330YFF_GRCh38.bed -c >b006.bed
bedtools map -a b006.bed -b a011_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions_Sorted.bed -c 8,11 -o sum >b007.bed
bedtools map -a b007.bed -b a012_H3K27me3_SC1-8_Rep1-3_PutativeSignalRegions_Sorted.bed -c 8,11 -o sum >b008_Bulk_and_SC_signal_counts_in_Non-K562_active_enhancers.bed

# Step12: Calculate RPKM.
# $7: H3K27ac_ENCFF301TVL/$8:H3K27ac_Randomized_ENCFF301TVL/$9:H3K27me3_ENCFF330YFF/$10:H3K27me3_Randomized_ENCFF330YFF
# $11: H3K27ac_Rep1-3_SC1-8/$12:Randomized_H3K27ac_Rep1-3_SC1-8/$13:H3K27me3_Rep1-3_SC1-8/$14:Randomized_H3K27me3_Rep1-3_SC1-8
cat b004_Bulk_and_SC_signal_counts_in_K562-specific_active_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $8/$7*1000/9761907*1000000, $9/$7*1000/20135251*1000000, $10/$7*1000/1004010*1000000, $11/$7*1000/1037584*1000000, "" }' >b009_Bulk_and_SC_signal_RPKM_in_K562-specific_active_enhancers.bed
cat b008_Bulk_and_SC_signal_counts_in_Non-K562_active_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $8/$7*1000/9761907*1000000, $9/$7*1000/20135251*1000000, $10/$7*1000/1004010*1000000, $11/$7*1000/1037584*1000000, "" }' >b010_Bulk_and_SC_signal_RPKM_in_Non-K562_active_enhancers.bed

# Step13. Convert 0 value to 0.01 in H3K27ac and H3K27me3 to avoid error in calculation of ration H3K27ac/H3K27me3.
# The lowest value of H3K27ac (RPKM) excluding 0 is 0.014072
# The lowest value of H3K27me3 (RPKM) excluding 0 is 0.010957
# The conversion value 0.01 is determined based on the lowest value of H3K27me3.
sed 's/\t0\t/\t0.01\t/g' b009_Bulk_and_SC_signal_RPKM_in_K562-specific_active_enhancers.bed | sed 's/\t0\t/\t0.01\t/g' >b009_1_Bulk_and_SC_signal_RPKM_in_K562-specific_active_enhancers.bed 
sed 's/\t0\t/\t0.01\t/g' b010_Bulk_and_SC_signal_RPKM_in_Non-K562_active_enhancers.bed | sed 's/\t0\t/\t0.01\t/g' >b010_1_Bulk_and_SC_signal_RPKM_in_Non-K562_active_enhancers.bed 

# Step14. Calculate log2(H3K27ac/H3K27me3).
cat b009_1_Bulk_and_SC_signal_RPKM_in_K562-specific_active_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, log($8/$9)/log(2), log($10/$11)/log(2)}' >b011_log2_H3K27ac_H3K27me3_in_K562-specific_active_enhancers.bed
cat b010_1_Bulk_and_SC_signal_RPKM_in_Non-K562_active_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, log($8/$9)/log(2), log($10/$11)/log(2)}' >b012_log2_H3K27ac_H3K27me3_in_Non-K562_active_enhancers.bed

# Step15. Extract putative active enhancers.
cat b011_log2_H3K27ac_H3K27me3_in_K562-specific_active_enhancers.bed | awk '$8 >0 {print}' >c000_BulkChIP_detected_K562-specific_known_active_enhancers.bed
cat b011_log2_H3K27ac_H3K27me3_in_K562-specific_active_enhancers.bed | awk '$9 >0 {print}' >c001_RscEpi-seq_detected_K562-specific_known_active_enhancers.bed
cat b012_log2_H3K27ac_H3K27me3_in_Non-K562_active_enhancers.bed | awk '$8 >0 {print}' >c002_BulkChIP_detected_Non-K562_active_enhancers.bed
cat b012_log2_H3K27ac_H3K27me3_in_Non-K562_active_enhancers.bed | awk '$9 >0 {print}' >c003_RscEpi-seq_detected_Non-K562_active_enhancers.bed

# Step16. Extract info of interacting genes of the active enhancers.
cat c000_BulkChIP_detected_K562-specific_known_active_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $6, ""}' | sed 's/,/\n/g' | awk '!a[$1]++' >d000_Interacting_gene_list_of_BulkChIP_detected_K562-specific_known_active_enhancers.txt
cat c001_RscEpi-seq_detected_K562-specific_known_active_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $6, ""}' | sed 's/,/\n/g' | awk '!a[$1]++' >d001_Interacting_gene_list_of_RscEpi-seq_detected_K562-specific_known_active_enhancers.txt
cat c002_BulkChIP_detected_Non-K562_active_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $6, ""}' | sed 's/,/\n/g' | awk '!a[$1]++' >d002_Interacting_gene_list_of_BulkChIP_detected_Non-K562_active_enhancers.txt
cat c003_RscEpi-seq_detected_Non-K562_active_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $6, ""}' | sed 's/,/\n/g' | awk '!a[$1]++' >d003_Interacting_gene_list_of_RscEpi-seq_detected_Non-K562_active_enhancers.txt
