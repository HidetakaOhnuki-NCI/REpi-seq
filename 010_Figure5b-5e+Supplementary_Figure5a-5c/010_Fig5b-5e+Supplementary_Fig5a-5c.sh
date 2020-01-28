#!/usr/bin/bash

# Step1: Extract putative signal reads from BAM files using BED files of putative signal regions (p<0.01).
module load bedtools
intersectBed -abam a073_Unique_reads_SC1_Med1.bam -b C416_Med1_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed -wa >d001_0000_Med1_SC1_putative_signal_reads.bam
intersectBed -abam a074_Unique_reads_SC2_Med1.bam -b C416_Med1_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed -wa >d001_0001_Med1_SC2_putative_signal_reads.bam
intersectBed -abam a075_Unique_reads_SC3_Med1.bam -b C416_Med1_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed -wa >d001_0002_Med1_SC3_putative_signal_reads.bam
intersectBed -abam a076_Unique_reads_SC4_Med1.bam -b C416_Med1_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed -wa >d001_0003_Med1_SC4_putative_signal_reads.bam
intersectBed -abam a077_Unique_reads_SC5_Med1.bam -b C416_Med1_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed -wa >d001_0004_Med1_SC5_putative_signal_reads.bam
intersectBed -abam a078_Unique_reads_SC6_Med1.bam -b C416_Med1_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed -wa >d001_0005_Med1_SC6_putative_signal_reads.bam
intersectBed -abam a079_Unique_reads_SC7_Med1.bam -b C416_Med1_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed -wa >d001_0006_Med1_SC7_putative_signal_reads.bam
intersectBed -abam a080_Unique_reads_SC8_Med1.bam -b C416_Med1_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed -wa >d001_0007_Med1_SC8_putative_signal_reads.bam
intersectBed -abam a097_Unique_reads_SC1_5hmC.bam -b C418_5hm_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed -wa >d001_0008_5hmC_SC1_putative_signal_reads.bam
intersectBed -abam a098_Unique_reads_SC2_5hmC.bam -b C418_5hm_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed -wa >d001_0009_5hmC_SC2_putative_signal_reads.bam
intersectBed -abam a099_Unique_reads_SC3_5hmC.bam -b C418_5hm_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed -wa >d001_0010_5hmC_SC3_putative_signal_reads.bam
intersectBed -abam a100_Unique_reads_SC4_5hmC.bam -b C418_5hm_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed -wa >d001_0011_5hmC_SC4_putative_signal_reads.bam
intersectBed -abam a101_Unique_reads_SC5_5hmC.bam -b C418_5hm_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed -wa >d001_0012_5hmC_SC5_putative_signal_reads.bam
intersectBed -abam a102_Unique_reads_SC6_5hmC.bam -b C418_5hm_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed -wa >d001_0013_5hmC_SC6_putative_signal_reads.bam
intersectBed -abam a103_Unique_reads_SC7_5hmC.bam -b C418_5hm_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed -wa >d001_0014_5hmC_SC7_putative_signal_reads.bam
intersectBed -abam a104_Unique_reads_SC8_5hmC.bam -b C418_5hm_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed -wa >d001_0015_5hmC_SC8_putative_signal_reads.bam

