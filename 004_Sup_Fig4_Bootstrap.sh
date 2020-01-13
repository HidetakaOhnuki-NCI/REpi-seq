#!/usr/bin/bash

# Step1: Combine BAM files of 8 single cells derived from anti-Med1, control IgG for anti-Med1, anti-5hmC or control IgG for anti-5hmC.
module load samtools
samtools merge c0000_Unique_reads_SC1-8_Med1.bam a2703_Deduplicated_UMI_Med1_SC1_bc_Med1.bam a2708_Deduplicated_UMI_Med1_SC2_bc_Med1.bam a2713_Deduplicated_UMI_Med1_SC3_bc_Med1.bam a2718_Deduplicated_UMI_Med1_SC4_bc_Med1.bam a2723_Deduplicated_UMI_Med1_SC5_bc_Med1.bam a2728_Deduplicated_UMI_Med1_SC6_bc_Med1.bam a2733_Deduplicated_UMI_Med1_SC7_bc_Med1.bam a2738_Deduplicated_UMI_Med1_SC8_bc_Med1.bam a2807_Deduplicated_UMI_Med1_SC1_bc_Med1.bam a2812_Deduplicated_UMI_Med1_SC2_bc_Med1.bam a2817_Deduplicated_UMI_Med1_SC3_bc_Med1.bam a2822_Deduplicated_UMI_Med1_SC4_bc_Med1.bam a2827_Deduplicated_UMI_Med1_SC5_bc_Med1.bam a2832_Deduplicated_UMI_Med1_SC6_bc_Med1.bam a2837_Deduplicated_UMI_Med1_SC7_bc_Med1.bam a2842_Deduplicated_UMI_Med1_SC8_bc_Med1.bam
samtools merge c0001_Unique_reads_SC1-8_IgG_for_Med1.bam a2767_Deduplicated_UMI_Med1_SC1_bc_IgG.bam a2772_Deduplicated_UMI_Med1_SC2_bc_IgG.bam a2777_Deduplicated_UMI_Med1_SC3_bc_IgG.bam a2782_Deduplicated_UMI_Med1_SC4_bc_IgG.bam a2787_Deduplicated_UMI_Med1_SC5_bc_IgG.bam a2792_Deduplicated_UMI_Med1_SC6_bc_IgG.bam a2797_Deduplicated_UMI_Med1_SC7_bc_IgG.bam a2802_Deduplicated_UMI_Med1_SC8_bc_IgG.bam a2871_Deduplicated_UMI_Med1_SC1_bc_IgG.bam a2876_Deduplicated_UMI_Med1_SC2_bc_IgG.bam a2881_Deduplicated_UMI_Med1_SC3_bc_IgG.bam a2886_Deduplicated_UMI_Med1_SC4_bc_IgG.bam a2891_Deduplicated_UMI_Med1_SC5_bc_IgG.bam a2896_Deduplicated_UMI_Med1_SC6_bc_IgG.bam a2901_Deduplicated_UMI_Med1_SC7_bc_IgG.bam a2906_Deduplicated_UMI_Med1_SC8_bc_IgG.bam
samtools merge c0002_Unique_reads_SC1-8_5hmC.bam a2704_Deduplicated_UMI_5hmC_SC1_bc_5hmC.bam a2709_Deduplicated_UMI_5hmC_SC2_bc_5hmC.bam a2714_Deduplicated_UMI_5hmC_SC3_bc_5hmC.bam a2719_Deduplicated_UMI_5hmC_SC4_bc_5hmC.bam a2724_Deduplicated_UMI_5hmC_SC5_bc_5hmC.bam a2729_Deduplicated_UMI_5hmC_SC6_bc_5hmC.bam a2734_Deduplicated_UMI_5hmC_SC7_bc_5hmC.bam a2739_Deduplicated_UMI_5hmC_SC8_bc_5hmC.bam a2808_Deduplicated_UMI_5hmC_SC1_bc_5hmC.bam a2813_Deduplicated_UMI_5hmC_SC2_bc_5hmC.bam a2818_Deduplicated_UMI_5hmC_SC3_bc_5hmC.bam a2823_Deduplicated_UMI_5hmC_SC4_bc_5hmC.bam a2828_Deduplicated_UMI_5hmC_SC5_bc_5hmC.bam a2833_Deduplicated_UMI_5hmC_SC6_bc_5hmC.bam a2838_Deduplicated_UMI_5hmC_SC7_bc_5hmC.bam a2843_Deduplicated_UMI_5hmC_SC8_bc_5hmC.bam
samtools merge c0003_Unique_reads_SC1-8_IgG_for_5hmC.bam a2768_Deduplicated_UMI_5hmC_SC1_bc_IgG.bam a2773_Deduplicated_UMI_5hmC_SC2_bc_IgG.bam a2778_Deduplicated_UMI_5hmC_SC3_bc_IgG.bam a2783_Deduplicated_UMI_5hmC_SC4_bc_IgG.bam a2788_Deduplicated_UMI_5hmC_SC5_bc_IgG.bam a2793_Deduplicated_UMI_5hmC_SC6_bc_IgG.bam a2798_Deduplicated_UMI_5hmC_SC7_bc_IgG.bam a2803_Deduplicated_UMI_5hmC_SC8_bc_IgG.bam a2872_Deduplicated_UMI_5hmC_SC1_bc_IgG.bam a2877_Deduplicated_UMI_5hmC_SC2_bc_IgG.bam a2882_Deduplicated_UMI_5hmC_SC3_bc_IgG.bam a2887_Deduplicated_UMI_5hmC_SC4_bc_IgG.bam a2892_Deduplicated_UMI_5hmC_SC5_bc_IgG.bam a2897_Deduplicated_UMI_5hmC_SC6_bc_IgG.bam a2902_Deduplicated_UMI_5hmC_SC7_bc_IgG.bam a2907_Deduplicated_UMI_5hmC_SC8_bc_IgG.bam

