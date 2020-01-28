#!/usr/bin/bash

# Step1: Combine BAM files of 1st, 2nd and 3rd experiments derived from the same single cell.
module load samtools
samtools merge a4001_uniqueR_Rep1-3_SC1_H3K27ac.bam a2700_Deduplicated_UMI_1stExp_SC1_bc_H3K27ac.bam a2701_Deduplicated_UMI_2ndExp_SC1_bc_H3K27ac.bam a2702_Deduplicated_UMI_3rdExp_SC1_bc_H3K27ac.bam a2804_Deduplicated_UMI_1stExp_SC1_bc_H3K27ac.bam a2805_Deduplicated_UMI_2ndExp_SC1_bc_H3K27ac.bam a2806_Deduplicated_UMI_3rdExp_SC1_bc_H3K27ac.bam
samtools merge a4002_uniqueR_Rep1-3_SC2_H3K27ac.bam a2705_Deduplicated_UMI_1stExp_SC2_bc_H3K27ac.bam a2706_Deduplicated_UMI_2ndExp_SC2_bc_H3K27ac.bam a2707_Deduplicated_UMI_3rdExp_SC2_bc_H3K27ac.bam a2809_Deduplicated_UMI_1stExp_SC2_bc_H3K27ac.bam a2810_Deduplicated_UMI_2ndExp_SC2_bc_H3K27ac.bam a2811_Deduplicated_UMI_3rdExp_SC2_bc_H3K27ac.bam
samtools merge a4003_uniqueR_Rep1-3_SC3_H3K27ac.bam a2710_Deduplicated_UMI_1stExp_SC3_bc_H3K27ac.bam a2711_Deduplicated_UMI_2ndExp_SC3_bc_H3K27ac.bam a2712_Deduplicated_UMI_3rdExp_SC3_bc_H3K27ac.bam a2814_Deduplicated_UMI_1stExp_SC3_bc_H3K27ac.bam a2815_Deduplicated_UMI_2ndExp_SC3_bc_H3K27ac.bam a2816_Deduplicated_UMI_3rdExp_SC3_bc_H3K27ac.bam
samtools merge a4004_uniqueR_Rep1-3_SC4_H3K27ac.bam a2715_Deduplicated_UMI_1stExp_SC4_bc_H3K27ac.bam a2716_Deduplicated_UMI_2ndExp_SC4_bc_H3K27ac.bam a2717_Deduplicated_UMI_3rdExp_SC4_bc_H3K27ac.bam a2819_Deduplicated_UMI_1stExp_SC4_bc_H3K27ac.bam a2820_Deduplicated_UMI_2ndExp_SC4_bc_H3K27ac.bam a2821_Deduplicated_UMI_3rdExp_SC4_bc_H3K27ac.bam
samtools merge a4005_uniqueR_Rep1-3_SC5_H3K27ac.bam a2720_Deduplicated_UMI_1stExp_SC5_bc_H3K27ac.bam a2721_Deduplicated_UMI_2ndExp_SC5_bc_H3K27ac.bam a2722_Deduplicated_UMI_3rdExp_SC5_bc_H3K27ac.bam a2824_Deduplicated_UMI_1stExp_SC5_bc_H3K27ac.bam a2825_Deduplicated_UMI_2ndExp_SC5_bc_H3K27ac.bam a2826_Deduplicated_UMI_3rdExp_SC5_bc_H3K27ac.bam
samtools merge a4006_uniqueR_Rep1-3_SC6_H3K27ac.bam a2725_Deduplicated_UMI_1stExp_SC6_bc_H3K27ac.bam a2726_Deduplicated_UMI_2ndExp_SC6_bc_H3K27ac.bam a2727_Deduplicated_UMI_3rdExp_SC6_bc_H3K27ac.bam a2829_Deduplicated_UMI_1stExp_SC6_bc_H3K27ac.bam a2830_Deduplicated_UMI_2ndExp_SC6_bc_H3K27ac.bam a2831_Deduplicated_UMI_3rdExp_SC6_bc_H3K27ac.bam
samtools merge a4007_uniqueR_Rep1-3_SC7_H3K27ac.bam a2730_Deduplicated_UMI_1stExp_SC7_bc_H3K27ac.bam a2731_Deduplicated_UMI_2ndExp_SC7_bc_H3K27ac.bam a2732_Deduplicated_UMI_3rdExp_SC7_bc_H3K27ac.bam a2834_Deduplicated_UMI_1stExp_SC7_bc_H3K27ac.bam a2835_Deduplicated_UMI_2ndExp_SC7_bc_H3K27ac.bam a2836_Deduplicated_UMI_3rdExp_SC7_bc_H3K27ac.bam
samtools merge a4008_uniqueR_Rep1-3_SC8_H3K27ac.bam a2735_Deduplicated_UMI_1stExp_SC8_bc_H3K27ac.bam a2736_Deduplicated_UMI_2ndExp_SC8_bc_H3K27ac.bam a2737_Deduplicated_UMI_3rdExp_SC8_bc_H3K27ac.bam a2839_Deduplicated_UMI_1stExp_SC8_bc_H3K27ac.bam a2840_Deduplicated_UMI_2ndExp_SC8_bc_H3K27ac.bam a2841_Deduplicated_UMI_3rdExp_SC8_bc_H3K27ac.bam
samtools merge a4011_uniqueR_Rep1-3_SC1_H3K27me3.bam a2740_Deduplicated_UMI_1stExp_SC1_bc_H3K27me3.bam a2741_Deduplicated_UMI_2ndExp_SC1_bc_H3K27me3.bam a2742_Deduplicated_UMI_3rdExp_SC1_bc_H3K27me3.bam a2844_Deduplicated_UMI_1stExp_SC1_bc_H3K27me3.bam a2845_Deduplicated_UMI_2ndExp_SC1_bc_H3K27me3.bam a2846_Deduplicated_UMI_3rdExp_SC1_bc_H3K27me3.bam
samtools merge a4012_uniqueR_Rep1-3_SC2_H3K27me3.bam a2743_Deduplicated_UMI_1stExp_SC2_bc_H3K27me3.bam a2744_Deduplicated_UMI_2ndExp_SC2_bc_H3K27me3.bam a2745_Deduplicated_UMI_3rdExp_SC2_bc_H3K27me3.bam a2847_Deduplicated_UMI_1stExp_SC2_bc_H3K27me3.bam a2848_Deduplicated_UMI_2ndExp_SC2_bc_H3K27me3.bam a2849_Deduplicated_UMI_3rdExp_SC2_bc_H3K27me3.bam
samtools merge a4013_uniqueR_Rep1-3_SC3_H3K27me3.bam a2746_Deduplicated_UMI_1stExp_SC3_bc_H3K27me3.bam a2747_Deduplicated_UMI_2ndExp_SC3_bc_H3K27me3.bam a2748_Deduplicated_UMI_3rdExp_SC3_bc_H3K27me3.bam a2850_Deduplicated_UMI_1stExp_SC3_bc_H3K27me3.bam a2851_Deduplicated_UMI_2ndExp_SC3_bc_H3K27me3.bam a2852_Deduplicated_UMI_3rdExp_SC3_bc_H3K27me3.bam
samtools merge a4014_uniqueR_Rep1-3_SC4_H3K27me3.bam a2749_Deduplicated_UMI_1stExp_SC4_bc_H3K27me3.bam a2750_Deduplicated_UMI_2ndExp_SC4_bc_H3K27me3.bam a2751_Deduplicated_UMI_3rdExp_SC4_bc_H3K27me3.bam a2853_Deduplicated_UMI_1stExp_SC4_bc_H3K27me3.bam a2854_Deduplicated_UMI_2ndExp_SC4_bc_H3K27me3.bam a2855_Deduplicated_UMI_3rdExp_SC4_bc_H3K27me3.bam
samtools merge a4015_uniqueR_Rep1-3_SC5_H3K27me3.bam a2752_Deduplicated_UMI_1stExp_SC5_bc_H3K27me3.bam a2753_Deduplicated_UMI_2ndExp_SC5_bc_H3K27me3.bam a2754_Deduplicated_UMI_3rdExp_SC5_bc_H3K27me3.bam a2856_Deduplicated_UMI_1stExp_SC5_bc_H3K27me3.bam a2857_Deduplicated_UMI_2ndExp_SC5_bc_H3K27me3.bam a2858_Deduplicated_UMI_3rdExp_SC5_bc_H3K27me3.bam
samtools merge a4016_uniqueR_Rep1-3_SC6_H3K27me3.bam a2755_Deduplicated_UMI_1stExp_SC6_bc_H3K27me3.bam a2756_Deduplicated_UMI_2ndExp_SC6_bc_H3K27me3.bam a2757_Deduplicated_UMI_3rdExp_SC6_bc_H3K27me3.bam a2859_Deduplicated_UMI_1stExp_SC6_bc_H3K27me3.bam a2860_Deduplicated_UMI_2ndExp_SC6_bc_H3K27me3.bam a2861_Deduplicated_UMI_3rdExp_SC6_bc_H3K27me3.bam
samtools merge a4017_uniqueR_Rep1-3_SC7_H3K27me3.bam a2758_Deduplicated_UMI_1stExp_SC7_bc_H3K27me3.bam a2759_Deduplicated_UMI_2ndExp_SC7_bc_H3K27me3.bam a2760_Deduplicated_UMI_3rdExp_SC7_bc_H3K27me3.bam a2862_Deduplicated_UMI_1stExp_SC7_bc_H3K27me3.bam a2863_Deduplicated_UMI_2ndExp_SC7_bc_H3K27me3.bam a2864_Deduplicated_UMI_3rdExp_SC7_bc_H3K27me3.bam
samtools merge a4018_uniqueR_Rep1-3_SC8_H3K27me3.bam a2761_Deduplicated_UMI_1stExp_SC8_bc_H3K27me3.bam a2762_Deduplicated_UMI_2ndExp_SC8_bc_H3K27me3.bam a2763_Deduplicated_UMI_3rdExp_SC8_bc_H3K27me3.bam a2865_Deduplicated_UMI_1stExp_SC8_bc_H3K27me3.bam a2866_Deduplicated_UMI_2ndExp_SC8_bc_H3K27me3.bam a2867_Deduplicated_UMI_3rdExp_SC8_bc_H3K27me3.bam
samtools merge a4021_uniqueR_Rep1-3_SC1_IgG.bam a2764_Deduplicated_UMI_1stExp_SC1_bc_IgG.bam a2765_Deduplicated_UMI_2ndExp_SC1_bc_IgG.bam a2766_Deduplicated_UMI_3rdExp_SC1_bc_IgG.bam a2868_Deduplicated_UMI_1stExp_SC1_bc_IgG.bam a2869_Deduplicated_UMI_2ndExp_SC1_bc_IgG.bam a2870_Deduplicated_UMI_3rdExp_SC1_bc_IgG.bam
samtools merge a4022_uniqueR_Rep1-3_SC2_IgG.bam a2769_Deduplicated_UMI_1stExp_SC2_bc_IgG.bam a2770_Deduplicated_UMI_2ndExp_SC2_bc_IgG.bam a2771_Deduplicated_UMI_3rdExp_SC2_bc_IgG.bam a2873_Deduplicated_UMI_1stExp_SC2_bc_IgG.bam a2874_Deduplicated_UMI_2ndExp_SC2_bc_IgG.bam a2875_Deduplicated_UMI_3rdExp_SC2_bc_IgG.bam
samtools merge a4023_uniqueR_Rep1-3_SC3_IgG.bam a2774_Deduplicated_UMI_1stExp_SC3_bc_IgG.bam a2775_Deduplicated_UMI_2ndExp_SC3_bc_IgG.bam a2776_Deduplicated_UMI_3rdExp_SC3_bc_IgG.bam a2878_Deduplicated_UMI_1stExp_SC3_bc_IgG.bam a2879_Deduplicated_UMI_2ndExp_SC3_bc_IgG.bam a2880_Deduplicated_UMI_3rdExp_SC3_bc_IgG.bam
samtools merge a4024_uniqueR_Rep1-3_SC4_IgG.bam a2779_Deduplicated_UMI_1stExp_SC4_bc_IgG.bam a2780_Deduplicated_UMI_2ndExp_SC4_bc_IgG.bam a2781_Deduplicated_UMI_3rdExp_SC4_bc_IgG.bam a2883_Deduplicated_UMI_1stExp_SC4_bc_IgG.bam a2884_Deduplicated_UMI_2ndExp_SC4_bc_IgG.bam a2885_Deduplicated_UMI_3rdExp_SC4_bc_IgG.bam
samtools merge a4025_uniqueR_Rep1-3_SC5_IgG.bam a2784_Deduplicated_UMI_1stExp_SC5_bc_IgG.bam a2785_Deduplicated_UMI_2ndExp_SC5_bc_IgG.bam a2786_Deduplicated_UMI_3rdExp_SC5_bc_IgG.bam a2888_Deduplicated_UMI_1stExp_SC5_bc_IgG.bam a2889_Deduplicated_UMI_2ndExp_SC5_bc_IgG.bam a2890_Deduplicated_UMI_3rdExp_SC5_bc_IgG.bam
samtools merge a4026_uniqueR_Rep1-3_SC6_IgG.bam a2789_Deduplicated_UMI_1stExp_SC6_bc_IgG.bam a2790_Deduplicated_UMI_2ndExp_SC6_bc_IgG.bam a2791_Deduplicated_UMI_3rdExp_SC6_bc_IgG.bam a2893_Deduplicated_UMI_1stExp_SC6_bc_IgG.bam a2894_Deduplicated_UMI_2ndExp_SC6_bc_IgG.bam a2895_Deduplicated_UMI_3rdExp_SC6_bc_IgG.bam
samtools merge a4027_uniqueR_Rep1-3_SC7_IgG.bam a2794_Deduplicated_UMI_1stExp_SC7_bc_IgG.bam a2795_Deduplicated_UMI_2ndExp_SC7_bc_IgG.bam a2796_Deduplicated_UMI_3rdExp_SC7_bc_IgG.bam a2898_Deduplicated_UMI_1stExp_SC7_bc_IgG.bam a2899_Deduplicated_UMI_2ndExp_SC7_bc_IgG.bam a2900_Deduplicated_UMI_3rdExp_SC7_bc_IgG.bam
samtools merge a4028_uniqueR_Rep1-3_SC8_IgG.bam a2799_Deduplicated_UMI_1stExp_SC8_bc_IgG.bam a2800_Deduplicated_UMI_2ndExp_SC8_bc_IgG.bam a2801_Deduplicated_UMI_3rdExp_SC8_bc_IgG.bam a2903_Deduplicated_UMI_1stExp_SC8_bc_IgG.bam a2904_Deduplicated_UMI_2ndExp_SC8_bc_IgG.bam a2905_Deduplicated_UMI_3rdExp_SC8_bc_IgG.bam

