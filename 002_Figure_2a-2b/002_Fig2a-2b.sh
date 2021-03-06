#!/usr/bin/bash

# Step1: Combine BAM files of 8 single cells in each experiment (1st, 2nd and 3rd experiment).
# The following commands were executed on NIH high-performance computer, Biowulf as parallel jobs.
module load samtools
samtools merge a3000_UniqueR_1stExp_SC1-8_bc_H3K27ac.bam a2700_Deduplicated_UMI_1stExp_SC1_bc_H3K27ac.bam a2705_Deduplicated_UMI_1stExp_SC2_bc_H3K27ac.bam a2710_Deduplicated_UMI_1stExp_SC3_bc_H3K27ac.bam a2715_Deduplicated_UMI_1stExp_SC4_bc_H3K27ac.bam a2720_Deduplicated_UMI_1stExp_SC5_bc_H3K27ac.bam a2725_Deduplicated_UMI_1stExp_SC6_bc_H3K27ac.bam a2730_Deduplicated_UMI_1stExp_SC7_bc_H3K27ac.bam a2735_Deduplicated_UMI_1stExp_SC8_bc_H3K27ac.bam
samtools merge a3001_UniqueR_2ndExp_SC1-8_bc_H3K27ac.bam a2701_Deduplicated_UMI_2ndExp_SC1_bc_H3K27ac.bam a2706_Deduplicated_UMI_2ndExp_SC2_bc_H3K27ac.bam a2711_Deduplicated_UMI_2ndExp_SC3_bc_H3K27ac.bam a2716_Deduplicated_UMI_2ndExp_SC4_bc_H3K27ac.bam a2721_Deduplicated_UMI_2ndExp_SC5_bc_H3K27ac.bam a2726_Deduplicated_UMI_2ndExp_SC6_bc_H3K27ac.bam a2731_Deduplicated_UMI_2ndExp_SC7_bc_H3K27ac.bam a2736_Deduplicated_UMI_2ndExp_SC8_bc_H3K27ac.bam
samtools merge a3002_UniqueR_3rdExp_SC1-8_bc_H3K27ac.bam a2702_Deduplicated_UMI_3rdExp_SC1_bc_H3K27ac.bam a2707_Deduplicated_UMI_3rdExp_SC2_bc_H3K27ac.bam a2712_Deduplicated_UMI_3rdExp_SC3_bc_H3K27ac.bam a2717_Deduplicated_UMI_3rdExp_SC4_bc_H3K27ac.bam a2722_Deduplicated_UMI_3rdExp_SC5_bc_H3K27ac.bam a2727_Deduplicated_UMI_3rdExp_SC6_bc_H3K27ac.bam a2732_Deduplicated_UMI_3rdExp_SC7_bc_H3K27ac.bam a2737_Deduplicated_UMI_3rdExp_SC8_bc_H3K27ac.bam
samtools merge a3003_UniqueR_1stExp_SC1-8_bc_H3K27me3.bam a2740_Deduplicated_UMI_1stExp_SC1_bc_H3K27me3.bam a2743_Deduplicated_UMI_1stExp_SC2_bc_H3K27me3.bam a2746_Deduplicated_UMI_1stExp_SC3_bc_H3K27me3.bam a2749_Deduplicated_UMI_1stExp_SC4_bc_H3K27me3.bam a2752_Deduplicated_UMI_1stExp_SC5_bc_H3K27me3.bam a2755_Deduplicated_UMI_1stExp_SC6_bc_H3K27me3.bam a2758_Deduplicated_UMI_1stExp_SC7_bc_H3K27me3.bam a2761_Deduplicated_UMI_1stExp_SC8_bc_H3K27me3.bam
samtools merge a3004_UniqueR_2ndExp_SC1-8_bc_H3K27me3.bam a2741_Deduplicated_UMI_2ndExp_SC1_bc_H3K27me3.bam a2744_Deduplicated_UMI_2ndExp_SC2_bc_H3K27me3.bam a2747_Deduplicated_UMI_2ndExp_SC3_bc_H3K27me3.bam a2750_Deduplicated_UMI_2ndExp_SC4_bc_H3K27me3.bam a2753_Deduplicated_UMI_2ndExp_SC5_bc_H3K27me3.bam a2756_Deduplicated_UMI_2ndExp_SC6_bc_H3K27me3.bam a2759_Deduplicated_UMI_2ndExp_SC7_bc_H3K27me3.bam a2762_Deduplicated_UMI_2ndExp_SC8_bc_H3K27me3.bam
samtools merge a3005_UniqueR_3rdExp_SC1-8_bc_H3K27me3.bam a2742_Deduplicated_UMI_3rdExp_SC1_bc_H3K27me3.bam a2745_Deduplicated_UMI_3rdExp_SC2_bc_H3K27me3.bam a2748_Deduplicated_UMI_3rdExp_SC3_bc_H3K27me3.bam a2751_Deduplicated_UMI_3rdExp_SC4_bc_H3K27me3.bam a2754_Deduplicated_UMI_3rdExp_SC5_bc_H3K27me3.bam a2757_Deduplicated_UMI_3rdExp_SC6_bc_H3K27me3.bam a2760_Deduplicated_UMI_3rdExp_SC7_bc_H3K27me3.bam a2763_Deduplicated_UMI_3rdExp_SC8_bc_H3K27me3.bam
samtools merge a3006_UniqueR_1stExp_SC1-8_bc_H3K27ac.bam a2804_Deduplicated_UMI_1stExp_SC1_bc_H3K27ac.bam a2809_Deduplicated_UMI_1stExp_SC2_bc_H3K27ac.bam a2814_Deduplicated_UMI_1stExp_SC3_bc_H3K27ac.bam a2819_Deduplicated_UMI_1stExp_SC4_bc_H3K27ac.bam a2824_Deduplicated_UMI_1stExp_SC5_bc_H3K27ac.bam a2829_Deduplicated_UMI_1stExp_SC6_bc_H3K27ac.bam a2834_Deduplicated_UMI_1stExp_SC7_bc_H3K27ac.bam a2839_Deduplicated_UMI_1stExp_SC8_bc_H3K27ac.bam
samtools merge a3007_UniqueR_2ndExp_SC1-8_bc_H3K27ac.bam a2805_Deduplicated_UMI_2ndExp_SC1_bc_H3K27ac.bam a2810_Deduplicated_UMI_2ndExp_SC2_bc_H3K27ac.bam a2815_Deduplicated_UMI_2ndExp_SC3_bc_H3K27ac.bam a2820_Deduplicated_UMI_2ndExp_SC4_bc_H3K27ac.bam a2825_Deduplicated_UMI_2ndExp_SC5_bc_H3K27ac.bam a2830_Deduplicated_UMI_2ndExp_SC6_bc_H3K27ac.bam a2835_Deduplicated_UMI_2ndExp_SC7_bc_H3K27ac.bam a2840_Deduplicated_UMI_2ndExp_SC8_bc_H3K27ac.bam
samtools merge a3008_UniqueR_3rdExp_SC1-8_bc_H3K27ac.bam a2806_Deduplicated_UMI_3rdExp_SC1_bc_H3K27ac.bam a2811_Deduplicated_UMI_3rdExp_SC2_bc_H3K27ac.bam a2816_Deduplicated_UMI_3rdExp_SC3_bc_H3K27ac.bam a2821_Deduplicated_UMI_3rdExp_SC4_bc_H3K27ac.bam a2826_Deduplicated_UMI_3rdExp_SC5_bc_H3K27ac.bam a2831_Deduplicated_UMI_3rdExp_SC6_bc_H3K27ac.bam a2836_Deduplicated_UMI_3rdExp_SC7_bc_H3K27ac.bam a2841_Deduplicated_UMI_3rdExp_SC8_bc_H3K27ac.bam
samtools merge a3009_UniqueR_1stExp_SC1-8_bc_H3K27me3.bam a2844_Deduplicated_UMI_1stExp_SC1_bc_H3K27me3.bam a2847_Deduplicated_UMI_1stExp_SC2_bc_H3K27me3.bam a2850_Deduplicated_UMI_1stExp_SC3_bc_H3K27me3.bam a2853_Deduplicated_UMI_1stExp_SC4_bc_H3K27me3.bam a2856_Deduplicated_UMI_1stExp_SC5_bc_H3K27me3.bam a2859_Deduplicated_UMI_1stExp_SC6_bc_H3K27me3.bam a2862_Deduplicated_UMI_1stExp_SC7_bc_H3K27me3.bam a2865_Deduplicated_UMI_1stExp_SC8_bc_H3K27me3.bam
samtools merge a3010_UniqueR_2ndExp_SC1-8_bc_H3K27me3.bam a2845_Deduplicated_UMI_2ndExp_SC1_bc_H3K27me3.bam a2848_Deduplicated_UMI_2ndExp_SC2_bc_H3K27me3.bam a2851_Deduplicated_UMI_2ndExp_SC3_bc_H3K27me3.bam a2854_Deduplicated_UMI_2ndExp_SC4_bc_H3K27me3.bam a2857_Deduplicated_UMI_2ndExp_SC5_bc_H3K27me3.bam a2860_Deduplicated_UMI_2ndExp_SC6_bc_H3K27me3.bam a2863_Deduplicated_UMI_2ndExp_SC7_bc_H3K27me3.bam a2866_Deduplicated_UMI_2ndExp_SC8_bc_H3K27me3.bam
samtools merge a3011_UniqueR_3rdExp_SC1-8_bc_H3K27me3.bam a2846_Deduplicated_UMI_3rdExp_SC1_bc_H3K27me3.bam a2849_Deduplicated_UMI_3rdExp_SC2_bc_H3K27me3.bam a2852_Deduplicated_UMI_3rdExp_SC3_bc_H3K27me3.bam a2855_Deduplicated_UMI_3rdExp_SC4_bc_H3K27me3.bam a2858_Deduplicated_UMI_3rdExp_SC5_bc_H3K27me3.bam a2861_Deduplicated_UMI_3rdExp_SC6_bc_H3K27me3.bam a2864_Deduplicated_UMI_3rdExp_SC7_bc_H3K27me3.bam a2867_Deduplicated_UMI_3rdExp_SC8_bc_H3K27me3.bam
 
