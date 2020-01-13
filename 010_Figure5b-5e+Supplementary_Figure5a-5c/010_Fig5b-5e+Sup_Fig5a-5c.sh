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

# Step4: Convert BED files to TDF files.
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

# Step5: Extract K562-cell typical active enhancers detected in a single cell.
cat D2024_SC1_significantlyAEs_in_enhancers.bed | grep "K562" | awk '!a[$1,$2,$3]++' | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6}' >e005_0000_SC1_SignificantlyAEs_K562-typical.bed
cat D2024_SC2_significantlyAEs_in_enhancers.bed | grep "K562" | awk '!a[$1,$2,$3]++' | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6}' >e005_0001_SC2_SignificantlyAEs_K562-typical.bed
cat D2024_SC3_significantlyAEs_in_enhancers.bed | grep "K562" | awk '!a[$1,$2,$3]++' | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6}' >e005_0002_SC3_SignificantlyAEs_K562-typical.bed
cat D2024_SC4_significantlyAEs_in_enhancers.bed | grep "K562" | awk '!a[$1,$2,$3]++' | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6}' >e005_0003_SC4_SignificantlyAEs_K562-typical.bed
cat D2024_SC5_significantlyAEs_in_enhancers.bed | grep "K562" | awk '!a[$1,$2,$3]++' | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6}' >e005_0004_SC5_SignificantlyAEs_K562-typical.bed
cat D2024_SC6_significantlyAEs_in_enhancers.bed | grep "K562" | awk '!a[$1,$2,$3]++' | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6}' >e005_0005_SC6_SignificantlyAEs_K562-typical.bed
cat D2024_SC7_significantlyAEs_in_enhancers.bed | grep "K562" | awk '!a[$1,$2,$3]++' | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6}' >e005_0006_SC7_SignificantlyAEs_K562-typical.bed
cat D2024_SC8_significantlyAEs_in_enhancers.bed | grep "K562" | awk '!a[$1,$2,$3]++' | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6}' >e005_0007_SC8_SignificantlyAEs_K562-typical.bed