# Step2: Convert the combined BAM file to a BED file.
module load bedtools
bedtools bamtobed -i a4001_uniqueR_Rep1-3_SC1_H3K27ac.bam >a4101_uniqueR_Rep1-3_SC1_H3K27ac.bed
bedtools bamtobed -i a4002_uniqueR_Rep1-3_SC2_H3K27ac.bam >a4102_uniqueR_Rep1-3_SC2_H3K27ac.bed
bedtools bamtobed -i a4003_uniqueR_Rep1-3_SC3_H3K27ac.bam >a4103_uniqueR_Rep1-3_SC3_H3K27ac.bed
bedtools bamtobed -i a4004_uniqueR_Rep1-3_SC4_H3K27ac.bam >a4104_uniqueR_Rep1-3_SC4_H3K27ac.bed
bedtools bamtobed -i a4005_uniqueR_Rep1-3_SC5_H3K27ac.bam >a4105_uniqueR_Rep1-3_SC5_H3K27ac.bed
bedtools bamtobed -i a4006_uniqueR_Rep1-3_SC6_H3K27ac.bam >a4106_uniqueR_Rep1-3_SC6_H3K27ac.bed
bedtools bamtobed -i a4007_uniqueR_Rep1-3_SC7_H3K27ac.bam >a4107_uniqueR_Rep1-3_SC7_H3K27ac.bed
bedtools bamtobed -i a4008_uniqueR_Rep1-3_SC8_H3K27ac.bam >a4108_uniqueR_Rep1-3_SC8_H3K27ac.bed
bedtools bamtobed -i a4011_uniqueR_Rep1-3_SC1_H3K27me3.bam >a4111_uniqueR_Rep1-3_SC1_H3K27me3.bed
bedtools bamtobed -i a4012_uniqueR_Rep1-3_SC2_H3K27me3.bam >a4112_uniqueR_Rep1-3_SC2_H3K27me3.bed
bedtools bamtobed -i a4013_uniqueR_Rep1-3_SC3_H3K27me3.bam >a4113_uniqueR_Rep1-3_SC3_H3K27me3.bed
bedtools bamtobed -i a4014_uniqueR_Rep1-3_SC4_H3K27me3.bam >a4114_uniqueR_Rep1-3_SC4_H3K27me3.bed
bedtools bamtobed -i a4015_uniqueR_Rep1-3_SC5_H3K27me3.bam >a4115_uniqueR_Rep1-3_SC5_H3K27me3.bed
bedtools bamtobed -i a4016_uniqueR_Rep1-3_SC6_H3K27me3.bam >a4116_uniqueR_Rep1-3_SC6_H3K27me3.bed
bedtools bamtobed -i a4017_uniqueR_Rep1-3_SC7_H3K27me3.bam >a4117_uniqueR_Rep1-3_SC7_H3K27me3.bed
bedtools bamtobed -i a4018_uniqueR_Rep1-3_SC8_H3K27me3.bam >a4118_uniqueR_Rep1-3_SC8_H3K27me3.bed
bedtools bamtobed -i a4021_uniqueR_Rep1-3_SC1_IgG.bam >a4121_uniqueR_Rep1-3_SC1_IgG.bed
bedtools bamtobed -i a4022_uniqueR_Rep1-3_SC2_IgG.bam >a4122_uniqueR_Rep1-3_SC2_IgG.bed
bedtools bamtobed -i a4023_uniqueR_Rep1-3_SC3_IgG.bam >a4123_uniqueR_Rep1-3_SC3_IgG.bed
bedtools bamtobed -i a4024_uniqueR_Rep1-3_SC4_IgG.bam >a4124_uniqueR_Rep1-3_SC4_IgG.bed
bedtools bamtobed -i a4025_uniqueR_Rep1-3_SC5_IgG.bam >a4125_uniqueR_Rep1-3_SC5_IgG.bed
bedtools bamtobed -i a4026_uniqueR_Rep1-3_SC6_IgG.bam >a4126_uniqueR_Rep1-3_SC6_IgG.bed
bedtools bamtobed -i a4027_uniqueR_Rep1-3_SC7_IgG.bam >a4127_uniqueR_Rep1-3_SC7_IgG.bed
bedtools bamtobed -i a4028_uniqueR_Rep1-3_SC8_IgG.bam >a4128_uniqueR_Rep1-3_SC8_IgG.bed