samtools merge a3012_UniqueR_1stExp_SC1-8_bc_H3K27ac.bam a3000_UniqueR_1stExp_SC1-8_bc_H3K27ac.bam a3006_UniqueR_1stExp_SC1-8_bc_H3K27ac.bam
samtools merge a3013_UniqueR_2ndExp_SC1-8_bc_H3K27ac.bam a3001_UniqueR_2ndExp_SC1-8_bc_H3K27ac.bam a3007_UniqueR_2ndExp_SC1-8_bc_H3K27ac.bam
samtools merge a3014_UniqueR_3rdExp_SC1-8_bc_H3K27ac.bam a3002_UniqueR_3rdExp_SC1-8_bc_H3K27ac.bam a3008_UniqueR_3rdExp_SC1-8_bc_H3K27ac.bam
samtools merge a3015_UniqueR_1stExp_SC1-8_bc_H3K27me3.bam a3003_UniqueR_1stExp_SC1-8_bc_H3K27me3.bam a3009_UniqueR_1stExp_SC1-8_bc_H3K27me3.bam
samtools merge a3016_UniqueR_2ndExp_SC1-8_bc_H3K27me3.bam a3004_UniqueR_2ndExp_SC1-8_bc_H3K27me3.bam a3010_UniqueR_2ndExp_SC1-8_bc_H3K27me3.bam
samtools merge a3017_UniqueR_3rdExp_SC1-8_bc_H3K27me3.bam a3005_UniqueR_3rdExp_SC1-8_bc_H3K27me3.bam a3011_UniqueR_3rdExp_SC1-8_bc_H3K27me3.bam