# Step2: Convert the BAM to BED.
bedtools bamtobed -i d001_0000_Med1_SC1_putative_signal_reads.bam >d002_0000_Med1_SC1_putative_signal_reads.bed
bedtools bamtobed -i d001_0001_Med1_SC2_putative_signal_reads.bam >d002_0001_Med1_SC2_putative_signal_reads.bed
bedtools bamtobed -i d001_0002_Med1_SC3_putative_signal_reads.bam >d002_0002_Med1_SC3_putative_signal_reads.bed
bedtools bamtobed -i d001_0003_Med1_SC4_putative_signal_reads.bam >d002_0003_Med1_SC4_putative_signal_reads.bed
bedtools bamtobed -i d001_0004_Med1_SC5_putative_signal_reads.bam >d002_0004_Med1_SC5_putative_signal_reads.bed
bedtools bamtobed -i d001_0005_Med1_SC6_putative_signal_reads.bam >d002_0005_Med1_SC6_putative_signal_reads.bed
bedtools bamtobed -i d001_0006_Med1_SC7_putative_signal_reads.bam >d002_0006_Med1_SC7_putative_signal_reads.bed
bedtools bamtobed -i d001_0007_Med1_SC8_putative_signal_reads.bam >d002_0007_Med1_SC8_putative_signal_reads.bed
bedtools bamtobed -i d001_0008_5hmC_SC1_putative_signal_reads.bam >d002_0008_5hmC_SC1_putative_signal_reads.bed
bedtools bamtobed -i d001_0009_5hmC_SC2_putative_signal_reads.bam >d002_0009_5hmC_SC2_putative_signal_reads.bed
bedtools bamtobed -i d001_0010_5hmC_SC3_putative_signal_reads.bam >d002_0010_5hmC_SC3_putative_signal_reads.bed
bedtools bamtobed -i d001_0011_5hmC_SC4_putative_signal_reads.bam >d002_0011_5hmC_SC4_putative_signal_reads.bed
bedtools bamtobed -i d001_0012_5hmC_SC5_putative_signal_reads.bam >d002_0012_5hmC_SC5_putative_signal_reads.bed
bedtools bamtobed -i d001_0013_5hmC_SC6_putative_signal_reads.bam >d002_0013_5hmC_SC6_putative_signal_reads.bed
bedtools bamtobed -i d001_0014_5hmC_SC7_putative_signal_reads.bam >d002_0014_5hmC_SC7_putative_signal_reads.bed
bedtools bamtobed -i d001_0015_5hmC_SC8_putative_signal_reads.bam >d002_0015_5hmC_SC8_putative_signal_reads.bed

# Step3: Binarization of signals.
bedtools merge -i d002_0000_Med1_SC1_putative_signal_reads.bed >d003_0000_Med1_SC1_putative_signals_Binary.bed
bedtools merge -i d002_0001_Med1_SC2_putative_signal_reads.bed >d003_0001_Med1_SC2_putative_signals_Binary.bed
bedtools merge -i d002_0002_Med1_SC3_putative_signal_reads.bed >d003_0002_Med1_SC3_putative_signals_Binary.bed
bedtools merge -i d002_0003_Med1_SC4_putative_signal_reads.bed >d003_0003_Med1_SC4_putative_signals_Binary.bed
bedtools merge -i d002_0004_Med1_SC5_putative_signal_reads.bed >d003_0004_Med1_SC5_putative_signals_Binary.bed
bedtools merge -i d002_0005_Med1_SC6_putative_signal_reads.bed >d003_0005_Med1_SC6_putative_signals_Binary.bed
bedtools merge -i d002_0006_Med1_SC7_putative_signal_reads.bed >d003_0006_Med1_SC7_putative_signals_Binary.bed
bedtools merge -i d002_0007_Med1_SC8_putative_signal_reads.bed >d003_0007_Med1_SC8_putative_signals_Binary.bed
bedtools merge -i d002_0008_5hmC_SC1_putative_signal_reads.bed >d003_0008_5hmC_SC1_putative_signals_Binary.bed
bedtools merge -i d002_0009_5hmC_SC2_putative_signal_reads.bed >d003_0009_5hmC_SC2_putative_signals_Binary.bed
bedtools merge -i d002_0010_5hmC_SC3_putative_signal_reads.bed >d003_0010_5hmC_SC3_putative_signals_Binary.bed
bedtools merge -i d002_0011_5hmC_SC4_putative_signal_reads.bed >d003_0011_5hmC_SC4_putative_signals_Binary.bed
bedtools merge -i d002_0012_5hmC_SC5_putative_signal_reads.bed >d003_0012_5hmC_SC5_putative_signals_Binary.bed
bedtools merge -i d002_0013_5hmC_SC6_putative_signal_reads.bed >d003_0013_5hmC_SC6_putative_signals_Binary.bed
bedtools merge -i d002_0014_5hmC_SC7_putative_signal_reads.bed >d003_0014_5hmC_SC7_putative_signals_Binary.bed
bedtools merge -i d002_0015_5hmC_SC8_putative_signal_reads.bed >d003_0015_5hmC_SC8_putative_signals_Binary.bed

# Step4: Download enhancer datasets and enhancer interactions.
wget http://bioinfo.vanderbilt.edu/AE/HACER/download/T1.txt -O D200_HANCER_hg19.txt

# Step5: Change the file format of the promoter dataset to the BED file format.
cat D200_HANCER_hg19.txt | awk 'BEGIN {OFS="\t"}; {print $2, $3, $4, $1, $13, $9}' >D201_Enhancers_hg19.bed