# Step3: Generate randomized controls.
bedtools shuffle -i a4101_uniqueR_Rep1-3_SC1_H3K27ac.bed -g GRCh38.genome >a4201_Randomized_control_Rep1-3_SC1_H3K27ac.bed
bedtools shuffle -i a4102_uniqueR_Rep1-3_SC2_H3K27ac.bed -g GRCh38.genome >a4202_Randomized_control_Rep1-3_SC2_H3K27ac.bed
bedtools shuffle -i a4103_uniqueR_Rep1-3_SC3_H3K27ac.bed -g GRCh38.genome >a4203_Randomized_control_Rep1-3_SC3_H3K27ac.bed
bedtools shuffle -i a4104_uniqueR_Rep1-3_SC4_H3K27ac.bed -g GRCh38.genome >a4204_Randomized_control_Rep1-3_SC4_H3K27ac.bed
bedtools shuffle -i a4105_uniqueR_Rep1-3_SC5_H3K27ac.bed -g GRCh38.genome >a4205_Randomized_control_Rep1-3_SC5_H3K27ac.bed
bedtools shuffle -i a4106_uniqueR_Rep1-3_SC6_H3K27ac.bed -g GRCh38.genome >a4206_Randomized_control_Rep1-3_SC6_H3K27ac.bed
bedtools shuffle -i a4107_uniqueR_Rep1-3_SC7_H3K27ac.bed -g GRCh38.genome >a4207_Randomized_control_Rep1-3_SC7_H3K27ac.bed
bedtools shuffle -i a4108_uniqueR_Rep1-3_SC8_H3K27ac.bed -g GRCh38.genome >a4208_Randomized_control_Rep1-3_SC8_H3K27ac.bed
bedtools shuffle -i a4111_uniqueR_Rep1-3_SC1_H3K27me3.bed -g GRCh38.genome >a4211_Randomized_control_Rep1-3_SC1_H3K27me3.bed
bedtools shuffle -i a4112_uniqueR_Rep1-3_SC2_H3K27me3.bed -g GRCh38.genome >a4212_Randomized_control_Rep1-3_SC2_H3K27me3.bed
bedtools shuffle -i a4113_uniqueR_Rep1-3_SC3_H3K27me3.bed -g GRCh38.genome >a4213_Randomized_control_Rep1-3_SC3_H3K27me3.bed
bedtools shuffle -i a4114_uniqueR_Rep1-3_SC4_H3K27me3.bed -g GRCh38.genome >a4214_Randomized_control_Rep1-3_SC4_H3K27me3.bed
bedtools shuffle -i a4115_uniqueR_Rep1-3_SC5_H3K27me3.bed -g GRCh38.genome >a4215_Randomized_control_Rep1-3_SC5_H3K27me3.bed
bedtools shuffle -i a4116_uniqueR_Rep1-3_SC6_H3K27me3.bed -g GRCh38.genome >a4216_Randomized_control_Rep1-3_SC6_H3K27me3.bed
bedtools shuffle -i a4117_uniqueR_Rep1-3_SC7_H3K27me3.bed -g GRCh38.genome >a4217_Randomized_control_Rep1-3_SC7_H3K27me3.bed
bedtools shuffle -i a4118_uniqueR_Rep1-3_SC8_H3K27me3.bed -g GRCh38.genome >a4218_Randomized_control_Rep1-3_SC8_H3K27me3.bed
bedtools shuffle -i a4121_uniqueR_Rep1-3_SC1_IgG.bed -g GRCh38.genome >a4221_Randomized_control_Rep1-3_SC1_IgG.bed
bedtools shuffle -i a4122_uniqueR_Rep1-3_SC2_IgG.bed -g GRCh38.genome >a4222_Randomized_control_Rep1-3_SC2_IgG.bed
bedtools shuffle -i a4123_uniqueR_Rep1-3_SC3_IgG.bed -g GRCh38.genome >a4223_Randomized_control_Rep1-3_SC3_IgG.bed
bedtools shuffle -i a4124_uniqueR_Rep1-3_SC4_IgG.bed -g GRCh38.genome >a4224_Randomized_control_Rep1-3_SC4_IgG.bed
bedtools shuffle -i a4125_uniqueR_Rep1-3_SC5_IgG.bed -g GRCh38.genome >a4225_Randomized_control_Rep1-3_SC5_IgG.bed
bedtools shuffle -i a4126_uniqueR_Rep1-3_SC6_IgG.bed -g GRCh38.genome >a4226_Randomized_control_Rep1-3_SC6_IgG.bed
bedtools shuffle -i a4127_uniqueR_Rep1-3_SC7_IgG.bed -g GRCh38.genome >a4227_Randomized_control_Rep1-3_SC7_IgG.bed
bedtools shuffle -i a4128_uniqueR_Rep1-3_SC8_IgG.bed -g GRCh38.genome >a4228_Randomized_control_Rep1-3_SC8_IgG.bed