# Step2: Convert the convined BAM files to BED files.
module load bedtools
bedtools bamtobed -i c0000_Unique_reads_SC1-8_Med1.bam >c0004_Unique_reads_SC1-8_Med1.bed
bedtools bamtobed -i c0001_Unique_reads_SC1-8_IgG_for_Med1.bam >c0005_Unique_reads_SC1-8_IgG_for_Med1.bed
bedtools bamtobed -i c0002_Unique_reads_SC1-8_5hmC.bam >c0006_Unique_reads_SC1-8_5hmC.bed
bedtools bamtobed -i c0003_Unique_reads_SC1-8_IgG_for_5hmC.bam >c0007_Unique_reads_SC1-8_IgG_for_5hmC.bed

# Step3: Generate randomized controls.
bedtools shuffle -i c0004_Unique_reads_SC1-8_Med1.bed -g GRCh38.genome >c0008_Randomized_reads_SC1-8_Med1.bed
bedtools shuffle -i c0005_Unique_reads_SC1-8_IgG_for_Med1.bed -g GRCh38.genome >c0009_Randomized_reads_SC1-8_IgG_for_Med1.bed
bedtools shuffle -i c0006_Unique_reads_SC1-8_5hmC.bed -g GRCh38.genome >c0010_Randomized_reads_SC1-8_5hmC.bed
bedtools shuffle -i c0007_Unique_reads_SC1-8_IgG_for_5hmC.bed -g GRCh38.genome >c0011_Randomized_reads_SC1-8_IgG_for_5hmC.bed

# Step4: Generate genome bins, 500bp bin sliding 250 bp.
bedtools makewindows -g GRCh38.genome -w 500 -s 250 >c0100_Genome_bin_500bp_250bp_sliding_GRCh38.bed

# Step5: Count reads in the bins.
bedtools intersect -a c0100_Genome_bin_500bp_250bp_sliding_GRCh38.bed -b c0004_Unique_reads_SC1-8_Med1.bed -c >b600.bed
bedtools intersect -a b600.bed -b c0005_Unique_reads_SC1-8_IgG_for_Med1.bed -c >b601.bed
bedtools intersect -a b601.bed -b c0008_Randomized_reads_SC1-8_Med1.bed -c >b602.bed
bedtools intersect -a b602.bed -b c0009_Randomized_reads_SC1-8_IgG_for_Med1.bed -c >b603_Med1_IgG_counts_in_bins.bed

bedtools intersect -a c0100_Genome_bin_500bp_250bp_sliding_GRCh38.bed -b c0006_Unique_reads_SC1-8_5hmC.bed -c >b800.bed
bedtools intersect -a b800.bed -b c0007_Unique_reads_SC1-8_IgG_for_5hmC.bed -c >b801.bed
bedtools intersect -a b801.bed -b c0010_Randomized_reads_SC1-8_5hmC.bed -c >b802.bed
bedtools intersect -a b802.bed -b c0011_Randomized_reads_SC1-8_IgG_for_5hmC.bed -c >b803_5hmC_IgG_counts_in_bins.bed

# Step6: Remove genomic bins, which do not contain single-cell reads.
cat b603_Med1_IgG_counts_in_bins.bed | awk '$4>0' >c017_Med1_IgG_counts_in_bins.bed
cat b803_5hmC_IgG_counts_in_bins.bed | awk '$4>0' >c019_5hmC_IgG_counts_in_bins.bed

# Step7: Calculate Ab-IgG, Ab-Random IgG, Random Ab-IgG and Random Ab-Random IgG in each bin.
cat c017_Med1_IgG_counts_in_bins.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $4-$5, $4-$7, $6-$5, $6-$7}' >c066_Med1_Delta_IgG.bed
cat c019_5hmC_IgG_counts_in_bins.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $4-$5, $4-$7, $6-$5, $6-$7}' >c068_5hmC_Delta_IgG.bed