# Step2: Convert the combined BAM files to Tag directories.
# The following commands were executed on NIH high-performance computer, Biowulf as parallel jobs.
module load homer
makeTagDirectory ./a3012_UniqueR_1stExp_SC1-8_bc_H3K27ac_tag/ a3012_UniqueR_1stExp_SC1-8_bc_H3K27ac.bam
makeTagDirectory ./a3013_UniqueR_2ndExp_SC1-8_bc_H3K27ac_tag/ a3013_UniqueR_2ndExp_SC1-8_bc_H3K27ac.bam
makeTagDirectory ./a3014_UniqueR_3rdExp_SC1-8_bc_H3K27ac_tag/ a3014_UniqueR_3rdExp_SC1-8_bc_H3K27ac.bam
makeTagDirectory ./a3015_UniqueR_1stExp_SC1-8_bc_H3K27me3_tag/ a3015_UniqueR_1stExp_SC1-8_bc_H3K27me3.bam
makeTagDirectory ./a3016_UniqueR_2ndExp_SC1-8_bc_H3K27me3_tag/ a3016_UniqueR_2ndExp_SC1-8_bc_H3K27me3.bam
makeTagDirectory ./a3017_UniqueR_3rdExp_SC1-8_bc_H3K27me3_tag/ a3017_UniqueR_3rdExp_SC1-8_bc_H3K27me3.bam