# Step4: Generate genome bins, 500bp bin sliding 250 bp each.
bedtools makewindows -g GRCh38.genome -w 500 -s 250 >b300_Genome_bin_500bp_250bp_sliding_GRCh38.bed

# Step5: Count reads in the bins.
bedtools intersect -a b300_Genome_bin_500bp_250bp_sliding_GRCh38.bed -b a4101_uniqueR_Rep1-3_SC1_H3K27ac.bed -c >b0001.bed
bedtools intersect -a b300_Genome_bin_500bp_250bp_sliding_GRCh38.bed -b a4102_uniqueR_Rep1-3_SC2_H3K27ac.bed -c >b0002.bed
bedtools intersect -a b300_Genome_bin_500bp_250bp_sliding_GRCh38.bed -b a4103_uniqueR_Rep1-3_SC3_H3K27ac.bed -c >b0003.bed
bedtools intersect -a b300_Genome_bin_500bp_250bp_sliding_GRCh38.bed -b a4104_uniqueR_Rep1-3_SC4_H3K27ac.bed -c >b0004.bed
bedtools intersect -a b300_Genome_bin_500bp_250bp_sliding_GRCh38.bed -b a4105_uniqueR_Rep1-3_SC5_H3K27ac.bed -c >b0005.bed
bedtools intersect -a b300_Genome_bin_500bp_250bp_sliding_GRCh38.bed -b a4106_uniqueR_Rep1-3_SC6_H3K27ac.bed -c >b0006.bed
bedtools intersect -a b300_Genome_bin_500bp_250bp_sliding_GRCh38.bed -b a4107_uniqueR_Rep1-3_SC7_H3K27ac.bed -c >b0007.bed
bedtools intersect -a b300_Genome_bin_500bp_250bp_sliding_GRCh38.bed -b a4108_uniqueR_Rep1-3_SC8_H3K27ac.bed -c >b0008.bed
bedtools intersect -a b0001.bed -b a4121_uniqueR_Rep1-3_SC1_IgG.bed -c >b0009.bed
bedtools intersect -a b0002.bed -b a4122_uniqueR_Rep1-3_SC2_IgG.bed -c >b0010.bed
bedtools intersect -a b0003.bed -b a4123_uniqueR_Rep1-3_SC3_IgG.bed -c >b0011.bed
bedtools intersect -a b0004.bed -b a4124_uniqueR_Rep1-3_SC4_IgG.bed -c >b0012.bed
bedtools intersect -a b0005.bed -b a4125_uniqueR_Rep1-3_SC5_IgG.bed -c >b0013.bed
bedtools intersect -a b0006.bed -b a4126_uniqueR_Rep1-3_SC6_IgG.bed -c >b0014.bed
bedtools intersect -a b0007.bed -b a4127_uniqueR_Rep1-3_SC7_IgG.bed -c >b0015.bed
bedtools intersect -a b0008.bed -b a4128_uniqueR_Rep1-3_SC8_IgG.bed -c >b0016.bed
bedtools intersect -a b0009.bed -b a4201_Randomized_control_Rep1-3_SC1_H3K27ac.bed -c >b0017.bed
bedtools intersect -a b0010.bed -b a4202_Randomized_control_Rep1-3_SC2_H3K27ac.bed -c >b0018.bed
bedtools intersect -a b0011.bed -b a4203_Randomized_control_Rep1-3_SC3_H3K27ac.bed -c >b0019.bed
bedtools intersect -a b0012.bed -b a4204_Randomized_control_Rep1-3_SC4_H3K27ac.bed -c >b0020.bed
bedtools intersect -a b0013.bed -b a4205_Randomized_control_Rep1-3_SC5_H3K27ac.bed -c >b0021.bed
bedtools intersect -a b0014.bed -b a4206_Randomized_control_Rep1-3_SC6_H3K27ac.bed -c >b0022.bed
bedtools intersect -a b0015.bed -b a4207_Randomized_control_Rep1-3_SC7_H3K27ac.bed -c >b0023.bed
bedtools intersect -a b0016.bed -b a4208_Randomized_control_Rep1-3_SC8_H3K27ac.bed -c >b0024.bed
bedtools intersect -a b0017.bed -b a4221_Randomized_control_Rep1-3_SC1_IgG.bed -c >b0025.bed
bedtools intersect -a b0018.bed -b a4222_Randomized_control_Rep1-3_SC2_IgG.bed -c >b0026.bed
bedtools intersect -a b0019.bed -b a4223_Randomized_control_Rep1-3_SC3_IgG.bed -c >b0027.bed
bedtools intersect -a b0020.bed -b a4224_Randomized_control_Rep1-3_SC4_IgG.bed -c >b0028.bed
bedtools intersect -a b0021.bed -b a4225_Randomized_control_Rep1-3_SC5_IgG.bed -c >b0029.bed
bedtools intersect -a b0022.bed -b a4226_Randomized_control_Rep1-3_SC6_IgG.bed -c >b0030.bed
bedtools intersect -a b0023.bed -b a4227_Randomized_control_Rep1-3_SC7_IgG.bed -c >b0031.bed
bedtools intersect -a b0024.bed -b a4228_Randomized_control_Rep1-3_SC8_IgG.bed -c >b0032.bed