# Step6: HACER dataset uses hg19 genome assembly. To convert the genome assembly to hg38, we use crossmap.
# Download the chain file for the conversion.
wget http://hgdownload.soe.ucsc.edu/goldenPath/hg19/liftOver/hg19ToHg38.over.chain.gz

# Step7: Convert hg19 genome assembly to hg38 using crossmap.
module load crossmap
crossmap bed hg19ToHg38.over.chain.gz D201_Enhancers_hg19.bed D202_Enhancers_hg38.bed

# Step8: Add length info of enhancers to column7.
cat D202_Enhancers_hg38.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $3-$2 }' >D203_enhancers_w_length.bed

# Step9: Remove header.
grep chr C400_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed >C450_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C401_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed >C451_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C402_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed >C452_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C403_H3K27a_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed >C453_H3K27a_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C404_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed >C454_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C405_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed >C455_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C406_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed >C456_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C407_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed >C457_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C408_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed >C458_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C409_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed >C459_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C410_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed >C460_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C411_H3K27me3_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed >C461_H3K27me3_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C412_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed >C462_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C413_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed >C463_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C414_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed >C464_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C415_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed >C465_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed

# Step10: Sort BED files.
bedtools sort -i D203_enhancers_w_length.bed>D2014_000_Sorted_enhancers.bed
bedtools sort -i C450_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed>D2014_001_Sorted_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C451_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed>D2014_002_Sorted_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C452_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed>D2014_003_Sorted_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C453_H3K27a_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed>D2014_004_Sorted_H3K27a_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C454_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed>D2014_005_Sorted_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C455_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed>D2014_006_Sorted_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C456_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed>D2014_007_Sorted_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C457_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed>D2014_008_Sorted_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C458_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed>D2014_009_Sorted_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C459_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed>D2014_010_Sorted_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C460_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed>D2014_011_Sorted_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C461_H3K27me3_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed>D2014_012_Sorted_H3K27me3_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C462_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed>D2014_013_Sorted_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C463_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed>D2014_014_Sorted_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C464_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed>D2014_015_Sorted_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C465_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed>D2014_016_Sorted_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed

# Step11: Count Ab reads - IgG reads in the enhancers.
# Column 8: Ab reads - IgG reads in 500 bp bin, which has p<0.01.
# Column 11: Randomized Ab reads - Randomized IgG reads in 500 bp bin.
bedtools map -a D2014_000_Sorted_enhancers.bed -b D2014_001_Sorted_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8,11 -o sum >D2015_000.bed
bedtools map -a D2015_000.bed -b D2014_002_Sorted_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8,11 -o sum >D2015_001.bed
bedtools map -a D2015_001.bed -b D2014_003_Sorted_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8,11 -o sum >D2015_002.bed
bedtools map -a D2015_002.bed -b D2014_004_Sorted_H3K27a_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8,11 -o sum >D2015_003.bed
bedtools map -a D2015_003.bed -b D2014_005_Sorted_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8,11 -o sum >D2015_004.bed
bedtools map -a D2015_004.bed -b D2014_006_Sorted_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8,11 -o sum >D2015_005.bed
bedtools map -a D2015_005.bed -b D2014_007_Sorted_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8,11 -o sum >D2015_006.bed
bedtools map -a D2015_006.bed -b D2014_008_Sorted_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8,11 -o sum >D2015_007.bed
bedtools map -a D2015_007.bed -b D2014_009_Sorted_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8,11 -o sum >D2015_008.bed
bedtools map -a D2015_008.bed -b D2014_010_Sorted_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8,11 -o sum >D2015_009.bed
bedtools map -a D2015_009.bed -b D2014_011_Sorted_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8,11 -o sum >D2015_010.bed
bedtools map -a D2015_010.bed -b D2014_012_Sorted_H3K27me3_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8,11 -o sum >D2015_011.bed
bedtools map -a D2015_011.bed -b D2014_013_Sorted_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8,11 -o sum >D2015_012.bed
bedtools map -a D2015_012.bed -b D2014_014_Sorted_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8,11 -o sum >D2015_013.bed
bedtools map -a D2015_013.bed -b D2014_015_Sorted_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8,11 -o sum >D2015_014.bed
bedtools map -a D2015_014.bed -b D2014_016_Sorted_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8,11 -o sum >D2015_015.bed