# Step8: Add a header to the BED files for the following bootstrap test.
cat c066_Med1_Delta_IgG.bed | sed 1s/^/"Chr\tStart\tEnd\tAb\tIgG\tRandAb\tRandIgG\tAbDIgG\tAbDRandIgG\tRandAbDIgG\tRandAbDRandIgG\n"/  >c116_Med1_Delta_IgG_header.bed
cat c068_5hmC_Delta_IgG.bed | sed 1s/^/"Chr\tStart\tEnd\tAb\tIgG\tRandAb\tRandIgG\tAbDIgG\tAbDRandIgG\tRandAbDIgG\tRandAbDRandIgG\n"/  >c118_5hmC_Delta_IgG_header.bed

# Step9: Make directories for bootstrap test.
mkdir c116_Med1_Delta_IgG_SC1-8
mkdir c118_5hmC_Delta_IgG_SC1-8

# Step10: Copy the BED files into the directories with unified file name.
cp c116_Med1_Delta_IgG_header.bed c116_Med1_Delta_IgG_SC1-8/Input.bed
cp c118_5hmC_Delta_IgG_header.bed c118_5hmC_Delta_IgG_SC1-8/Input.bed

# Step11: Copy a R script file of bootstrap test into the directories.
cp c200_Rscript_boot.r c116_Med1_Delta_IgG_SC1-8/c200_Rscript_boot.r
cp c200_Rscript_boot.r c118_5hmC_Delta_IgG_SC1-8/c200_Rscript_boot.r

# Step12: Adjust bin number to 200,000 bins for bootstrap test.
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c116_Med1_Delta_IgG_SC1-8 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c118_5hmC_Delta_IgG_SC1-8 ; head -n 200000 Input.bed >Input_200000L.bed

# Step13: Run swarm command for excuting Rscript in each directory.
swarm -f c300_Swarm_Rscript_boot.swarm --module R/3.5 --time 24:00:00 --partition=ccr,norm -g 240 -t 50 

# Step14: Extract putative signal regions using upper side of 99.9% confidence interval determined by bootstrap test.
cat c116_Med1_Delta_IgG_header.bed | awk '$8>1' >C416_Med1_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed
cat c118_5hmC_Delta_IgG_header.bed | awk '$8>5' >C418_5hmC_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed

# Step15: Count reads of individual cells derived from anti-Med1 or IgG in the putative signal regions.
bedtools intersect -a C416_Med1_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed -b a073_Unique_reads_SC1_Med1.bam -c >C700.bed
bedtools intersect -a C700.bed -b a074_Unique_reads_SC2_Med1.bam -c >C701.bed
bedtools intersect -a C701.bed -b a075_Unique_reads_SC3_Med1.bam -c >C702.bed
bedtools intersect -a C702.bed -b a076_Unique_reads_SC4_Med1.bam -c >C703.bed
bedtools intersect -a C703.bed -b a077_Unique_reads_SC5_Med1.bam -c >C704.bed
bedtools intersect -a C704.bed -b a078_Unique_reads_SC6_Med1.bam -c >C705.bed
bedtools intersect -a C705.bed -b a079_Unique_reads_SC7_Med1.bam -c >C706.bed
bedtools intersect -a C706.bed -b a080_Unique_reads_SC8_Med1.bam -c >C707.bed
bedtools intersect -a C707.bed -b a089_Unique_reads_SC1_IgG_for_Med1.bam -c >C708.bed
bedtools intersect -a C708.bed -b a090_Unique_reads_SC2_IgG_for_Med1.bam -c >C709.bed
bedtools intersect -a C709.bed -b a091_Unique_reads_SC3_IgG_for_Med1.bam -c >C710.bed
bedtools intersect -a C710.bed -b a092_Unique_reads_SC4_IgG_for_Med1.bam -c >C711.bed
bedtools intersect -a C711.bed -b a093_Unique_reads_SC5_IgG_for_Med1.bam -c >C712.bed
bedtools intersect -a C712.bed -b a094_Unique_reads_SC6_IgG_for_Med1.bam -c >C713.bed
bedtools intersect -a C713.bed -b a095_Unique_reads_SC7_IgG_for_Med1.bam -c >C714.bed
bedtools intersect -a C714.bed -b a096_Unique_reads_SC8_IgG_for_Med1.bam -c >C715_Med1_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed

# Step16: Count reads of individual cells derived from anti-5hmC or IgG in the putative signal regions.
bedtools intersect -a C418_5hmC_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed -b a097_Unique_reads_SC1_5hmC.bam -c >C764.bed
bedtools intersect -a C764.bed -b a098_Unique_reads_SC2_5hmC.bam -c >C765.bed
bedtools intersect -a C765.bed -b a099_Unique_reads_SC3_5hmC.bam -c >C766.bed
bedtools intersect -a C766.bed -b a100_Unique_reads_SC4_5hmC.bam -c >C767.bed
bedtools intersect -a C767.bed -b a101_Unique_reads_SC5_5hmC.bam -c >C768.bed
bedtools intersect -a C768.bed -b a102_Unique_reads_SC6_5hmC.bam -c >C769.bed
bedtools intersect -a C769.bed -b a103_Unique_reads_SC7_5hmC.bam -c >C770.bed
bedtools intersect -a C770.bed -b a104_Unique_reads_SC8_5hmC.bam -c >C771.bed
bedtools intersect -a C771.bed -b a105_Unique_reads_SC1_IgG_for_5hmC.bam -c >C772.bed
bedtools intersect -a C772.bed -b a106_Unique_reads_SC2_IgG_for_5hmC.bam -c >C773.bed
bedtools intersect -a C773.bed -b a107_Unique_reads_SC3_IgG_for_5hmC.bam -c >C774.bed
bedtools intersect -a C774.bed -b a108_Unique_reads_SC4_IgG_for_5hmC.bam -c >C775.bed
bedtools intersect -a C775.bed -b a109_Unique_reads_SC5_IgG_for_5hmC.bam -c >C776.bed
bedtools intersect -a C776.bed -b a110_Unique_reads_SC6_IgG_for_5hmC.bam -c >C777.bed
bedtools intersect -a C777.bed -b a111_Unique_reads_SC7_IgG_for_5hmC.bam -c >C778.bed
bedtools intersect -a C778.bed -b a112_Unique_reads_SC8_IgG_for_5hmC.bam -c >C779_5hmC_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed

# Step17: Calculate difference between antibody and control IgG in each putative signal region.
cat C715_Med1_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12-$20, $13-$21, $14-$22, $15-$23, $16-$24, $17-$25, $18-$26, $19-$27}' >C800_Med1_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed
cat C779_5hmC_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12-$20, $13-$21, $14-$22, $15-$23, $16-$24, $17-$25, $18-$26, $19-$27}' >C804_5hmC_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed

# Step18: Calculate total number of putative signals in each single cell.
cat C800_Med1_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk  '{a += $12; b += $13; c += $14; d += $15; e += $16; f += $17; g += $18; h += $19} END {print a, b, c, d, e, f, g, h}' >C900_Med1_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.txt
cat C804_5hmC_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk  '{a += $12; b += $13; c += $14; d += $15; e += $16; f += $17; g += $18; h += $19} END {print a, b, c, d, e, f, g, h}' >C904_5hmC_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.txt

# Step19: Extract putative signals of each cell.
cat C800_Med1_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk '$12>0' >D001_Med1_putative_signal_regions_SC1.bed
cat C800_Med1_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk '$13>0' >D002_Med1_putative_signal_regions_SC2.bed
cat C800_Med1_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk '$14>0' >D003_Med1_putative_signal_regions_SC3.bed
cat C800_Med1_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk '$15>0' >D004_Med1_putative_signal_regions_SC4.bed
cat C800_Med1_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk '$16>0' >D005_Med1_putative_signal_regions_SC5.bed
cat C800_Med1_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk '$17>0' >D006_Med1_putative_signal_regions_SC6.bed
cat C800_Med1_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk '$18>0' >D007_Med1_putative_signal_regions_SC7.bed
cat C800_Med1_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk '$19>0' >D008_Med1_putative_signal_regions_SC8.bed
cat C804_5hmC_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk '$12>0' >D017_5hmC_putative_signal_regions_SC1.bed
cat C804_5hmC_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk '$13>0' >D018_5hmC_putative_signal_regions_SC2.bed
cat C804_5hmC_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk '$14>0' >D019_5hmC_putative_signal_regions_SC3.bed
cat C804_5hmC_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk '$15>0' >D020_5hmC_putative_signal_regions_SC4.bed
cat C804_5hmC_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk '$16>0' >D021_5hmC_putative_signal_regions_SC5.bed
cat C804_5hmC_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk '$17>0' >D022_5hmC_putative_signal_regions_SC6.bed
cat C804_5hmC_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk '$18>0' >D023_5hmC_putative_signal_regions_SC7.bed
cat C804_5hmC_Delta_IgG_SC1-8_PutativeSignalReads_CI0.99.bed | awk '$19>0' >D024_5hmC_putative_signal_regions_SC8.bed

# Summarize number of signal regions in each cell.
find -name 'D0*_putative_signal_regions_SC*.bed' -exec wc -l {} \; >D050_Summary_region_number_of_putative_signals.csv