bedtools intersect -a b300_Genome_bin_500bp_250bp_sliding_GRCh38.bed -b a4111_uniqueR_Rep1-3_SC1_H3K27me3.bed -c >b0050.bed
bedtools intersect -a b300_Genome_bin_500bp_250bp_sliding_GRCh38.bed -b a4112_uniqueR_Rep1-3_SC2_H3K27me3.bed -c >b0051.bed
bedtools intersect -a b300_Genome_bin_500bp_250bp_sliding_GRCh38.bed -b a4113_uniqueR_Rep1-3_SC3_H3K27me3.bed -c >b0052.bed
bedtools intersect -a b300_Genome_bin_500bp_250bp_sliding_GRCh38.bed -b a4114_uniqueR_Rep1-3_SC4_H3K27me3.bed -c >b0053.bed
bedtools intersect -a b300_Genome_bin_500bp_250bp_sliding_GRCh38.bed -b a4115_uniqueR_Rep1-3_SC5_H3K27me3.bed -c >b0054.bed
bedtools intersect -a b300_Genome_bin_500bp_250bp_sliding_GRCh38.bed -b a4116_uniqueR_Rep1-3_SC6_H3K27me3.bed -c >b0055.bed
bedtools intersect -a b300_Genome_bin_500bp_250bp_sliding_GRCh38.bed -b a4117_uniqueR_Rep1-3_SC7_H3K27me3.bed -c >b0056.bed
bedtools intersect -a b300_Genome_bin_500bp_250bp_sliding_GRCh38.bed -b a4118_uniqueR_Rep1-3_SC8_H3K27me3.bed -c >b0057.bed
bedtools intersect -a b0050.bed -b a4121_uniqueR_Rep1-3_SC1_IgG.bed -c >b0058.bed
bedtools intersect -a b0051.bed -b a4122_uniqueR_Rep1-3_SC2_IgG.bed -c >b0059.bed
bedtools intersect -a b0052.bed -b a4123_uniqueR_Rep1-3_SC3_IgG.bed -c >b0060.bed
bedtools intersect -a b0053.bed -b a4124_uniqueR_Rep1-3_SC4_IgG.bed -c >b0061.bed
bedtools intersect -a b0054.bed -b a4125_uniqueR_Rep1-3_SC5_IgG.bed -c >b0062.bed
bedtools intersect -a b0055.bed -b a4126_uniqueR_Rep1-3_SC6_IgG.bed -c >b0063.bed
bedtools intersect -a b0056.bed -b a4127_uniqueR_Rep1-3_SC7_IgG.bed -c >b0064.bed
bedtools intersect -a b0057.bed -b a4128_uniqueR_Rep1-3_SC8_IgG.bed -c >b0065.bed
bedtools intersect -a b0058.bed -b a4211_Randomized_control_Rep1-3_SC1_H3K27me3.bed -c >b0066.bed
bedtools intersect -a b0059.bed -b a4212_Randomized_control_Rep1-3_SC2_H3K27me3.bed -c >b0067.bed
bedtools intersect -a b0060.bed -b a4213_Randomized_control_Rep1-3_SC3_H3K27me3.bed -c >b0068.bed
bedtools intersect -a b0061.bed -b a4214_Randomized_control_Rep1-3_SC4_H3K27me3.bed -c >b0069.bed
bedtools intersect -a b0062.bed -b a4215_Randomized_control_Rep1-3_SC5_H3K27me3.bed -c >b0070.bed
bedtools intersect -a b0063.bed -b a4216_Randomized_control_Rep1-3_SC6_H3K27me3.bed -c >b0071.bed
bedtools intersect -a b0064.bed -b a4217_Randomized_control_Rep1-3_SC7_H3K27me3.bed -c >b0072.bed
bedtools intersect -a b0065.bed -b a4218_Randomized_control_Rep1-3_SC8_H3K27me3.bed -c >b0073.bed
bedtools intersect -a b0066.bed -b a4221_Randomized_control_Rep1-3_SC1_IgG.bed -c >b0074.bed
bedtools intersect -a b0067.bed -b a4222_Randomized_control_Rep1-3_SC2_IgG.bed -c >b0075.bed
bedtools intersect -a b0068.bed -b a4223_Randomized_control_Rep1-3_SC3_IgG.bed -c >b0076.bed
bedtools intersect -a b0069.bed -b a4224_Randomized_control_Rep1-3_SC4_IgG.bed -c >b0077.bed
bedtools intersect -a b0070.bed -b a4225_Randomized_control_Rep1-3_SC5_IgG.bed -c >b0078.bed
bedtools intersect -a b0071.bed -b a4226_Randomized_control_Rep1-3_SC6_IgG.bed -c >b0079.bed
bedtools intersect -a b0072.bed -b a4227_Randomized_control_Rep1-3_SC7_IgG.bed -c >b0080.bed
bedtools intersect -a b0073.bed -b a4228_Randomized_control_Rep1-3_SC8_IgG.bed -c >b0081.bed

# Step6: Select rows (bins) containing Ab reads.
cat b0025.bed | awk '$4>0' >b0101_Rep1-3_SC1_H3K27ac_IgG_counts_in_bins.bed
cat b0026.bed | awk '$4>0' >b0102_Rep1-3_SC2_H3K27ac_IgG_counts_in_bins.bed
cat b0027.bed | awk '$4>0' >b0103_Rep1-3_SC3_H3K27ac_IgG_counts_in_bins.bed
cat b0028.bed | awk '$4>0' >b0104_Rep1-3_SC4_H3K27ac_IgG_counts_in_bins.bed
cat b0029.bed | awk '$4>0' >b0105_Rep1-3_SC5_H3K27ac_IgG_counts_in_bins.bed
cat b0030.bed | awk '$4>0' >b0106_Rep1-3_SC6_H3K27ac_IgG_counts_in_bins.bed
cat b0031.bed | awk '$4>0' >b0107_Rep1-3_SC7_H3K27ac_IgG_counts_in_bins.bed
cat b0032.bed | awk '$4>0' >b0108_Rep1-3_SC8_H3K27ac_IgG_counts_in_bins.bed

cat b0074.bed | awk '$4>0' >b0111_Rep1-3_SC1_H3K27me3_IgG_counts_in_bins.bed
cat b0075.bed | awk '$4>0' >b0112_Rep1-3_SC2_H3K27me3_IgG_counts_in_bins.bed
cat b0076.bed | awk '$4>0' >b0113_Rep1-3_SC3_H3K27me3_IgG_counts_in_bins.bed
cat b0077.bed | awk '$4>0' >b0114_Rep1-3_SC4_H3K27me3_IgG_counts_in_bins.bed
cat b0078.bed | awk '$4>0' >b0115_Rep1-3_SC5_H3K27me3_IgG_counts_in_bins.bed
cat b0079.bed | awk '$4>0' >b0116_Rep1-3_SC6_H3K27me3_IgG_counts_in_bins.bed
cat b0080.bed | awk '$4>0' >b0117_Rep1-3_SC7_H3K27me3_IgG_counts_in_bins.bed
cat b0081.bed | awk '$4>0' >b0118_Rep1-3_SC8_H3K27me3_IgG_counts_in_bins.bed

# Step7: Calculate Ab minus IgG, Ab minus Random IgG, Random Ab minus IgG, Random Ab minus Random IgG.
cat b0101_Rep1-3_SC1_H3K27ac_IgG_counts_in_bins.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $4-$5, $4-$7, $6-$5, $6-$7}' >b0121_SC1_H3K27ac-delta-IgG_counts_in_bins.bed
cat b0102_Rep1-3_SC2_H3K27ac_IgG_counts_in_bins.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $4-$5, $4-$7, $6-$5, $6-$7}' >b0122_SC2_H3K27ac-delta-IgG_counts_in_bins.bed
cat b0103_Rep1-3_SC3_H3K27ac_IgG_counts_in_bins.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $4-$5, $4-$7, $6-$5, $6-$7}' >b0123_SC3_H3K27ac-delta-IgG_counts_in_bins.bed
cat b0104_Rep1-3_SC4_H3K27ac_IgG_counts_in_bins.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $4-$5, $4-$7, $6-$5, $6-$7}' >b0124_SC4_H3K27ac-delta-IgG_counts_in_bins.bed
cat b0105_Rep1-3_SC5_H3K27ac_IgG_counts_in_bins.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $4-$5, $4-$7, $6-$5, $6-$7}' >b0125_SC5_H3K27ac-delta-IgG_counts_in_bins.bed
cat b0106_Rep1-3_SC6_H3K27ac_IgG_counts_in_bins.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $4-$5, $4-$7, $6-$5, $6-$7}' >b0126_SC6_H3K27ac-delta-IgG_counts_in_bins.bed
cat b0107_Rep1-3_SC7_H3K27ac_IgG_counts_in_bins.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $4-$5, $4-$7, $6-$5, $6-$7}' >b0127_SC7_H3K27ac-delta-IgG_counts_in_bins.bed
cat b0108_Rep1-3_SC8_H3K27ac_IgG_counts_in_bins.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $4-$5, $4-$7, $6-$5, $6-$7}' >b0128_SC8_H3K27ac-delta-IgG_counts_in_bins.bed