# Data structure of D2015_015.bed is shown below.
# Column1	Chromosome
# Column2	Start
# Column3	End
# Column4	Enhacer_ID
# Column5	Closest_gene
# Column6	4DGenome
# Column7	Length
# Column8	H3K27a-IgG_SC1_Rep1-3
# Column9	Random_Control_of_H3K27a-IgG_SC2_Rep1-3
# Column10	H3K27a-IgG_SC2_Rep1-3
# Column11	Random_Control_of_H3K27a-IgG_SC2_Rep1-3
# Column12	H3K27a-IgG_SC3_Rep1-3
# Column13	Random_Control_of_H3K27a-IgG_SC3_Rep1-3
# Column14	H3K27a-IgG_SC4_Rep1-3
# Column15	Random_Control_of_H3K27a-IgG_SC4_Rep1-3
# Column16	H3K27a-IgG_SC5_Rep1-3
# Column17	Random_Control_of_H3K27a-IgG_SC5_Rep1-3
# Column18	H3K27a-IgG_SC6_Rep1-3
# Column19	Random_Control_of_H3K27a-IgG_SC6_Rep1-3
# Column20	H3K27a-IgG_SC7_Rep1-3
# Column21	Random_Control_of_H3K27a-IgG_SC7_Rep1-3
# Column22	H3K27a-IgG_SC8_Rep1-3
# Column23	Random_Control_of_H3K27a-IgG_SC8_Rep1-3
# Column24	H3K27me3-IgG_SC1_Rep1-3
# Column25	Random_Control_of_H3K27me3-IgG_SC1_Rep1-3
# Column26	H3K27me3-IgG_SC2_Rep1-3
# Column27	Random_Control_of_H3K27me3-IgG_SC2_Rep1-3
# Column28	H3K27me3-IgG_SC3_Rep1-3
# Column29	Random_Control_of_H3K27me3-IgG_SC3_Rep1-3
# Column30	H3K27me3-IgG_SC4_Rep1-3
# Column31	Random_Control_of_H3K27me3-IgG_SC4_Rep1-3
# Column32	H3K27me3-IgG_SC5_Rep1-3
# Column33	Random_Control_of_H3K27me3-IgG_SC5_Rep1-3
# Column34	H3K27me3-IgG_SC6_Rep1-3
# Column35	Random_Control_of_H3K27me3-IgG_SC6_Rep1-3
# Column36	H3K27me3-IgG_SC7_Rep1-3
# Column37	Random_Control_of_H3K27me3-IgG_SC7_Rep1-3
# Column38	H3K27me3-IgG_SC8_Rep1-3
# Column39	Random_Control_of_H3K27me3-IgG_SC8_Rep1-3

# Step12: Count input number of reads.
V1=$(cat D2014_001_Sorted_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a+=$8} END {print a}')
V2=$(cat D2014_002_Sorted_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a += $8} END {print a}')
V3=$(cat D2014_003_Sorted_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a += $8} END {print a}')
V4=$(cat D2014_004_Sorted_H3K27a_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a += $8} END {print a}')
V5=$(cat D2014_005_Sorted_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a += $8} END {print a}')
V6=$(cat D2014_006_Sorted_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a += $8} END {print a}')
V7=$(cat D2014_007_Sorted_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a += $8} END {print a}')
V8=$(cat D2014_008_Sorted_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a += $8} END {print a}')
V9=$(cat D2014_009_Sorted_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a += $8} END {print a}')
V10=$(cat D2014_010_Sorted_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a += $8} END {print a}')
V11=$(cat D2014_011_Sorted_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a += $8} END {print a}')
V12=$(cat D2014_012_Sorted_H3K27me3_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a += $8} END {print a}')
V13=$(cat D2014_013_Sorted_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a += $8} END {print a}')
V14=$(cat D2014_014_Sorted_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a += $8} END {print a}')
V15=$(cat D2014_015_Sorted_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a += $8} END {print a}')
V16=$(cat D2014_016_Sorted_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a += $8} END {print a}')
echo $V1 $V2 $V3 $V4 $V5 $V6 $V7 $V8 $V9 $V10 $V11 $V12 $V13 $V14 $V15 $V16 >D2016_Input_number.txt