# Step3: Convert BAM files of 1st experiments to BED files.
# The following commands were executed on NIH high-performance computer, Biowulf as parallel jobs.
bedtools bamtobed -i a3012_UniqueR_1stExp_SC1-8_bc_H3K27ac.bam >a3050_UniqueR_1stExp_SC1-8_bc_H3K27ac.bed
bedtools bamtobed -i a3015_UniqueR_1stExp_SC1-8_bc_H3K27me3.bam >a3051_UniqueR_1stExp_SC1-8_bc_H3K27me3.bed

# Step4: Copy the BED file of 1st experiments to each Tag directory.
cp a3050_UniqueR_1stExp_SC1-8_bc_H3K27ac.bed ./a3012_UniqueR_1stExp_SC1-8_bc_H3K27ac_tag/ 
cd a3050_UniqueR_1stExp_SC1-8_bc_H3K27ac.bed ./a3013_UniqueR_2ndExp_SC1-8_bc_H3K27ac_tag/ 
cd a3050_UniqueR_1stExp_SC1-8_bc_H3K27ac.bed ./a3014_UniqueR_3rdExp_SC1-8_bc_H3K27ac_tag/ 
cd a3051_UniqueR_1stExp_SC1-8_bc_H3K27me3.bed ./a3015_UniqueR_1stExp_SC1-8_bc_H3K27me3_tag/ 
cd a3051_UniqueR_1stExp_SC1-8_bc_H3K27me3.bed ./a3016_UniqueR_2ndExp_SC1-8_bc_H3K27me3_tag/ 
cd a3051_UniqueR_1stExp_SC1-8_bc_H3K27me3.bed ./a3017_UniqueR_3rdExp_SC1-8_bc_H3K27me3_tag/ 

# Step5: Calculate distribution patterns of reads of 1st, 2nd and 3rd experiments in signal regions of 1st experiments.
cd ./a3012_UniqueR_1stExp_SC1-8_bc_H3K27ac_tag/ ; annotatePeaks.pl a3050_UniqueR_1stExp_SC1-8_bc_H3K27ac.bed hg38 -size 1000 -hist 10 -d ./a3012_UniqueR_1stExp_SC1-8_bc_H3K27ac_tag/ >a3100_UniqueR_1stExp_SC1-8_bc_H3K27ac_PeakPattern_10k_10bp_res.txt
cd ./a3013_UniqueR_2ndExp_SC1-8_bc_H3K27ac_tag/ ; annotatePeaks.pl a3050_UniqueR_1stExp_SC1-8_bc_H3K27ac.bed hg38 -size 1000 -hist 10 -d ./a3013_UniqueR_2ndExp_SC1-8_bc_H3K27ac_tag/ >a3101_UniqueR_2ndExp_SC1-8_bc_H3K27ac_PeakPattern_10k_10bp_res.txt
cd ./a3014_UniqueR_3rdExp_SC1-8_bc_H3K27ac_tag/ ; annotatePeaks.pl a3050_UniqueR_1stExp_SC1-8_bc_H3K27ac.bed hg38 -size 1000 -hist 10 -d ./a3014_UniqueR_3rdExp_SC1-8_bc_H3K27ac_tag/ >a3102_UniqueR_3rdExp_SC1-8_bc_H3K27ac_PeakPattern_10k_10bp_res.txt
cd ./a3015_UniqueR_1stExp_SC1-8_bc_H3K27me3_tag/ ; annotatePeaks.pl a3051_UniqueR_1stExp_SC1-8_bc_H3K27me3.bed hg38 -size 1000 -hist 10 -d ./a3015_UniqueR_1stExp_SC1-8_bc_H3K27me3_tag/ >a3103_UniqueR_1stExp_SC1-8_bc_H3K27me3_PeakPattern_10k_10bp_res.txt
cd ./a3016_UniqueR_2ndExp_SC1-8_bc_H3K27me3_tag/ ; annotatePeaks.pl a3051_UniqueR_1stExp_SC1-8_bc_H3K27me3.bed hg38 -size 1000 -hist 10 -d ./a3016_UniqueR_2ndExp_SC1-8_bc_H3K27me3_tag/ >a3104_UniqueR_2ndExp_SC1-8_bc_H3K27me3_PeakPattern_10k_10bp_res.txt
cd ./a3017_UniqueR_3rdExp_SC1-8_bc_H3K27me3_tag/ ; annotatePeaks.pl a3051_UniqueR_1stExp_SC1-8_bc_H3K27me3.bed hg38 -size 1000 -hist 10 -d ./a3017_UniqueR_3rdExp_SC1-8_bc_H3K27me3_tag/ >a3105_UniqueR_3rdExp_SC1-8_bc_H3K27me3_PeakPattern_10k_10bp_res.txt