cat b0111_Rep1-3_SC1_H3K27me3_IgG_counts_in_bins.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $4-$5, $4-$7, $6-$5, $6-$7}' >b0131_SC1_H3K27me3-delta-IgG_counts_in_bins.bed
cat b0112_Rep1-3_SC2_H3K27me3_IgG_counts_in_bins.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $4-$5, $4-$7, $6-$5, $6-$7}' >b0132_SC2_H3K27me3-delta-IgG_counts_in_bins.bed
cat b0113_Rep1-3_SC3_H3K27me3_IgG_counts_in_bins.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $4-$5, $4-$7, $6-$5, $6-$7}' >b0133_SC3_H3K27me3-delta-IgG_counts_in_bins.bed
cat b0114_Rep1-3_SC4_H3K27me3_IgG_counts_in_bins.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $4-$5, $4-$7, $6-$5, $6-$7}' >b0134_SC4_H3K27me3-delta-IgG_counts_in_bins.bed
cat b0115_Rep1-3_SC5_H3K27me3_IgG_counts_in_bins.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $4-$5, $4-$7, $6-$5, $6-$7}' >b0135_SC5_H3K27me3-delta-IgG_counts_in_bins.bed
cat b0116_Rep1-3_SC6_H3K27me3_IgG_counts_in_bins.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $4-$5, $4-$7, $6-$5, $6-$7}' >b0136_SC6_H3K27me3-delta-IgG_counts_in_bins.bed
cat b0117_Rep1-3_SC7_H3K27me3_IgG_counts_in_bins.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $4-$5, $4-$7, $6-$5, $6-$7}' >b0137_SC7_H3K27me3-delta-IgG_counts_in_bins.bed
cat b0118_Rep1-3_SC8_H3K27me3_IgG_counts_in_bins.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7, $4-$5, $4-$7, $6-$5, $6-$7}' >b0138_SC8_H3K27me3-delta-IgG_counts_in_bins.bed

# Step8: Add a header to the BED files for the subsequent bootstrap test.
cat b0121_SC1_H3K27ac-delta-IgG_counts_in_bins.bed | sed 1s/^/"Chr\tStart\tEnd\tAb\tIgG\tRandAb\tRandIgG\tAbDIgG\tAbDRandIgG\tRandAbDIgG\tRandAbDRandIgG\n"/  >b0141_SC1_H3K27ac-delta-IgG_header.bed
cat b0122_SC2_H3K27ac-delta-IgG_counts_in_bins.bed | sed 1s/^/"Chr\tStart\tEnd\tAb\tIgG\tRandAb\tRandIgG\tAbDIgG\tAbDRandIgG\tRandAbDIgG\tRandAbDRandIgG\n"/  >b0142_SC2_H3K27ac-delta-IgG_header.bed
cat b0123_SC3_H3K27ac-delta-IgG_counts_in_bins.bed | sed 1s/^/"Chr\tStart\tEnd\tAb\tIgG\tRandAb\tRandIgG\tAbDIgG\tAbDRandIgG\tRandAbDIgG\tRandAbDRandIgG\n"/  >b0143_SC3_H3K27ac-delta-IgG_header.bed
cat b0124_SC4_H3K27ac-delta-IgG_counts_in_bins.bed | sed 1s/^/"Chr\tStart\tEnd\tAb\tIgG\tRandAb\tRandIgG\tAbDIgG\tAbDRandIgG\tRandAbDIgG\tRandAbDRandIgG\n"/  >b0144_SC4_H3K27ac-delta-IgG_header.bed
cat b0125_SC5_H3K27ac-delta-IgG_counts_in_bins.bed | sed 1s/^/"Chr\tStart\tEnd\tAb\tIgG\tRandAb\tRandIgG\tAbDIgG\tAbDRandIgG\tRandAbDIgG\tRandAbDRandIgG\n"/  >b0145_SC5_H3K27ac-delta-IgG_header.bed
cat b0126_SC6_H3K27ac-delta-IgG_counts_in_bins.bed | sed 1s/^/"Chr\tStart\tEnd\tAb\tIgG\tRandAb\tRandIgG\tAbDIgG\tAbDRandIgG\tRandAbDIgG\tRandAbDRandIgG\n"/  >b0146_SC6_H3K27ac-delta-IgG_header.bed
cat b0127_SC7_H3K27ac-delta-IgG_counts_in_bins.bed | sed 1s/^/"Chr\tStart\tEnd\tAb\tIgG\tRandAb\tRandIgG\tAbDIgG\tAbDRandIgG\tRandAbDIgG\tRandAbDRandIgG\n"/  >b0147_SC7_H3K27ac-delta-IgG_header.bed
cat b0128_SC8_H3K27ac-delta-IgG_counts_in_bins.bed | sed 1s/^/"Chr\tStart\tEnd\tAb\tIgG\tRandAb\tRandIgG\tAbDIgG\tAbDRandIgG\tRandAbDIgG\tRandAbDRandIgG\n"/  >b0148_SC8_H3K27ac-delta-IgG_header.bed

cat b0131_SC1_H3K27me3-delta-IgG_counts_in_bins.bed | sed 1s/^/"Chr\tStart\tEnd\tAb\tIgG\tRandAb\tRandIgG\tAbDIgG\tAbDRandIgG\tRandAbDIgG\tRandAbDRandIgG\n"/  >b0151_SC1_H3K27me3-delta-IgG_header.bed
cat b0132_SC2_H3K27me3-delta-IgG_counts_in_bins.bed | sed 1s/^/"Chr\tStart\tEnd\tAb\tIgG\tRandAb\tRandIgG\tAbDIgG\tAbDRandIgG\tRandAbDIgG\tRandAbDRandIgG\n"/  >b0152_SC2_H3K27me3-delta-IgG_header.bed
cat b0133_SC3_H3K27me3-delta-IgG_counts_in_bins.bed | sed 1s/^/"Chr\tStart\tEnd\tAb\tIgG\tRandAb\tRandIgG\tAbDIgG\tAbDRandIgG\tRandAbDIgG\tRandAbDRandIgG\n"/  >b0153_SC3_H3K27me3-delta-IgG_header.bed
cat b0134_SC4_H3K27me3-delta-IgG_counts_in_bins.bed | sed 1s/^/"Chr\tStart\tEnd\tAb\tIgG\tRandAb\tRandIgG\tAbDIgG\tAbDRandIgG\tRandAbDIgG\tRandAbDRandIgG\n"/  >b0154_SC4_H3K27me3-delta-IgG_header.bed
cat b0135_SC5_H3K27me3-delta-IgG_counts_in_bins.bed | sed 1s/^/"Chr\tStart\tEnd\tAb\tIgG\tRandAb\tRandIgG\tAbDIgG\tAbDRandIgG\tRandAbDIgG\tRandAbDRandIgG\n"/  >b0155_SC5_H3K27me3-delta-IgG_header.bed
cat b0136_SC6_H3K27me3-delta-IgG_counts_in_bins.bed | sed 1s/^/"Chr\tStart\tEnd\tAb\tIgG\tRandAb\tRandIgG\tAbDIgG\tAbDRandIgG\tRandAbDIgG\tRandAbDRandIgG\n"/  >b0156_SC6_H3K27me3-delta-IgG_header.bed
cat b0137_SC7_H3K27me3-delta-IgG_counts_in_bins.bed | sed 1s/^/"Chr\tStart\tEnd\tAb\tIgG\tRandAb\tRandIgG\tAbDIgG\tAbDRandIgG\tRandAbDIgG\tRandAbDRandIgG\n"/  >b0157_SC7_H3K27me3-delta-IgG_header.bed
cat b0138_SC8_H3K27me3-delta-IgG_counts_in_bins.bed | sed 1s/^/"Chr\tStart\tEnd\tAb\tIgG\tRandAb\tRandIgG\tAbDIgG\tAbDRandIgG\tRandAbDIgG\tRandAbDRandIgG\n"/  >b0158_SC8_H3K27me3-delta-IgG_header.bed