# Step13: Calculate RPKM, reads per kilobase per million reads.
cat D2015_019.bed | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6,$7,$8/$7*1000/394563*1000000,$9/$7*1000/394563*1000000,$10/$7*1000/541522*1000000,$11/$7*1000/541522*1000000,$12/$7*1000/381122*1000000,$13/$7*1000/381122*1000000,$14/$7*1000/532945*1000000,$15/$7*1000/532945*1000000,$16/$7*1000/785915*1000000,$17/$7*1000/785915*1000000,$18/$7*1000/637931*1000000,$19/$7*1000/637931*1000000,$20/$7*1000/510544*1000000,$21/$7*1000/510544*1000000,$22/$7*1000/666917*1000000,$23/$7*1000/666917*1000000,$24/$7*1000/183195*1000000,$25/$7*1000/183195*1000000,$26/$7*1000/297070*1000000,$27/$7*1000/297070*1000000,$28/$7*1000/761663*1000000,$29/$7*1000/761663*1000000,$30/$7*1000/296671*1000000,$31/$7*1000/296671*1000000,$32/$7*1000/421622*1000000,$33/$7*1000/421622*1000000,$34/$7*1000/553100*1000000,$35/$7*1000/553100*1000000,$36/$7*1000/332088*1000000,$37/$7*1000/332088*1000000,$38/$7*1000/160641*1000000,$39/$7*1000/160641*1000000, ""}' >D2017_Ab-IgG_RPKM_in_AEs.bed

# Step14: Remove enhancers, which were not detected in any of H3K27ac or H3K27me3 of single cells 1-8.
cat D2017_Ab-IgG_RPKM_in_AEs.bed | awk '{if($8>0 || $10>0 || $12>0 || $14>0 || $16>0 || $18>0 || $20>0 || $22>0 || $24>0 || $26>0 || $28>0 || $30>0 || $32>0 || $34>0 || $36>0 || $38>0) {print}}' >D2018_Ab-IgG_RPKM_in_AEs_detected.bed

# Step15. Convert 0 value to 0.01 in H3K27ac and H3K27me3 to avoid error in the calculation of ratio H3K27ac/H3K27me3.
# The lowest value of H3K27ac (RPKM) excluding 0 is 0.0140724
# The lowest value of H3K27me3 (RPKM) excluding 0 is 0.0109569
# The conversion value 0.01 is determined based on the lowest value of H3K27me3.
sed 's/\t0\t/\t0.01\t/g' D2018_Ab-IgG_RPKM_in_AEs_detected.bed | sed 's/\t0\t/\t0.01\t/g' >D2019_Ab-IgG_RPKM_in_AEs_0converted.bed 

# Step16. Calculate log2(H3K27ac/H3K27me3).
cat D2019_Ab-IgG_RPKM_in_AEs_0converted.bed | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6,$7,log($8/$24)/log(2),log($9/$25)/log(2),log($10/$26)/log(2),log($11/$27)/log(2),log($12/$28)/log(2),log($13/$29)/log(2),log($14/$30)/log(2),log($15/$31)/log(2),log($16/$32)/log(2),log($17/$33)/log(2),log($18/$34)/log(2),log($19/$35)/log(2),log($20/$36)/log(2),log($21/$37)/log(2),log($22/$38)/log(2),log($23/$39)/log(2), ""}' >D2020_Log2_ratio_H3K27ac_H3K27me3_in_AEs.bed

# Step17. Convert a calculation error to 0 value.
# Random Ab-Random IgG sometimes has negative value, which causes an error in log calculation.
# The error returns value nan. Here, the error is converted into 0 value.
sed 's/\tnan\t/\t0\t/g' D2020_Log2_ratio_H3K27ac_H3K27me3_in_AEs.bed | sed 's/\tnan\t/\t0\t/g' >D2021_Log2_ratio_H3K27ac_H3K27me3_in_AEs.bed

# Step18. Extract enhancers, which have positive values in a single cell.
awk '$8>0' D2021_Log2_ratio_H3K27ac_H3K27me3_in_AEs.bed >D2022_SC1_over0_enhancers.bed
awk '$10>0' D2021_Log2_ratio_H3K27ac_H3K27me3_in_AEs.bed >D2022_SC2_over0_enhancers.bed
awk '$12>0' D2021_Log2_ratio_H3K27ac_H3K27me3_in_AEs.bed >D2022_SC3_over0_enhancers.bed
awk '$14>0' D2021_Log2_ratio_H3K27ac_H3K27me3_in_AEs.bed >D2022_SC4_over0_enhancers.bed
awk '$16>0' D2021_Log2_ratio_H3K27ac_H3K27me3_in_AEs.bed >D2022_SC5_over0_enhancers.bed
awk '$18>0' D2021_Log2_ratio_H3K27ac_H3K27me3_in_AEs.bed >D2022_SC6_over0_enhancers.bed
awk '$20>0' D2021_Log2_ratio_H3K27ac_H3K27me3_in_AEs.bed >D2022_SC7_over0_enhancers.bed
awk '$22>0' D2021_Log2_ratio_H3K27ac_H3K27me3_in_AEs.bed >D2022_SC8_over0_enhancers.bed

# Step19. Add a header (column name) to perform the bootstrap statistical test.
cat D2022_SC1_over0_enhancers.bed | sed 1s/^/"Chr\tStart\tEnd\tID\tgene\t4DGenome\tLength\tSC1\tRandSC1\tSC2\tRandSC2\tSC3\tRandSC3\tSC4\tRandSC4\tSC5\tRandSC5\tSC6\tRandSC6\tSC7\tRandSC7\tSC8\tRandSC8\tBulk\tRandBulk\t \n"/ >D2022_a1_SC1_over0_enhancers_w_header.bed
cat D2022_SC2_over0_enhancers.bed | sed 1s/^/"Chr\tStart\tEnd\tID\tgene\t4DGenome\tLength\tSC1\tRandSC1\tSC2\tRandSC2\tSC3\tRandSC3\tSC4\tRandSC4\tSC5\tRandSC5\tSC6\tRandSC6\tSC7\tRandSC7\tSC8\tRandSC8\tBulk\tRandBulk\t \n"/ >D2022_a1_SC2_over0_enhancers_w_header.bed
cat D2022_SC3_over0_enhancers.bed | sed 1s/^/"Chr\tStart\tEnd\tID\tgene\t4DGenome\tLength\tSC1\tRandSC1\tSC2\tRandSC2\tSC3\tRandSC3\tSC4\tRandSC4\tSC5\tRandSC5\tSC6\tRandSC6\tSC7\tRandSC7\tSC8\tRandSC8\tBulk\tRandBulk\t \n"/ >D2022_a1_SC3_over0_enhancers_w_header.bed
cat D2022_SC4_over0_enhancers.bed | sed 1s/^/"Chr\tStart\tEnd\tID\tgene\t4DGenome\tLength\tSC1\tRandSC1\tSC2\tRandSC2\tSC3\tRandSC3\tSC4\tRandSC4\tSC5\tRandSC5\tSC6\tRandSC6\tSC7\tRandSC7\tSC8\tRandSC8\tBulk\tRandBulk\t \n"/ >D2022_a1_SC4_over0_enhancers_w_header.bed
cat D2022_SC5_over0_enhancers.bed | sed 1s/^/"Chr\tStart\tEnd\tID\tgene\t4DGenome\tLength\tSC1\tRandSC1\tSC2\tRandSC2\tSC3\tRandSC3\tSC4\tRandSC4\tSC5\tRandSC5\tSC6\tRandSC6\tSC7\tRandSC7\tSC8\tRandSC8\tBulk\tRandBulk\t \n"/ >D2022_a1_SC5_over0_enhancers_w_header.bed
cat D2022_SC6_over0_enhancers.bed | sed 1s/^/"Chr\tStart\tEnd\tID\tgene\t4DGenome\tLength\tSC1\tRandSC1\tSC2\tRandSC2\tSC3\tRandSC3\tSC4\tRandSC4\tSC5\tRandSC5\tSC6\tRandSC6\tSC7\tRandSC7\tSC8\tRandSC8\tBulk\tRandBulk\t \n"/ >D2022_a1_SC6_over0_enhancers_w_header.bed
cat D2022_SC7_over0_enhancers.bed | sed 1s/^/"Chr\tStart\tEnd\tID\tgene\t4DGenome\tLength\tSC1\tRandSC1\tSC2\tRandSC2\tSC3\tRandSC3\tSC4\tRandSC4\tSC5\tRandSC5\tSC6\tRandSC6\tSC7\tRandSC7\tSC8\tRandSC8\tBulk\tRandBulk\t \n"/ >D2022_a1_SC7_over0_enhancers_w_header.bed
cat D2022_SC8_over0_enhancers.bed | sed 1s/^/"Chr\tStart\tEnd\tID\tgene\t4DGenome\tLength\tSC1\tRandSC1\tSC2\tRandSC2\tSC3\tRandSC3\tSC4\tRandSC4\tSC5\tRandSC5\tSC6\tRandSC6\tSC7\tRandSC7\tSC8\tRandSC8\tBulk\tRandBulk\t \n"/ >D2022_a1_SC8_over0_enhancers_w_header.bed