# Step9: Make directories for the bootstrap statistical test.
mkdir c100_H3K27a_Delta_IgG_SC1_Rep1-3
mkdir c101_H3K27a_Delta_IgG_SC2_Rep1-3
mkdir c102_H3K27a_Delta_IgG_SC3_Rep1-3
mkdir c103_H3K27a_Delta_IgG_SC4_Rep1-3
mkdir c104_H3K27a_Delta_IgG_SC5_Rep1-3
mkdir c105_H3K27a_Delta_IgG_SC6_Rep1-3
mkdir c106_H3K27a_Delta_IgG_SC7_Rep1-3
mkdir c107_H3K27a_Delta_IgG_SC8_Rep1-3
mkdir c108_H3K27me3Delta_IgG_SC1_Rep1-3
mkdir c109_H3K27me3Delta_IgG_SC2_Rep1-3
mkdir c110_H3K27me3Delta_IgG_SC3_Rep1-3
mkdir c111_H3K27me3Delta_IgG_SC4_Rep1-3
mkdir c112_H3K27me3Delta_IgG_SC5_Rep1-3
mkdir c113_H3K27me3Delta_IgG_SC6_Rep1-3
mkdir c114_H3K27me3Delta_IgG_SC7_Rep1-3
mkdir c115_H3K27me3Delta_IgG_SC8_Rep1-3
mkdir c116_Med1_Delta_IgG_SC1-8
mkdir c117_HP1g_Delta_IgG_SC1-8
mkdir c118_5hmC_Delta_IgG_SC1-8

# Step10: Copy the BED files into the directories with a unified file name.
cp b0141_SC1_H3K27ac-delta-IgG_header.bed c100_H3K27a_Delta_IgG_SC1_Rep1-3/Input.bed
cp b0142_SC2_H3K27ac-delta-IgG_header.bed c101_H3K27a_Delta_IgG_SC2_Rep1-3/Input.bed
cp b0143_SC3_H3K27ac-delta-IgG_header.bed c102_H3K27a_Delta_IgG_SC3_Rep1-3/Input.bed
cp b0144_SC4_H3K27ac-delta-IgG_header.bed c103_H3K27a_Delta_IgG_SC4_Rep1-3/Input.bed
cp b0145_SC5_H3K27ac-delta-IgG_header.bed c104_H3K27a_Delta_IgG_SC5_Rep1-3/Input.bed
cp b0146_SC6_H3K27ac-delta-IgG_header.bed c105_H3K27a_Delta_IgG_SC6_Rep1-3/Input.bed
cp b0147_SC7_H3K27ac-delta-IgG_header.bed c106_H3K27a_Delta_IgG_SC7_Rep1-3/Input.bed
cp b0148_SC8_H3K27ac-delta-IgG_header.bed c107_H3K27a_Delta_IgG_SC8_Rep1-3/Input.bed
 
cp b0151_SC1_H3K27me3-delta-IgG_header.bed c108_H3K27me3Delta_IgG_SC1_Rep1-3/Input.bed
cp b0152_SC2_H3K27me3-delta-IgG_header.bed c109_H3K27me3Delta_IgG_SC2_Rep1-3/Input.bed
cp b0153_SC3_H3K27me3-delta-IgG_header.bed c110_H3K27me3Delta_IgG_SC3_Rep1-3/Input.bed
cp b0154_SC4_H3K27me3-delta-IgG_header.bed c111_H3K27me3Delta_IgG_SC4_Rep1-3/Input.bed
cp b0155_SC5_H3K27me3-delta-IgG_header.bed c112_H3K27me3Delta_IgG_SC5_Rep1-3/Input.bed
cp b0156_SC6_H3K27me3-delta-IgG_header.bed c113_H3K27me3Delta_IgG_SC6_Rep1-3/Input.bed
cp b0157_SC7_H3K27me3-delta-IgG_header.bed c114_H3K27me3Delta_IgG_SC7_Rep1-3/Input.bed
cp b0158_SC8_H3K27me3-delta-IgG_header.bed c115_H3K27me3Delta_IgG_SC8_Rep1-3/Input.bed


# Step11: Copy an R script file of the bootstrap statistical test into the directories.
cp c200_Rscript_boot.r c100_H3K27a_Delta_IgG_SC1_Rep1-3/c200_Rscript_boot.r
cp c200_Rscript_boot.r c101_H3K27a_Delta_IgG_SC2_Rep1-3/c200_Rscript_boot.r
cp c200_Rscript_boot.r c102_H3K27a_Delta_IgG_SC3_Rep1-3/c200_Rscript_boot.r
cp c200_Rscript_boot.r c103_H3K27a_Delta_IgG_SC4_Rep1-3/c200_Rscript_boot.r
cp c200_Rscript_boot.r c104_H3K27a_Delta_IgG_SC5_Rep1-3/c200_Rscript_boot.r
cp c200_Rscript_boot.r c105_H3K27a_Delta_IgG_SC6_Rep1-3/c200_Rscript_boot.r
cp c200_Rscript_boot.r c106_H3K27a_Delta_IgG_SC7_Rep1-3/c200_Rscript_boot.r
cp c200_Rscript_boot.r c107_H3K27a_Delta_IgG_SC8_Rep1-3/c200_Rscript_boot.r
cp c200_Rscript_boot.r c108_H3K27me3Delta_IgG_SC1_Rep1-3/c200_Rscript_boot.r
cp c200_Rscript_boot.r c109_H3K27me3Delta_IgG_SC2_Rep1-3/c200_Rscript_boot.r
cp c200_Rscript_boot.r c110_H3K27me3Delta_IgG_SC3_Rep1-3/c200_Rscript_boot.r
cp c200_Rscript_boot.r c111_H3K27me3Delta_IgG_SC4_Rep1-3/c200_Rscript_boot.r
cp c200_Rscript_boot.r c112_H3K27me3Delta_IgG_SC5_Rep1-3/c200_Rscript_boot.r
cp c200_Rscript_boot.r c113_H3K27me3Delta_IgG_SC6_Rep1-3/c200_Rscript_boot.r
cp c200_Rscript_boot.r c114_H3K27me3Delta_IgG_SC7_Rep1-3/c200_Rscript_boot.r
cp c200_Rscript_boot.r c115_H3K27me3Delta_IgG_SC8_Rep1-3/c200_Rscript_boot.r


# Step12: Adjust bin number to 200,000 bins for the bootstrap statistical test.
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c100_H3K27a_Delta_IgG_SC1_Rep1-3 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c101_H3K27a_Delta_IgG_SC2_Rep1-3 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c102_H3K27a_Delta_IgG_SC3_Rep1-3 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c103_H3K27a_Delta_IgG_SC4_Rep1-3 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c104_H3K27a_Delta_IgG_SC5_Rep1-3 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c105_H3K27a_Delta_IgG_SC6_Rep1-3 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c106_H3K27a_Delta_IgG_SC7_Rep1-3 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c107_H3K27a_Delta_IgG_SC8_Rep1-3 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c108_H3K27me3Delta_IgG_SC1_Rep1-3 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c109_H3K27me3Delta_IgG_SC2_Rep1-3 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c110_H3K27me3Delta_IgG_SC3_Rep1-3 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c111_H3K27me3Delta_IgG_SC4_Rep1-3 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c112_H3K27me3Delta_IgG_SC5_Rep1-3 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c113_H3K27me3Delta_IgG_SC6_Rep1-3 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c114_H3K27me3Delta_IgG_SC7_Rep1-3 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c115_H3K27me3Delta_IgG_SC8_Rep1-3 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c116_Med1_Delta_IgG_SC1-8 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c117_HP1g_Delta_IgG_SC1-8 ; head -n 200000 Input.bed >Input_200000L.bed
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c118_5hmC_Delta_IgG_SC1-8 ; head -n 200000 Input.bed >Input_200000L.bed