# Step20. Add the line number to the first column.
cat -n D2022_a1_SC1_over0_enhancers_w_header.bed | awk '!a[$2,$3,$4]++' >D2023_SC1_over0_enhancers_w_header.bed
cat -n D2022_a1_SC2_over0_enhancers_w_header.bed | awk '!a[$2,$3,$4]++' >D2023_SC2_over0_enhancers_w_header.bed
cat -n D2022_a1_SC3_over0_enhancers_w_header.bed | awk '!a[$2,$3,$4]++' >D2023_SC3_over0_enhancers_w_header.bed
cat -n D2022_a1_SC4_over0_enhancers_w_header.bed | awk '!a[$2,$3,$4]++' >D2023_SC4_over0_enhancers_w_header.bed
cat -n D2022_a1_SC5_over0_enhancers_w_header.bed | awk '!a[$2,$3,$4]++' >D2023_SC5_over0_enhancers_w_header.bed
cat -n D2022_a1_SC6_over0_enhancers_w_header.bed | awk '!a[$2,$3,$4]++' >D2023_SC6_over0_enhancers_w_header.bed
cat -n D2022_a1_SC7_over0_enhancers_w_header.bed | awk '!a[$2,$3,$4]++' >D2023_SC7_over0_enhancers_w_header.bed
cat -n D2022_a1_SC8_over0_enhancers_w_header.bed | awk '!a[$2,$3,$4]++' >D2023_SC8_over0_enhancers_w_header.bed

# Step21. Perform the bootstrap statistical test for the random controls.
swarm -f D2023_Boot.swarm --module R/3.5 --time 24:00:00 --partition=ccr,norm -g 240 -t 50
# Inside the file of D2023_Boot.swarm are shown below.
# Rscript D2023_SC1_Rscript_boot.r
# Rscript D2023_SC2_Rscript_boot.r
# Rscript D2023_SC3_Rscript_boot.r
# Rscript D2023_SC4_Rscript_boot.r
# Rscript D2023_SC5_Rscript_boot.r
# Rscript D2023_SC6_Rscript_boot.r
# Rscript D2023_SC7_Rscript_boot.r
# Rscript D2023_SC8_Rscript_boot.r

# Step22. Extract significantly active enhancers compare to the random control.
cat D2022_SC1_over0_enhancers.bed | awk '$8>0' >D2024_SC1_significantlyAEs_in_enhancers.bed
cat D2022_SC2_over0_enhancers.bed | awk '$10>0' >D2024_SC2_significantlyAEs_in_enhancers.bed
cat D2022_SC3_over0_enhancers.bed | awk '$12>6.3523' >D2024_SC3_significantlyAEs_in_enhancers.bed
cat D2022_SC4_over0_enhancers.bed | awk '$14>0' >D2024_SC4_significantlyAEs_in_enhancers.bed
cat D2022_SC5_over0_enhancers.bed | awk '$16>0.8984' >D2024_SC5_significantlyAEs_in_enhancers.bed
cat D2022_SC6_over0_enhancers.bed | awk '$18>0' >D2024_SC6_significantlyAEs_in_enhancers.bed
cat D2022_SC7_over0_enhancers.bed | awk '$20>8.558' >D2024_SC7_significantlyAEs_in_enhancers.bed
cat D2022_SC8_over0_enhancers.bed | awk '$22>0' >D2024_SC8_significantlyAEs_in_enhancers.bed

# Step23: Convert BED files to TDF files.
module load igvtools
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 D2024_SC1_significantlyAEs_in_enhancers.bed e001_0000_SC1_SignificantAEs.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 D2024_SC2_significantlyAEs_in_enhancers.bed e001_0001_SC2_SignificantAEs.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 D2024_SC3_significantlyAEs_in_enhancers.bed e001_0002_SC3_SignificantAEs.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 D2024_SC4_significantlyAEs_in_enhancers.bed e001_0003_SC4_SignificantAEs.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 D2024_SC5_significantlyAEs_in_enhancers.bed e001_0004_SC5_SignificantAEs.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 D2024_SC6_significantlyAEs_in_enhancers.bed e001_0005_SC6_SignificantAEs.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 D2024_SC7_significantlyAEs_in_enhancers.bed e001_0006_SC7_SignificantAEs.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 D2024_SC8_significantlyAEs_in_enhancers.bed e001_0007_SC8_SignificantAEs.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 d003_0000_Med1_SC1_putative_signals_Binary.bed e001_0010_SC1_Med1_putative_signals.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 d003_0001_Med1_SC2_putative_signals_Binary.bed e001_0011_SC2_Med1_putative_signals.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 d003_0002_Med1_SC3_putative_signals_Binary.bed e001_0012_SC3_Med1_putative_signals.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 d003_0003_Med1_SC4_putative_signals_Binary.bed e001_0013_SC4_Med1_putative_signals.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 d003_0004_Med1_SC5_putative_signals_Binary.bed e001_0014_SC5_Med1_putative_signals.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 d003_0005_Med1_SC6_putative_signals_Binary.bed e001_0015_SC6_Med1_putative_signals.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 d003_0006_Med1_SC7_putative_signals_Binary.bed e001_0016_SC7_Med1_putative_signals.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 d003_0007_Med1_SC8_putative_signals_Binary.bed e001_0017_SC8_Med1_putative_signals.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 d003_0008_5hmC_SC1_putative_signals_Binary.bed e001_0020_SC1_5hmC_putative_signals.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 d003_0009_5hmC_SC2_putative_signals_Binary.bed e001_0021_SC2_5hmC_putative_signals.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 d003_0010_5hmC_SC3_putative_signals_Binary.bed e001_0022_SC3_5hmC_putative_signals.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 d003_0011_5hmC_SC4_putative_signals_Binary.bed e001_0023_SC4_5hmC_putative_signals.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 d003_0012_5hmC_SC5_putative_signals_Binary.bed e001_0024_SC5_5hmC_putative_signals.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 d003_0013_5hmC_SC6_putative_signals_Binary.bed e001_0025_SC6_5hmC_putative_signals.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 d003_0014_5hmC_SC7_putative_signals_Binary.bed e001_0026_SC7_5hmC_putative_signals.tdf hg38
igvtools count --maxZoom 5 --windowSize 100 --extFactor 500 d003_0015_5hmC_SC8_putative_signals_Binary.bed e001_0027_SC8_5hmC_putative_signals.tdf hg38
# swarm -f 001_igvtools.swarm --module igvtools --partition=ccr,norm -g 240 -t 50 -b 8

# Step24: Extract K562-cell typical active enhancers detected in a single cell.
cat D2024_SC1_significantlyAEs_in_enhancers.bed | grep "K562" | awk '!a[$1,$2,$3]++' | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6}' >e005_0000_SC1_SignificantlyAEs_K562-typical.bed
cat D2024_SC2_significantlyAEs_in_enhancers.bed | grep "K562" | awk '!a[$1,$2,$3]++' | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6}' >e005_0001_SC2_SignificantlyAEs_K562-typical.bed
cat D2024_SC3_significantlyAEs_in_enhancers.bed | grep "K562" | awk '!a[$1,$2,$3]++' | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6}' >e005_0002_SC3_SignificantlyAEs_K562-typical.bed
cat D2024_SC4_significantlyAEs_in_enhancers.bed | grep "K562" | awk '!a[$1,$2,$3]++' | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6}' >e005_0003_SC4_SignificantlyAEs_K562-typical.bed
cat D2024_SC5_significantlyAEs_in_enhancers.bed | grep "K562" | awk '!a[$1,$2,$3]++' | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6}' >e005_0004_SC5_SignificantlyAEs_K562-typical.bed
cat D2024_SC6_significantlyAEs_in_enhancers.bed | grep "K562" | awk '!a[$1,$2,$3]++' | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6}' >e005_0005_SC6_SignificantlyAEs_K562-typical.bed
cat D2024_SC7_significantlyAEs_in_enhancers.bed | grep "K562" | awk '!a[$1,$2,$3]++' | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6}' >e005_0006_SC7_SignificantlyAEs_K562-typical.bed
cat D2024_SC8_significantlyAEs_in_enhancers.bed | grep "K562" | awk '!a[$1,$2,$3]++' | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6}' >e005_0007_SC8_SignificantlyAEs_K562-typical.bed