# Step13: Run swarm command for executing Rscript in each directory.
# The following Bootstrap tests were executed in parallel on NIH high-performance computer, Biowulf with 240 GB memory and 50 threads per job.
# It took at least 4 hours per job.
module load R/3.5
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c100_H3K27a_Delta_IgG_SC1_Rep1-3 ; Rscript c200_Rscript_boot.r
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c101_H3K27a_Delta_IgG_SC2_Rep1-3 ; Rscript c200_Rscript_boot.r
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c102_H3K27a_Delta_IgG_SC3_Rep1-3 ; Rscript c200_Rscript_boot.r
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c103_H3K27a_Delta_IgG_SC4_Rep1-3 ; Rscript c200_Rscript_boot.r
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c104_H3K27a_Delta_IgG_SC5_Rep1-3 ; Rscript c200_Rscript_boot.r
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c105_H3K27a_Delta_IgG_SC6_Rep1-3 ; Rscript c200_Rscript_boot.r
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c106_H3K27a_Delta_IgG_SC7_Rep1-3 ; Rscript c200_Rscript_boot.r
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c107_H3K27a_Delta_IgG_SC8_Rep1-3 ; Rscript c200_Rscript_boot.r
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c108_H3K27me3Delta_IgG_SC1_Rep1-3 ; Rscript c200_Rscript_boot.r
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c109_H3K27me3Delta_IgG_SC2_Rep1-3 ; Rscript c200_Rscript_boot.r
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c110_H3K27me3Delta_IgG_SC3_Rep1-3 ; Rscript c200_Rscript_boot.r
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c111_H3K27me3Delta_IgG_SC4_Rep1-3 ; Rscript c200_Rscript_boot.r
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c112_H3K27me3Delta_IgG_SC5_Rep1-3 ; Rscript c200_Rscript_boot.r
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c113_H3K27me3Delta_IgG_SC6_Rep1-3 ; Rscript c200_Rscript_boot.r
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c114_H3K27me3Delta_IgG_SC7_Rep1-3 ; Rscript c200_Rscript_boot.r
cd /data/ohnukih/Nature_Methods/c001_Bootstrap/c115_H3K27me3Delta_IgG_SC8_Rep1-3 ; Rscript c200_Rscript_boot.r

# Step14: Extract putative signal regions using the upper endpoint of 99.9% confidence interval determined by the bootstrap statistical test.
cat b0141_SC1_H3K27ac-delta-IgG_header.bed | awk '$8>1' >C400_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat b0142_SC2_H3K27ac-delta-IgG_header.bed | awk '$8>1' >C401_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat b0143_SC3_H3K27ac-delta-IgG_header.bed | awk '$8>3' >C402_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat b0144_SC4_H3K27ac-delta-IgG_header.bed | awk '$8>1' >C403_H3K27a_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat b0145_SC5_H3K27ac-delta-IgG_header.bed | awk '$8>1' >C404_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat b0146_SC6_H3K27ac-delta-IgG_header.bed | awk '$8>3' >C405_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat b0147_SC7_H3K27ac-delta-IgG_header.bed | awk '$8>1' >C406_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat b0148_SC8_H3K27ac-delta-IgG_header.bed | awk '$8>1' >C407_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed

cat b0151_SC1_H3K27me3-delta-IgG_header.bed | awk '$8>1' >C408_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat b0152_SC2_H3K27me3-delta-IgG_header.bed | awk '$8>1' >C409_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat b0153_SC3_H3K27me3-delta-IgG_header.bed | awk '$8>0' >C410_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat b0154_SC4_H3K27me3-delta-IgG_header.bed | awk '$8>1' >C411_H3K27me3_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat b0155_SC5_H3K27me3-delta-IgG_header.bed | awk '$8>1' >C412_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat b0156_SC6_H3K27me3-delta-IgG_header.bed | awk '$8>1' >C413_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat b0157_SC7_H3K27me3-delta-IgG_header.bed | awk '$8>1' >C414_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat b0158_SC8_H3K27me3-delta-IgG_header.bed | awk '$8>3' >C415_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed


# Step15: Count region number of putative signals extracted in the previous step.
find -name 'C4*_PutativeSignalRegions_CI*.bed' -exec wc -l {} \; >C500_Summary_region_number_of_putative_signals.csv

# Step16: Count read number of putative signals.
cat C400_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C600_H3K27a_Delta_IgG_SC1_Rep1-3_Putative_Signal_Reads_CI0.999.bed
cat C401_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C601_H3K27a_Delta_IgG_SC2_Rep1-3_Putative_Signal_Reads_CI0.999.bed
cat C402_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C602_H3K27a_Delta_IgG_SC3_Rep1-3_Putative_Signal_Reads_CI0.999.bed
cat C403_H3K27a_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C603_H3K27a_Delta_IgG_SC4_Rep1-3_Putative_Signal_Reads_CI0.999.bed
cat C404_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C604_H3K27a_Delta_IgG_SC5_Rep1-3_Putative_Signal_Reads_CI0.999.bed
cat C405_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C605_H3K27a_Delta_IgG_SC6_Rep1-3_Putative_Signal_Reads_CI0.999.bed
cat C406_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C606_H3K27a_Delta_IgG_SC7_Rep1-3_Putative_Signal_Reads_CI0.999.bed
cat C407_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C607_H3K27a_Delta_IgG_SC8_Rep1-3_Putative_Signal_Reads_CI0.999.bed
cat C408_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C608_H3K27me3_Delta_IgG_SC1_Rep1-3_Putative_Signal_Reads_CI0.999.bed
cat C409_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C609_H3K27me3_Delta_IgG_SC2_Rep1-3_Putative_Signal_Reads_CI0.999.bed
cat C410_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C610_H3K27me3_Delta_IgG_SC3_Rep1-3_Putative_Signal_Reads_CI0.999.bed
cat C411_H3K27me3_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C611_H3K27me3_Delta_IgG_SC4_Rep1-3_Putative_Signal_Reads_CI0.999.bed
cat C412_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C612_H3K27me3_Delta_IgG_SC5_Rep1-3_Putative_Signal_Reads_CI0.999.bed
cat C413_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C613_H3K27me3_Delta_IgG_SC6_Rep1-3_Putative_Signal_Reads_CI0.999.bed
cat C414_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C614_H3K27me3_Delta_IgG_SC7_Rep1-3_Putative_Signal_Reads_CI0.999.bed
cat C415_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C615_H3K27me3_Delta_IgG_SC8_Rep1-3_Putative_Signal_Reads_CI0.999.bed
cat C416_Med1_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C616_Med1_Delta_IgG_SC1-8_Putative_Signal_Reads_CI0.999.bed
cat C417_HP1g_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C617_HP1g_Delta_IgG_SC1-8_Putative_Signal_Reads_CI0.999.bed
cat C418_5hmC_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed | awk '{s += $8} END {print s}' >C618_5hmC_Delta_IgG_SC1-8_Putative_Signal_Reads_CI0.999.bed

# Step17: Count read number of putative signals extracted in the previous step.
find -name 'C6*_Putative_Signal_Reads_CI*.bed' -exec wc -l {} \; >C699_Summary_read_number_of_putative_signals.csv
