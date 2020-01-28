#!/usr/bin/bash

# Enhancer classification with H3K27ac, H3K27me3, Med1 and 5-hydroxymethylcytosine. 

# Step1: Download enhancer datasets and enhancer interactions.
wget http://bioinfo.vanderbilt.edu/AE/HACER/download/T1.txt -O D200_HACER_hg19.txt

# Step2: Change the file format of the promoter dataset to the BED file format.
cat D200_HACER_hg19.txt | awk 'BEGIN {OFS="\t"}; {print $2, $3, $4, $1, $13, $4-$3}' >D201_Enhancers_hg19.bed

# Step3: HACER dataset uses hg19 genome assembly. To convert the genome assembly to hg38, we use crossmap.
# Download the chain file for the conversion.
wget http://hgdownload.soe.ucsc.edu/goldenPath/hg19/liftOver/hg19ToHg38.over.chain.gz

# Step4: Convert hg19 genome assembly to hg38 using crossmap.
module load crossmap
crossmap bed hg19ToHg38.over.chain.gz D201_Enhancers_hg19.bed D202_Enhancers_hg38.bed

# Step5: Remove duplicates of enhancers.
cat D202_Enhancers_hg38.bed | awk '!a[$1,$2,$3]++' >D203_Enhancers_hg38_deduplicates.bed

# Step6: Combine BED files of 8 single cells into 1 BED file.
cat C400_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed C401_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed C402_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed C403_H3K27a_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed C404_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed C405_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed C406_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed C407_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed >D210_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions.bed
cat C408_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed C409_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed C410_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed C411_H3K27me3_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed C412_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed C413_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed C414_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed C415_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed >D211_H3K27me3_SC1-8_Rep1-3_PutativeSignalRegions.bed

# Step7: Remove a header in BED files.
grep chr D210_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions.bed >D212_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions_headerRemoved.bed
grep chr D211_H3K27me3_SC1-8_Rep1-3_PutativeSignalRegions.bed >D213_H3K27me3_SC1-8_Rep1-3_PutativeSignalRegions_headerRemoved.bed
grep chr C416_Med1_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed >D218_Med1_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed
grep chr C418_5hmC_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed >D220_5hmC_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed

# Step8: Sort order of rows in BED files.
bedtools sort -i D212_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions_headerRemoved.bed >E003_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions_Sorted.bed 
bedtools sort -i D213_H3K27me3_SC1-8_Rep1-3_PutativeSignalRegions_headerRemoved.bed >E004_H3K27me3_SC1-8_Rep1-3_PutativeSignalRegions_Sorted.bed
bedtools sort -i D218_Med1_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed >E007_Med1_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99_Sorted.bed
bedtools sort -i D220_5hmC_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99.bed >E009_5hmC_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99_Sorted.bed
bedtools sort -i E001_Enhancers_hg38_w_length.bed >E001_Enhancers_hg38_Sorted.bed

# Step9: Count putative signals in each enhancer.
bedtools map -a E001_Enhancers_hg38_Sorted.bed -b E003_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions_Sorted.bed -c 8,11 -o sum >E020.bed
bedtools map -a E020.bed -b E004_H3K27me3_SC1-8_Rep1-3_PutativeSignalRegions_Sorted.bed -c 8,11 -o sum >E021.bed
bedtools map -a E023.bed -b E007_Med1_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99_Sorted.bed -c 8,11 -o sum >E024.bed
bedtools map -a E025.bed -b E009_5hmC_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99_Sorted.bed -c 8,11 -o sum >E026.bed
# $1: chromosome number, $2: start position of an enhancer, $3: end position of an enhancer
# $4: Enhancer ID, $5: Proximal gene, $6: length of an enhancer
# $7: H3K27ac
# $8: Random control of H3K27ac
# $9: H3K27me3
# $10: Random control of H3K27me3
# $11: Med1
# $12: Random control of Med1
# $13: 5hmC
# $14: Random control of 5hmC

# Step10: Count number of putative signals as an input.
V1=$(cat E003_H3K27ac_SC1-8_Rep1-3_PutativeSignalRegions_Sorted.bed | awk '{a += $8} END {print a}')
V2=$(cat E004_H3K27me3_SC1-8_Rep1-3_PutativeSignalRegions_Sorted.bed | awk '{a += $8} END {print a}')
V3=$(cat E007_Med1_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99_Sorted.bed | awk '{a += $8} END {print a}')
V4=$(cat E009_5hmC_Delta_IgG_SC1-8_PutativeSignalRegions_CI0.99_Sorted.bed | awk '{a += $8} END {print a}')
echo $V1 $V2 $V3 $V4 >E54.txt

# Step11: Calculate RPKM, reads per kilobase per million inputs.
cat E026.bed | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6,$7/$6*1000/4451459*1000000,$8/$6*1000/4451459*1000000,$9/$6*1000/3006050*1000000,$10/$6*1000/3006050*1000000,$11/$6*1000/989780*1000000,$12/$6*1000/989780*1000000,$13/$6*1000/1679697*1000000,$14/$6*1000/1679697*1000000, ""}' >E100_Ab-IgG_RPKM_in_enhancers.bed

# Step12: Remove enhancers, which were not detected by H3K27ac, H3K27me3, Med1 and 5hmC.
cat E101_Ab-IgG_RPKM_in_enhancers.bed | awk '{if($7>0 || $9>0 || $11>0 || $13>0) {print}}' >E201_000_Ab-IgG_RPKM_in_enhancers_0removed.bed

# Step13: To avoid error in calculation of ratio H3K27ac/H3K27me3, 0 value was converted to 0.01 in H3K27ac and H3K27me3.
# The lowest value of H3K27ac (RPKM) excluding 0 is 0.014072
# The lowest value of H3K27me3 (RPKM) excluding 0 is 0.010957
# The conversion value 0.01 is determined based on the lowest value of H3K27me3.
sed 's/\t0\t/\t0.01\t/g' E201_000_Ab-IgG_RPKM_in_enhancers_0removed.bed | sed 's/\t0\t/\t0.01\t/g' >E201_001_Ab-IgG_RPKM_in_enhancers_0converted.bed 

# Step14: Calculate log2(H3K27ac/H3K27me3).
cat E201_001_Ab-IgG_RPKM_in_enhancers_0converted.bed | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6, log($7/$9)/log(2),$7,$8,$9,$10,$11,$12,$13,$14}' >E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed
# memo: data labels after the calculation are shown below.
# $1:chr   $2:start   $3:end   $4:length   $5:Enhancer_ID   $6:Target_gene   $7:Log2(H3K27ac/H3K27me3)   $8:H3K27ac   $9:H2K37ac_Rand   $10:H3K27me3   $11:H3K27me3_Rand   $12:Med1   $13:Med1_Rand   $14:5hmC   $15:5hmC_Rand    

# Step15: Separate enhancers based on ranges of Log2(H3K27ac/H3K27me3).
awk '$7 >11.5 && $7 <=12' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_100_Enhancers_range_12_11.5.bed
awk '$7 >11 && $7 <=11.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_101_Enhancers_range_11.5_11.bed
awk '$7 >10.5 && $7 <=11' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_102_Enhancers_range_11_10.5.bed
awk '$7 >10 && $7 <=10.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_103_Enhancers_range_10.5_10.bed
awk '$7 >9.5 && $7 <=10' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_104_Enhancers_range_10_9.5.bed
awk '$7 >9 && $7 <=9.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_105_Enhancers_range_9.5_9.bed
awk '$7 >8.5 && $7 <=9' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_106_Enhancers_range_9_8.5.bed
awk '$7 >8 && $7 <=8.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_107_Enhancers_range_8.5_8.bed
awk '$7 >7.5 && $7 <=8' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_108_Enhancers_range_8_7.5.bed
awk '$7 >7 && $7 <=7.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_109_Enhancers_range_7.5_7.bed
awk '$7 >6.5 && $7 <=7' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_110_Enhancers_range_7_6.5.bed
awk '$7 >6 && $7 <=6.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_111_Enhancers_range_6.5_6.bed
awk '$7 >5.5 && $7 <=6' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_112_Enhancers_range_6_5.5.bed
awk '$7 >5 && $7 <=5.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_113_Enhancers_range_5.5_5.bed
awk '$7 >4.5 && $7 <=5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_114_Enhancers_range_5_4.5.bed
awk '$7 >4 && $7 <=4.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_115_Enhancers_range_4.5_4.bed
awk '$7 >3.5 && $7 <=4' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_116_Enhancers_range_4_3.5.bed
awk '$7 >3 && $7 <=3.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_117_Enhancers_range_3.5_3.bed
awk '$7 >2.5 && $7 <=3' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_118_Enhancers_range_3_2.5.bed
awk '$7 >2 && $7 <=2.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_119_Enhancers_range_2.5_2.bed
awk '$7 >1.5 && $7 <=2' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_120_Enhancers_range_2_1.5.bed
awk '$7 >1 && $7 <=1.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_121_Enhancers_range_1.5_1.bed
awk '$7 >0.5 && $7 <=1' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_122_Enhancers_range_1_0.5.bed
awk '$7 >0 && $7 <=0.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_123_Enhancers_range_0.5_0.bed
awk '$7 >-0.5 && $7 <=0' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_124_Enhancers_range_0_-0.5.bed
awk '$7 >-1 && $7 <=-0.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_125_Enhancers_range_-0.5_-1.bed
awk '$7 >-1.5 && $7 <=-1' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_126_Enhancers_range_-1_-1.5.bed
awk '$7 >-2 && $7 <=-1.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_127_Enhancers_range_-1.5_-2.bed
awk '$7 >-2.5 && $7 <=-2' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_128_Enhancers_range_-2_-2.5.bed
awk '$7 >-3 && $7 <=-2.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_129_Enhancers_range_-2.5_-3.bed
awk '$7 >-3.5 && $7 <=-3' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_130_Enhancers_range_-3_-3.5.bed
awk '$7 >-4 && $7 <=-3.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_131_Enhancers_range_-3.5_-4.bed
awk '$7 >-4.5 && $7 <=-4' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_132_Enhancers_range_-4_-4.5.bed
awk '$7 >-5 && $7 <=-4.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_133_Enhancers_range_-4.5_-5.bed
awk '$7 >-5.5 && $7 <=-5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_134_Enhancers_range_-5_-5.5.bed
awk '$7 >-6 && $7 <=-5.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_135_Enhancers_range_-5.5_-6.bed
awk '$7 >-6.5 && $7 <=-6' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_136_Enhancers_range_-6_-6.5.bed
awk '$7 >-7 && $7 <=-6.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_137_Enhancers_range_-6.5_-7.bed
awk '$7 >-7.5 && $7 <=-7' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_138_Enhancers_range_-7_-7.5.bed
awk '$7 >-8 && $7 <=-7.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_139_Enhancers_range_-7.5_-8.bed
awk '$7 >-8.5 && $7 <=-8' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_140_Enhancers_range_-8_-8.5.bed
awk '$7 >-9 && $7 <=-8.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_141_Enhancers_range_-8.5_-9.bed
awk '$7 >-9.5 && $7 <=-9' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_142_Enhancers_range_-9_-9.5.bed
awk '$7 >-10 && $7 <=-9.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_143_Enhancers_range_-9.5_-10.bed
awk '$7 >-10.5 && $7 <=-10' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_144_Enhancers_range_-10_-10.5.bed
awk '$7 >-11 && $7 <=-10.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_145_Enhancers_range_-10.5_-11.bed
awk '$7 >-11.5 && $7 <=-11' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_146_Enhancers_range_-11_-11.5.bed
awk '$7 >-12 && $7 <=-11.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_147_Enhancers_range_-11.5_-12.bed
awk '$7 >-12.5 && $7 <=-12' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_148_Enhancers_range_-12_-12.5.bed
awk '$7 >-13 && $7 <=-12.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_149_Enhancers_range_-12.5_-13.bed
awk '$7 >-13.5 && $7 <=-13' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_150_Enhancers_range_-13_-13.5.bed
awk '$7 >-14 && $7 <=-13.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_151_Enhancers_range_-13.5_-14.bed
awk '$7 >-14.5 && $7 <=-14' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_152_Enhancers_range_-14_-14.5.bed
awk '$7 >-15 && $7 <=-14.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_153_Enhancers_range_-14.5_-15.bed
awk '$7 >-15.5 && $7 <=-15' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_154_Enhancers_range_-15_-15.5.bed
awk '$7 >-16 && $7 <=-15.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_155_Enhancers_range_-15.5_-16.bed
awk '$7 >-16.5 && $7 <=-16' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_156_Enhancers_range_-16_-16.5.bed
awk '$7 >-17 && $7 <=-16.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_157_Enhancers_range_-16.5_-17.bed
awk '$7 >-17.5 && $7 <=-17' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_158_Enhancers_range_-17_-17.5.bed
awk '$7 >-18 && $7 <=-17.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_159_Enhancers_range_-17.5_-18.bed
awk '$7 >-18.5 && $7 <=-18' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_160_Enhancers_range_-18_-18.5.bed
awk '$7 >-19 && $7 <=-18.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_161_Enhancers_range_-18.5_-19.bed
awk '$7 >-19.5 && $7 <=-19' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_162_Enhancers_range_-19_-19.5.bed
awk '$7 >-20 && $7 <=-19.5' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_163_Enhancers_range_-19.5_-20.bed
awk '$7 >-20.5 && $7 <=-20' E201_002_Log2_ratio_H3K27ac_H3k27me3_of_enhancers.bed >E201_164_Enhancers_range_-20_-20.5.bed

# Step16: Calculate the average of H3K27ac RPKM in enhancers at each Log2(H3K27ac/H3K27me3) range.
cat E201_100_Enhancers_range_12_11.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_200_H3K27ac_RPKM_average_Range_12_11.5.txt
cat E201_101_Enhancers_range_11.5_11.bed | awk '{sum+=$8} END {print sum/NR}' > E201_201_H3K27ac_RPKM_average_Range_11.5_11.txt
cat E201_102_Enhancers_range_11_10.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_202_H3K27ac_RPKM_average_Range_11_10.5.txt
cat E201_103_Enhancers_range_10.5_10.bed | awk '{sum+=$8} END {print sum/NR}' > E201_203_H3K27ac_RPKM_average_Range_10.5_10.txt
cat E201_104_Enhancers_range_10_9.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_204_H3K27ac_RPKM_average_Range_10_9.5.txt
cat E201_105_Enhancers_range_9.5_9.bed | awk '{sum+=$8} END {print sum/NR}' > E201_205_H3K27ac_RPKM_average_Range_9.5_9.txt
cat E201_106_Enhancers_range_9_8.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_206_H3K27ac_RPKM_average_Range_9_8.5.txt
cat E201_107_Enhancers_range_8.5_8.bed | awk '{sum+=$8} END {print sum/NR}' > E201_207_H3K27ac_RPKM_average_Range_8.5_8.txt
cat E201_108_Enhancers_range_8_7.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_208_H3K27ac_RPKM_average_Range_8_7.5.txt
cat E201_109_Enhancers_range_7.5_7.bed | awk '{sum+=$8} END {print sum/NR}' > E201_209_H3K27ac_RPKM_average_Range_7.5_7.txt
cat E201_110_Enhancers_range_7_6.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_210_H3K27ac_RPKM_average_Range_7_6.5.txt
cat E201_111_Enhancers_range_6.5_6.bed | awk '{sum+=$8} END {print sum/NR}' > E201_211_H3K27ac_RPKM_average_Range_6.5_6.txt
cat E201_112_Enhancers_range_6_5.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_212_H3K27ac_RPKM_average_Range_6_5.5.txt
cat E201_113_Enhancers_range_5.5_5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_213_H3K27ac_RPKM_average_Range_5.5_5.txt
cat E201_114_Enhancers_range_5_4.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_214_H3K27ac_RPKM_average_Range_5_4.5.txt
cat E201_115_Enhancers_range_4.5_4.bed | awk '{sum+=$8} END {print sum/NR}' > E201_215_H3K27ac_RPKM_average_Range_4.5_4.txt
cat E201_116_Enhancers_range_4_3.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_216_H3K27ac_RPKM_average_Range_4_3.5.txt
cat E201_117_Enhancers_range_3.5_3.bed | awk '{sum+=$8} END {print sum/NR}' > E201_217_H3K27ac_RPKM_average_Range_3.5_3.txt
cat E201_118_Enhancers_range_3_2.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_218_H3K27ac_RPKM_average_Range_3_2.5.txt
cat E201_119_Enhancers_range_2.5_2.bed | awk '{sum+=$8} END {print sum/NR}' > E201_219_H3K27ac_RPKM_average_Range_2.5_2.txt
cat E201_120_Enhancers_range_2_1.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_220_H3K27ac_RPKM_average_Range_2_1.5.txt
cat E201_121_Enhancers_range_1.5_1.bed | awk '{sum+=$8} END {print sum/NR}' > E201_221_H3K27ac_RPKM_average_Range_1.5_1.txt
cat E201_122_Enhancers_range_1_0.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_222_H3K27ac_RPKM_average_Range_1_0.5.txt
cat E201_123_Enhancers_range_0.5_0.bed | awk '{sum+=$8} END {print sum/NR}' > E201_223_H3K27ac_RPKM_average_Range_0.5_0.txt
cat E201_124_Enhancers_range_0_-0.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_224_H3K27ac_RPKM_average_Range_0_-0.5.txt
cat E201_125_Enhancers_range_-0.5_-1.bed | awk '{sum+=$8} END {print sum/NR}' > E201_225_H3K27ac_RPKM_average_Range_-0.5_-1.txt
cat E201_126_Enhancers_range_-1_-1.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_226_H3K27ac_RPKM_average_Range_-1_-1.5.txt
cat E201_127_Enhancers_range_-1.5_-2.bed | awk '{sum+=$8} END {print sum/NR}' > E201_227_H3K27ac_RPKM_average_Range_-1.5_-2.txt
cat E201_128_Enhancers_range_-2_-2.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_228_H3K27ac_RPKM_average_Range_-2_-2.5.txt
cat E201_129_Enhancers_range_-2.5_-3.bed | awk '{sum+=$8} END {print sum/NR}' > E201_229_H3K27ac_RPKM_average_Range_-2.5_-3.txt
cat E201_130_Enhancers_range_-3_-3.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_230_H3K27ac_RPKM_average_Range_-3_-3.5.txt
cat E201_131_Enhancers_range_-3.5_-4.bed | awk '{sum+=$8} END {print sum/NR}' > E201_231_H3K27ac_RPKM_average_Range_-3.5_-4.txt
cat E201_132_Enhancers_range_-4_-4.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_232_H3K27ac_RPKM_average_Range_-4_-4.5.txt
cat E201_133_Enhancers_range_-4.5_-5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_233_H3K27ac_RPKM_average_Range_-4.5_-5.txt
cat E201_134_Enhancers_range_-5_-5.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_234_H3K27ac_RPKM_average_Range_-5_-5.5.txt
cat E201_135_Enhancers_range_-5.5_-6.bed | awk '{sum+=$8} END {print sum/NR}' > E201_235_H3K27ac_RPKM_average_Range_-5.5_-6.txt
cat E201_136_Enhancers_range_-6_-6.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_236_H3K27ac_RPKM_average_Range_-6_-6.5.txt
cat E201_137_Enhancers_range_-6.5_-7.bed | awk '{sum+=$8} END {print sum/NR}' > E201_237_H3K27ac_RPKM_average_Range_-6.5_-7.txt
cat E201_138_Enhancers_range_-7_-7.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_238_H3K27ac_RPKM_average_Range_-7_-7.5.txt
cat E201_139_Enhancers_range_-7.5_-8.bed | awk '{sum+=$8} END {print sum/NR}' > E201_239_H3K27ac_RPKM_average_Range_-7.5_-8.txt
cat E201_140_Enhancers_range_-8_-8.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_240_H3K27ac_RPKM_average_Range_-8_-8.5.txt
cat E201_141_Enhancers_range_-8.5_-9.bed | awk '{sum+=$8} END {print sum/NR}' > E201_241_H3K27ac_RPKM_average_Range_-8.5_-9.txt
cat E201_142_Enhancers_range_-9_-9.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_242_H3K27ac_RPKM_average_Range_-9_-9.5.txt
cat E201_143_Enhancers_range_-9.5_-10.bed | awk '{sum+=$8} END {print sum/NR}' > E201_243_H3K27ac_RPKM_average_Range_-9.5_-10.txt
cat E201_144_Enhancers_range_-10_-10.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_244_H3K27ac_RPKM_average_Range_-10_-10.5.txt
cat E201_145_Enhancers_range_-10.5_-11.bed | awk '{sum+=$8} END {print sum/NR}' > E201_245_H3K27ac_RPKM_average_Range_-10.5_-11.txt
cat E201_146_Enhancers_range_-11_-11.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_246_H3K27ac_RPKM_average_Range_-11_-11.5.txt
cat E201_147_Enhancers_range_-11.5_-12.bed | awk '{sum+=$8} END {print sum/NR}' > E201_247_H3K27ac_RPKM_average_Range_-11.5_-12.txt
cat E201_148_Enhancers_range_-12_-12.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_248_H3K27ac_RPKM_average_Range_-12_-12.5.txt
cat E201_149_Enhancers_range_-12.5_-13.bed | awk '{sum+=$8} END {print sum/NR}' > E201_249_H3K27ac_RPKM_average_Range_-12.5_-13.txt
cat E201_150_Enhancers_range_-13_-13.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_250_H3K27ac_RPKM_average_Range_-13_-13.5.txt
cat E201_151_Enhancers_range_-13.5_-14.bed | awk '{sum+=$8} END {print sum/NR}' > E201_251_H3K27ac_RPKM_average_Range_-13.5_-14.txt
cat E201_152_Enhancers_range_-14_-14.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_252_H3K27ac_RPKM_average_Range_-14_-14.5.txt
cat E201_153_Enhancers_range_-14.5_-15.bed | awk '{sum+=$8} END {print sum/NR}' > E201_253_H3K27ac_RPKM_average_Range_-14.5_-15.txt
cat E201_154_Enhancers_range_-15_-15.5.bed | awk '{sum+=$8} END {print sum/NR}' > E201_254_H3K27ac_RPKM_average_Range_-15_-15.5.txt

# Step17. Summarizing results in step16.
find -name 'E201_2*.txt' -exec cat {} \; >E201_260_average.csv
find -name 'E201_2*.txt' >E201_261_filename.csv
paste E201_260_average.csv E201_261_filename.csv >E201_262_Average_of_H3K27ac_RPKM_in_ranges.csv

# Step18: Calculate the average of H3K27ac random control (RPKM) in enhancers at each Log2(H3K27ac/H3K27me3) range.
cat E201_100_Enhancers_range_12_11.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_300_RandH3K27ac_RPKM_average_Range_12_11.5.txt
cat E201_101_Enhancers_range_11.5_11.bed | awk '{sum+=$9} END {print sum/NR}' > E201_301_RandH3K27ac_RPKM_average_Range_11.5_11.txt
cat E201_102_Enhancers_range_11_10.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_302_RandH3K27ac_RPKM_average_Range_11_10.5.txt
cat E201_103_Enhancers_range_10.5_10.bed | awk '{sum+=$9} END {print sum/NR}' > E201_303_RandH3K27ac_RPKM_average_Range_10.5_10.txt
cat E201_104_Enhancers_range_10_9.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_304_RandH3K27ac_RPKM_average_Range_10_9.5.txt
cat E201_105_Enhancers_range_9.5_9.bed | awk '{sum+=$9} END {print sum/NR}' > E201_305_RandH3K27ac_RPKM_average_Range_9.5_9.txt
cat E201_106_Enhancers_range_9_8.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_306_RandH3K27ac_RPKM_average_Range_9_8.5.txt
cat E201_107_Enhancers_range_8.5_8.bed | awk '{sum+=$9} END {print sum/NR}' > E201_307_RandH3K27ac_RPKM_average_Range_8.5_8.txt
cat E201_108_Enhancers_range_8_7.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_308_RandH3K27ac_RPKM_average_Range_8_7.5.txt
cat E201_109_Enhancers_range_7.5_7.bed | awk '{sum+=$9} END {print sum/NR}' > E201_309_RandH3K27ac_RPKM_average_Range_7.5_7.txt
cat E201_110_Enhancers_range_7_6.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_310_RandH3K27ac_RPKM_average_Range_7_6.5.txt
cat E201_111_Enhancers_range_6.5_6.bed | awk '{sum+=$9} END {print sum/NR}' > E201_311_RandH3K27ac_RPKM_average_Range_6.5_6.txt
cat E201_112_Enhancers_range_6_5.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_312_RandH3K27ac_RPKM_average_Range_6_5.5.txt
cat E201_113_Enhancers_range_5.5_5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_313_RandH3K27ac_RPKM_average_Range_5.5_5.txt
cat E201_114_Enhancers_range_5_4.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_314_RandH3K27ac_RPKM_average_Range_5_4.5.txt
cat E201_115_Enhancers_range_4.5_4.bed | awk '{sum+=$9} END {print sum/NR}' > E201_315_RandH3K27ac_RPKM_average_Range_4.5_4.txt
cat E201_116_Enhancers_range_4_3.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_316_RandH3K27ac_RPKM_average_Range_4_3.5.txt
cat E201_117_Enhancers_range_3.5_3.bed | awk '{sum+=$9} END {print sum/NR}' > E201_317_RandH3K27ac_RPKM_average_Range_3.5_3.txt
cat E201_118_Enhancers_range_3_2.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_318_RandH3K27ac_RPKM_average_Range_3_2.5.txt
cat E201_119_Enhancers_range_2.5_2.bed | awk '{sum+=$9} END {print sum/NR}' > E201_319_RandH3K27ac_RPKM_average_Range_2.5_2.txt
cat E201_120_Enhancers_range_2_1.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_320_RandH3K27ac_RPKM_average_Range_2_1.5.txt
cat E201_121_Enhancers_range_1.5_1.bed | awk '{sum+=$9} END {print sum/NR}' > E201_321_RandH3K27ac_RPKM_average_Range_1.5_1.txt
cat E201_122_Enhancers_range_1_0.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_322_RandH3K27ac_RPKM_average_Range_1_0.5.txt
cat E201_123_Enhancers_range_0.5_0.bed | awk '{sum+=$9} END {print sum/NR}' > E201_323_RandH3K27ac_RPKM_average_Range_0.5_0.txt
cat E201_124_Enhancers_range_0_-0.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_324_RandH3K27ac_RPKM_average_Range_0_-0.5.txt
cat E201_125_Enhancers_range_-0.5_-1.bed | awk '{sum+=$9} END {print sum/NR}' > E201_325_RandH3K27ac_RPKM_average_Range_-0.5_-1.txt
cat E201_126_Enhancers_range_-1_-1.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_326_RandH3K27ac_RPKM_average_Range_-1_-1.5.txt
cat E201_127_Enhancers_range_-1.5_-2.bed | awk '{sum+=$9} END {print sum/NR}' > E201_327_RandH3K27ac_RPKM_average_Range_-1.5_-2.txt
cat E201_128_Enhancers_range_-2_-2.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_328_RandH3K27ac_RPKM_average_Range_-2_-2.5.txt
cat E201_129_Enhancers_range_-2.5_-3.bed | awk '{sum+=$9} END {print sum/NR}' > E201_329_RandH3K27ac_RPKM_average_Range_-2.5_-3.txt
cat E201_130_Enhancers_range_-3_-3.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_330_RandH3K27ac_RPKM_average_Range_-3_-3.5.txt
cat E201_131_Enhancers_range_-3.5_-4.bed | awk '{sum+=$9} END {print sum/NR}' > E201_331_RandH3K27ac_RPKM_average_Range_-3.5_-4.txt
cat E201_132_Enhancers_range_-4_-4.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_332_RandH3K27ac_RPKM_average_Range_-4_-4.5.txt
cat E201_133_Enhancers_range_-4.5_-5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_333_RandH3K27ac_RPKM_average_Range_-4.5_-5.txt
cat E201_134_Enhancers_range_-5_-5.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_334_RandH3K27ac_RPKM_average_Range_-5_-5.5.txt
cat E201_135_Enhancers_range_-5.5_-6.bed | awk '{sum+=$9} END {print sum/NR}' > E201_335_RandH3K27ac_RPKM_average_Range_-5.5_-6.txt
cat E201_136_Enhancers_range_-6_-6.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_336_RandH3K27ac_RPKM_average_Range_-6_-6.5.txt
cat E201_137_Enhancers_range_-6.5_-7.bed | awk '{sum+=$9} END {print sum/NR}' > E201_337_RandH3K27ac_RPKM_average_Range_-6.5_-7.txt
cat E201_138_Enhancers_range_-7_-7.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_338_RandH3K27ac_RPKM_average_Range_-7_-7.5.txt
cat E201_139_Enhancers_range_-7.5_-8.bed | awk '{sum+=$9} END {print sum/NR}' > E201_339_RandH3K27ac_RPKM_average_Range_-7.5_-8.txt
cat E201_140_Enhancers_range_-8_-8.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_340_RandH3K27ac_RPKM_average_Range_-8_-8.5.txt
cat E201_141_Enhancers_range_-8.5_-9.bed | awk '{sum+=$9} END {print sum/NR}' > E201_341_RandH3K27ac_RPKM_average_Range_-8.5_-9.txt
cat E201_142_Enhancers_range_-9_-9.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_342_RandH3K27ac_RPKM_average_Range_-9_-9.5.txt
cat E201_143_Enhancers_range_-9.5_-10.bed | awk '{sum+=$9} END {print sum/NR}' > E201_343_RandH3K27ac_RPKM_average_Range_-9.5_-10.txt
cat E201_144_Enhancers_range_-10_-10.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_344_RandH3K27ac_RPKM_average_Range_-10_-10.5.txt
cat E201_145_Enhancers_range_-10.5_-11.bed | awk '{sum+=$9} END {print sum/NR}' > E201_345_RandH3K27ac_RPKM_average_Range_-10.5_-11.txt
cat E201_146_Enhancers_range_-11_-11.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_346_RandH3K27ac_RPKM_average_Range_-11_-11.5.txt
cat E201_147_Enhancers_range_-11.5_-12.bed | awk '{sum+=$9} END {print sum/NR}' > E201_347_RandH3K27ac_RPKM_average_Range_-11.5_-12.txt
cat E201_148_Enhancers_range_-12_-12.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_348_RandH3K27ac_RPKM_average_Range_-12_-12.5.txt
cat E201_149_Enhancers_range_-12.5_-13.bed | awk '{sum+=$9} END {print sum/NR}' > E201_349_RandH3K27ac_RPKM_average_Range_-12.5_-13.txt
cat E201_150_Enhancers_range_-13_-13.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_350_RandH3K27ac_RPKM_average_Range_-13_-13.5.txt
cat E201_151_Enhancers_range_-13.5_-14.bed | awk '{sum+=$9} END {print sum/NR}' > E201_351_RandH3K27ac_RPKM_average_Range_-13.5_-14.txt
cat E201_152_Enhancers_range_-14_-14.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_352_RandH3K27ac_RPKM_average_Range_-14_-14.5.txt
cat E201_153_Enhancers_range_-14.5_-15.bed | awk '{sum+=$9} END {print sum/NR}' > E201_353_RandH3K27ac_RPKM_average_Range_-14.5_-15.txt
cat E201_154_Enhancers_range_-15_-15.5.bed | awk '{sum+=$9} END {print sum/NR}' > E201_354_RandH3K27ac_RPKM_average_Range_-15_-15.5.txt

# Step19: Summarizing results in step18.
find -name 'E201_3*.txt' -exec cat {} \; >E201_360_average.csv
find -name 'E201_3*.txt' >E201_361_filename.csv
paste E201_360_average.csv E201_361_filename.csv >E201_362_Average_of_H3K27ac_random_control_RPKM_in_ranges.csv

# Step20: Calculate the average of H3K27me3 (RPKM) in enhancers at each Log2(H3K27ac/H3K27me3) range.
cat E201_100_Enhancers_range_12_11.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_400_H3K27me3_RPKM_average_Range_12_11.5.txt
cat E201_101_Enhancers_range_11.5_11.bed | awk '{sum+=$10} END {print sum/NR}' > E201_401_H3K27me3_RPKM_average_Range_11.5_11.txt
cat E201_102_Enhancers_range_11_10.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_402_H3K27me3_RPKM_average_Range_11_10.5.txt
cat E201_103_Enhancers_range_10.5_10.bed | awk '{sum+=$10} END {print sum/NR}' > E201_403_H3K27me3_RPKM_average_Range_10.5_10.txt
cat E201_104_Enhancers_range_10_9.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_404_H3K27me3_RPKM_average_Range_10_9.5.txt
cat E201_105_Enhancers_range_9.5_9.bed | awk '{sum+=$10} END {print sum/NR}' > E201_405_H3K27me3_RPKM_average_Range_9.5_9.txt
cat E201_106_Enhancers_range_9_8.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_406_H3K27me3_RPKM_average_Range_9_8.5.txt
cat E201_107_Enhancers_range_8.5_8.bed | awk '{sum+=$10} END {print sum/NR}' > E201_407_H3K27me3_RPKM_average_Range_8.5_8.txt
cat E201_108_Enhancers_range_8_7.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_408_H3K27me3_RPKM_average_Range_8_7.5.txt
cat E201_109_Enhancers_range_7.5_7.bed | awk '{sum+=$10} END {print sum/NR}' > E201_409_H3K27me3_RPKM_average_Range_7.5_7.txt
cat E201_110_Enhancers_range_7_6.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_410_H3K27me3_RPKM_average_Range_7_6.5.txt
cat E201_111_Enhancers_range_6.5_6.bed | awk '{sum+=$10} END {print sum/NR}' > E201_411_H3K27me3_RPKM_average_Range_6.5_6.txt
cat E201_112_Enhancers_range_6_5.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_412_H3K27me3_RPKM_average_Range_6_5.5.txt
cat E201_113_Enhancers_range_5.5_5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_413_H3K27me3_RPKM_average_Range_5.5_5.txt
cat E201_114_Enhancers_range_5_4.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_414_H3K27me3_RPKM_average_Range_5_4.5.txt
cat E201_115_Enhancers_range_4.5_4.bed | awk '{sum+=$10} END {print sum/NR}' > E201_415_H3K27me3_RPKM_average_Range_4.5_4.txt
cat E201_116_Enhancers_range_4_3.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_416_H3K27me3_RPKM_average_Range_4_3.5.txt
cat E201_117_Enhancers_range_3.5_3.bed | awk '{sum+=$10} END {print sum/NR}' > E201_417_H3K27me3_RPKM_average_Range_3.5_3.txt
cat E201_118_Enhancers_range_3_2.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_418_H3K27me3_RPKM_average_Range_3_2.5.txt
cat E201_119_Enhancers_range_2.5_2.bed | awk '{sum+=$10} END {print sum/NR}' > E201_419_H3K27me3_RPKM_average_Range_2.5_2.txt
cat E201_120_Enhancers_range_2_1.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_420_H3K27me3_RPKM_average_Range_2_1.5.txt
cat E201_121_Enhancers_range_1.5_1.bed | awk '{sum+=$10} END {print sum/NR}' > E201_421_H3K27me3_RPKM_average_Range_1.5_1.txt
cat E201_122_Enhancers_range_1_0.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_422_H3K27me3_RPKM_average_Range_1_0.5.txt
cat E201_123_Enhancers_range_0.5_0.bed | awk '{sum+=$10} END {print sum/NR}' > E201_423_H3K27me3_RPKM_average_Range_0.5_0.txt
cat E201_124_Enhancers_range_0_-0.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_424_H3K27me3_RPKM_average_Range_0_-0.5.txt
cat E201_125_Enhancers_range_-0.5_-1.bed | awk '{sum+=$10} END {print sum/NR}' > E201_425_H3K27me3_RPKM_average_Range_-0.5_-1.txt
cat E201_126_Enhancers_range_-1_-1.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_426_H3K27me3_RPKM_average_Range_-1_-1.5.txt
cat E201_127_Enhancers_range_-1.5_-2.bed | awk '{sum+=$10} END {print sum/NR}' > E201_427_H3K27me3_RPKM_average_Range_-1.5_-2.txt
cat E201_128_Enhancers_range_-2_-2.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_428_H3K27me3_RPKM_average_Range_-2_-2.5.txt
cat E201_129_Enhancers_range_-2.5_-3.bed | awk '{sum+=$10} END {print sum/NR}' > E201_429_H3K27me3_RPKM_average_Range_-2.5_-3.txt
cat E201_130_Enhancers_range_-3_-3.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_430_H3K27me3_RPKM_average_Range_-3_-3.5.txt
cat E201_131_Enhancers_range_-3.5_-4.bed | awk '{sum+=$10} END {print sum/NR}' > E201_431_H3K27me3_RPKM_average_Range_-3.5_-4.txt
cat E201_132_Enhancers_range_-4_-4.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_432_H3K27me3_RPKM_average_Range_-4_-4.5.txt
cat E201_133_Enhancers_range_-4.5_-5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_433_H3K27me3_RPKM_average_Range_-4.5_-5.txt
cat E201_134_Enhancers_range_-5_-5.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_434_H3K27me3_RPKM_average_Range_-5_-5.5.txt
cat E201_135_Enhancers_range_-5.5_-6.bed | awk '{sum+=$10} END {print sum/NR}' > E201_435_H3K27me3_RPKM_average_Range_-5.5_-6.txt
cat E201_136_Enhancers_range_-6_-6.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_436_H3K27me3_RPKM_average_Range_-6_-6.5.txt
cat E201_137_Enhancers_range_-6.5_-7.bed | awk '{sum+=$10} END {print sum/NR}' > E201_437_H3K27me3_RPKM_average_Range_-6.5_-7.txt
cat E201_138_Enhancers_range_-7_-7.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_438_H3K27me3_RPKM_average_Range_-7_-7.5.txt
cat E201_139_Enhancers_range_-7.5_-8.bed | awk '{sum+=$10} END {print sum/NR}' > E201_439_H3K27me3_RPKM_average_Range_-7.5_-8.txt
cat E201_140_Enhancers_range_-8_-8.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_440_H3K27me3_RPKM_average_Range_-8_-8.5.txt
cat E201_141_Enhancers_range_-8.5_-9.bed | awk '{sum+=$10} END {print sum/NR}' > E201_441_H3K27me3_RPKM_average_Range_-8.5_-9.txt
cat E201_142_Enhancers_range_-9_-9.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_442_H3K27me3_RPKM_average_Range_-9_-9.5.txt
cat E201_143_Enhancers_range_-9.5_-10.bed | awk '{sum+=$10} END {print sum/NR}' > E201_443_H3K27me3_RPKM_average_Range_-9.5_-10.txt
cat E201_144_Enhancers_range_-10_-10.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_444_H3K27me3_RPKM_average_Range_-10_-10.5.txt
cat E201_145_Enhancers_range_-10.5_-11.bed | awk '{sum+=$10} END {print sum/NR}' > E201_445_H3K27me3_RPKM_average_Range_-10.5_-11.txt
cat E201_146_Enhancers_range_-11_-11.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_446_H3K27me3_RPKM_average_Range_-11_-11.5.txt
cat E201_147_Enhancers_range_-11.5_-12.bed | awk '{sum+=$10} END {print sum/NR}' > E201_447_H3K27me3_RPKM_average_Range_-11.5_-12.txt
cat E201_148_Enhancers_range_-12_-12.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_448_H3K27me3_RPKM_average_Range_-12_-12.5.txt
cat E201_149_Enhancers_range_-12.5_-13.bed | awk '{sum+=$10} END {print sum/NR}' > E201_449_H3K27me3_RPKM_average_Range_-12.5_-13.txt
cat E201_150_Enhancers_range_-13_-13.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_450_H3K27me3_RPKM_average_Range_-13_-13.5.txt
cat E201_151_Enhancers_range_-13.5_-14.bed | awk '{sum+=$10} END {print sum/NR}' > E201_451_H3K27me3_RPKM_average_Range_-13.5_-14.txt
cat E201_152_Enhancers_range_-14_-14.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_452_H3K27me3_RPKM_average_Range_-14_-14.5.txt
cat E201_153_Enhancers_range_-14.5_-15.bed | awk '{sum+=$10} END {print sum/NR}' > E201_453_H3K27me3_RPKM_average_Range_-14.5_-15.txt
cat E201_154_Enhancers_range_-15_-15.5.bed | awk '{sum+=$10} END {print sum/NR}' > E201_454_H3K27me3_RPKM_average_Range_-15_-15.5.txt

# Step21: Summarizing results in step20.
find -name 'E201_4*.txt' -exec cat {} \; >E201_460_average.csv
find -name 'E201_4*.txt' >E201_461_filename.csv
paste E201_460_average.csv E201_461_filename.csv >E201_462_Average_of_H3K27me3_RPKM_in_ranges.csv

# Step22: Calculate the average of H3K27me3 random control (RPKM) in enhancers at each Log2(H3K27ac/H3K27me3) range.
cat E201_100_Enhancers_range_12_11.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_500_RandH3K27me3_RPKM_average_Range_12_11.5.txt
cat E201_101_Enhancers_range_11.5_11.bed | awk '{sum+=$11} END {print sum/NR}' > E201_501_RandH3K27me3_RPKM_average_Range_11.5_11.txt
cat E201_102_Enhancers_range_11_10.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_502_RandH3K27me3_RPKM_average_Range_11_10.5.txt
cat E201_103_Enhancers_range_10.5_10.bed | awk '{sum+=$11} END {print sum/NR}' > E201_503_RandH3K27me3_RPKM_average_Range_10.5_10.txt
cat E201_104_Enhancers_range_10_9.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_504_RandH3K27me3_RPKM_average_Range_10_9.5.txt
cat E201_105_Enhancers_range_9.5_9.bed | awk '{sum+=$11} END {print sum/NR}' > E201_505_RandH3K27me3_RPKM_average_Range_9.5_9.txt
cat E201_106_Enhancers_range_9_8.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_506_RandH3K27me3_RPKM_average_Range_9_8.5.txt
cat E201_107_Enhancers_range_8.5_8.bed | awk '{sum+=$11} END {print sum/NR}' > E201_507_RandH3K27me3_RPKM_average_Range_8.5_8.txt
cat E201_108_Enhancers_range_8_7.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_508_RandH3K27me3_RPKM_average_Range_8_7.5.txt
cat E201_109_Enhancers_range_7.5_7.bed | awk '{sum+=$11} END {print sum/NR}' > E201_509_RandH3K27me3_RPKM_average_Range_7.5_7.txt
cat E201_110_Enhancers_range_7_6.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_510_RandH3K27me3_RPKM_average_Range_7_6.5.txt
cat E201_111_Enhancers_range_6.5_6.bed | awk '{sum+=$11} END {print sum/NR}' > E201_511_RandH3K27me3_RPKM_average_Range_6.5_6.txt
cat E201_112_Enhancers_range_6_5.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_512_RandH3K27me3_RPKM_average_Range_6_5.5.txt
cat E201_113_Enhancers_range_5.5_5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_513_RandH3K27me3_RPKM_average_Range_5.5_5.txt
cat E201_114_Enhancers_range_5_4.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_514_RandH3K27me3_RPKM_average_Range_5_4.5.txt
cat E201_115_Enhancers_range_4.5_4.bed | awk '{sum+=$11} END {print sum/NR}' > E201_515_RandH3K27me3_RPKM_average_Range_4.5_4.txt
cat E201_116_Enhancers_range_4_3.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_516_RandH3K27me3_RPKM_average_Range_4_3.5.txt
cat E201_117_Enhancers_range_3.5_3.bed | awk '{sum+=$11} END {print sum/NR}' > E201_517_RandH3K27me3_RPKM_average_Range_3.5_3.txt
cat E201_118_Enhancers_range_3_2.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_518_RandH3K27me3_RPKM_average_Range_3_2.5.txt
cat E201_119_Enhancers_range_2.5_2.bed | awk '{sum+=$11} END {print sum/NR}' > E201_519_RandH3K27me3_RPKM_average_Range_2.5_2.txt
cat E201_120_Enhancers_range_2_1.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_520_RandH3K27me3_RPKM_average_Range_2_1.5.txt
cat E201_121_Enhancers_range_1.5_1.bed | awk '{sum+=$11} END {print sum/NR}' > E201_521_RandH3K27me3_RPKM_average_Range_1.5_1.txt
cat E201_122_Enhancers_range_1_0.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_522_RandH3K27me3_RPKM_average_Range_1_0.5.txt
cat E201_123_Enhancers_range_0.5_0.bed | awk '{sum+=$11} END {print sum/NR}' > E201_523_RandH3K27me3_RPKM_average_Range_0.5_0.txt
cat E201_124_Enhancers_range_0_-0.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_524_RandH3K27me3_RPKM_average_Range_0_-0.5.txt
cat E201_125_Enhancers_range_-0.5_-1.bed | awk '{sum+=$11} END {print sum/NR}' > E201_525_RandH3K27me3_RPKM_average_Range_-0.5_-1.txt
cat E201_126_Enhancers_range_-1_-1.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_526_RandH3K27me3_RPKM_average_Range_-1_-1.5.txt
cat E201_127_Enhancers_range_-1.5_-2.bed | awk '{sum+=$11} END {print sum/NR}' > E201_527_RandH3K27me3_RPKM_average_Range_-1.5_-2.txt
cat E201_128_Enhancers_range_-2_-2.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_528_RandH3K27me3_RPKM_average_Range_-2_-2.5.txt
cat E201_129_Enhancers_range_-2.5_-3.bed | awk '{sum+=$11} END {print sum/NR}' > E201_529_RandH3K27me3_RPKM_average_Range_-2.5_-3.txt
cat E201_130_Enhancers_range_-3_-3.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_530_RandH3K27me3_RPKM_average_Range_-3_-3.5.txt
cat E201_131_Enhancers_range_-3.5_-4.bed | awk '{sum+=$11} END {print sum/NR}' > E201_531_RandH3K27me3_RPKM_average_Range_-3.5_-4.txt
cat E201_132_Enhancers_range_-4_-4.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_532_RandH3K27me3_RPKM_average_Range_-4_-4.5.txt
cat E201_133_Enhancers_range_-4.5_-5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_533_RandH3K27me3_RPKM_average_Range_-4.5_-5.txt
cat E201_134_Enhancers_range_-5_-5.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_534_RandH3K27me3_RPKM_average_Range_-5_-5.5.txt
cat E201_135_Enhancers_range_-5.5_-6.bed | awk '{sum+=$11} END {print sum/NR}' > E201_535_RandH3K27me3_RPKM_average_Range_-5.5_-6.txt
cat E201_136_Enhancers_range_-6_-6.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_536_RandH3K27me3_RPKM_average_Range_-6_-6.5.txt
cat E201_137_Enhancers_range_-6.5_-7.bed | awk '{sum+=$11} END {print sum/NR}' > E201_537_RandH3K27me3_RPKM_average_Range_-6.5_-7.txt
cat E201_138_Enhancers_range_-7_-7.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_538_RandH3K27me3_RPKM_average_Range_-7_-7.5.txt
cat E201_139_Enhancers_range_-7.5_-8.bed | awk '{sum+=$11} END {print sum/NR}' > E201_539_RandH3K27me3_RPKM_average_Range_-7.5_-8.txt
cat E201_140_Enhancers_range_-8_-8.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_540_RandH3K27me3_RPKM_average_Range_-8_-8.5.txt
cat E201_141_Enhancers_range_-8.5_-9.bed | awk '{sum+=$11} END {print sum/NR}' > E201_541_RandH3K27me3_RPKM_average_Range_-8.5_-9.txt
cat E201_142_Enhancers_range_-9_-9.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_542_RandH3K27me3_RPKM_average_Range_-9_-9.5.txt
cat E201_143_Enhancers_range_-9.5_-10.bed | awk '{sum+=$11} END {print sum/NR}' > E201_543_RandH3K27me3_RPKM_average_Range_-9.5_-10.txt
cat E201_144_Enhancers_range_-10_-10.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_544_RandH3K27me3_RPKM_average_Range_-10_-10.5.txt
cat E201_145_Enhancers_range_-10.5_-11.bed | awk '{sum+=$11} END {print sum/NR}' > E201_545_RandH3K27me3_RPKM_average_Range_-10.5_-11.txt
cat E201_146_Enhancers_range_-11_-11.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_546_RandH3K27me3_RPKM_average_Range_-11_-11.5.txt
cat E201_147_Enhancers_range_-11.5_-12.bed | awk '{sum+=$11} END {print sum/NR}' > E201_547_RandH3K27me3_RPKM_average_Range_-11.5_-12.txt
cat E201_148_Enhancers_range_-12_-12.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_548_RandH3K27me3_RPKM_average_Range_-12_-12.5.txt
cat E201_149_Enhancers_range_-12.5_-13.bed | awk '{sum+=$11} END {print sum/NR}' > E201_549_RandH3K27me3_RPKM_average_Range_-12.5_-13.txt
cat E201_150_Enhancers_range_-13_-13.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_550_RandH3K27me3_RPKM_average_Range_-13_-13.5.txt
cat E201_151_Enhancers_range_-13.5_-14.bed | awk '{sum+=$11} END {print sum/NR}' > E201_551_RandH3K27me3_RPKM_average_Range_-13.5_-14.txt
cat E201_152_Enhancers_range_-14_-14.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_552_RandH3K27me3_RPKM_average_Range_-14_-14.5.txt
cat E201_153_Enhancers_range_-14.5_-15.bed | awk '{sum+=$11} END {print sum/NR}' > E201_553_RandH3K27me3_RPKM_average_Range_-14.5_-15.txt
cat E201_154_Enhancers_range_-15_-15.5.bed | awk '{sum+=$11} END {print sum/NR}' > E201_554_RandH3K27me3_RPKM_average_Range_-15_-15.5.txt

# Step23. Summarizing results in step22.
find -name 'E201_5*.txt' -exec cat {} \; >E201_560_average.csv
find -name 'E201_5*.txt' >E201_561_filename.csv
paste E201_560_average.csv E201_561_filename.csv >E201_562_Average_of_H3K27me3_random_control_RPKM_in_ranges.csv
 
# Step24: Calculate the average of Med1 (RPKM) in enhancers at each Log2(H3K27ac/H3K27me3) range.
cat E201_100_Enhancers_range_12_11.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_600_Med1_RPKM_average_Range_12_11.5.txt
cat E201_101_Enhancers_range_11.5_11.bed | awk '{sum+=$12} END {print sum/NR}' > E201_601_Med1_RPKM_average_Range_11.5_11.txt
cat E201_102_Enhancers_range_11_10.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_602_Med1_RPKM_average_Range_11_10.5.txt
cat E201_103_Enhancers_range_10.5_10.bed | awk '{sum+=$12} END {print sum/NR}' > E201_603_Med1_RPKM_average_Range_10.5_10.txt
cat E201_104_Enhancers_range_10_9.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_604_Med1_RPKM_average_Range_10_9.5.txt
cat E201_105_Enhancers_range_9.5_9.bed | awk '{sum+=$12} END {print sum/NR}' > E201_605_Med1_RPKM_average_Range_9.5_9.txt
cat E201_106_Enhancers_range_9_8.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_606_Med1_RPKM_average_Range_9_8.5.txt
cat E201_107_Enhancers_range_8.5_8.bed | awk '{sum+=$12} END {print sum/NR}' > E201_607_Med1_RPKM_average_Range_8.5_8.txt
cat E201_108_Enhancers_range_8_7.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_608_Med1_RPKM_average_Range_8_7.5.txt
cat E201_109_Enhancers_range_7.5_7.bed | awk '{sum+=$12} END {print sum/NR}' > E201_609_Med1_RPKM_average_Range_7.5_7.txt
cat E201_110_Enhancers_range_7_6.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_610_Med1_RPKM_average_Range_7_6.5.txt
cat E201_111_Enhancers_range_6.5_6.bed | awk '{sum+=$12} END {print sum/NR}' > E201_611_Med1_RPKM_average_Range_6.5_6.txt
cat E201_112_Enhancers_range_6_5.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_612_Med1_RPKM_average_Range_6_5.5.txt
cat E201_113_Enhancers_range_5.5_5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_613_Med1_RPKM_average_Range_5.5_5.txt
cat E201_114_Enhancers_range_5_4.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_614_Med1_RPKM_average_Range_5_4.5.txt
cat E201_115_Enhancers_range_4.5_4.bed | awk '{sum+=$12} END {print sum/NR}' > E201_615_Med1_RPKM_average_Range_4.5_4.txt
cat E201_116_Enhancers_range_4_3.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_616_Med1_RPKM_average_Range_4_3.5.txt
cat E201_117_Enhancers_range_3.5_3.bed | awk '{sum+=$12} END {print sum/NR}' > E201_617_Med1_RPKM_average_Range_3.5_3.txt
cat E201_118_Enhancers_range_3_2.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_618_Med1_RPKM_average_Range_3_2.5.txt
cat E201_119_Enhancers_range_2.5_2.bed | awk '{sum+=$12} END {print sum/NR}' > E201_619_Med1_RPKM_average_Range_2.5_2.txt
cat E201_120_Enhancers_range_2_1.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_620_Med1_RPKM_average_Range_2_1.5.txt
cat E201_121_Enhancers_range_1.5_1.bed | awk '{sum+=$12} END {print sum/NR}' > E201_621_Med1_RPKM_average_Range_1.5_1.txt
cat E201_122_Enhancers_range_1_0.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_622_Med1_RPKM_average_Range_1_0.5.txt
cat E201_123_Enhancers_range_0.5_0.bed | awk '{sum+=$12} END {print sum/NR}' > E201_623_Med1_RPKM_average_Range_0.5_0.txt
cat E201_124_Enhancers_range_0_-0.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_624_Med1_RPKM_average_Range_0_-0.5.txt
cat E201_125_Enhancers_range_-0.5_-1.bed | awk '{sum+=$12} END {print sum/NR}' > E201_625_Med1_RPKM_average_Range_-0.5_-1.txt
cat E201_126_Enhancers_range_-1_-1.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_626_Med1_RPKM_average_Range_-1_-1.5.txt
cat E201_127_Enhancers_range_-1.5_-2.bed | awk '{sum+=$12} END {print sum/NR}' > E201_627_Med1_RPKM_average_Range_-1.5_-2.txt
cat E201_128_Enhancers_range_-2_-2.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_628_Med1_RPKM_average_Range_-2_-2.5.txt
cat E201_129_Enhancers_range_-2.5_-3.bed | awk '{sum+=$12} END {print sum/NR}' > E201_629_Med1_RPKM_average_Range_-2.5_-3.txt
cat E201_130_Enhancers_range_-3_-3.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_630_Med1_RPKM_average_Range_-3_-3.5.txt
cat E201_131_Enhancers_range_-3.5_-4.bed | awk '{sum+=$12} END {print sum/NR}' > E201_631_Med1_RPKM_average_Range_-3.5_-4.txt
cat E201_132_Enhancers_range_-4_-4.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_632_Med1_RPKM_average_Range_-4_-4.5.txt
cat E201_133_Enhancers_range_-4.5_-5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_633_Med1_RPKM_average_Range_-4.5_-5.txt
cat E201_134_Enhancers_range_-5_-5.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_634_Med1_RPKM_average_Range_-5_-5.5.txt
cat E201_135_Enhancers_range_-5.5_-6.bed | awk '{sum+=$12} END {print sum/NR}' > E201_635_Med1_RPKM_average_Range_-5.5_-6.txt
cat E201_136_Enhancers_range_-6_-6.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_636_Med1_RPKM_average_Range_-6_-6.5.txt
cat E201_137_Enhancers_range_-6.5_-7.bed | awk '{sum+=$12} END {print sum/NR}' > E201_637_Med1_RPKM_average_Range_-6.5_-7.txt
cat E201_138_Enhancers_range_-7_-7.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_638_Med1_RPKM_average_Range_-7_-7.5.txt
cat E201_139_Enhancers_range_-7.5_-8.bed | awk '{sum+=$12} END {print sum/NR}' > E201_639_Med1_RPKM_average_Range_-7.5_-8.txt
cat E201_140_Enhancers_range_-8_-8.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_640_Med1_RPKM_average_Range_-8_-8.5.txt
cat E201_141_Enhancers_range_-8.5_-9.bed | awk '{sum+=$12} END {print sum/NR}' > E201_641_Med1_RPKM_average_Range_-8.5_-9.txt
cat E201_142_Enhancers_range_-9_-9.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_642_Med1_RPKM_average_Range_-9_-9.5.txt
cat E201_143_Enhancers_range_-9.5_-10.bed | awk '{sum+=$12} END {print sum/NR}' > E201_643_Med1_RPKM_average_Range_-9.5_-10.txt
cat E201_144_Enhancers_range_-10_-10.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_644_Med1_RPKM_average_Range_-10_-10.5.txt
cat E201_145_Enhancers_range_-10.5_-11.bed | awk '{sum+=$12} END {print sum/NR}' > E201_645_Med1_RPKM_average_Range_-10.5_-11.txt
cat E201_146_Enhancers_range_-11_-11.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_646_Med1_RPKM_average_Range_-11_-11.5.txt
cat E201_147_Enhancers_range_-11.5_-12.bed | awk '{sum+=$12} END {print sum/NR}' > E201_647_Med1_RPKM_average_Range_-11.5_-12.txt
cat E201_148_Enhancers_range_-12_-12.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_648_Med1_RPKM_average_Range_-12_-12.5.txt
cat E201_149_Enhancers_range_-12.5_-13.bed | awk '{sum+=$12} END {print sum/NR}' > E201_649_Med1_RPKM_average_Range_-12.5_-13.txt
cat E201_150_Enhancers_range_-13_-13.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_650_Med1_RPKM_average_Range_-13_-13.5.txt
cat E201_151_Enhancers_range_-13.5_-14.bed | awk '{sum+=$12} END {print sum/NR}' > E201_651_Med1_RPKM_average_Range_-13.5_-14.txt
cat E201_152_Enhancers_range_-14_-14.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_652_Med1_RPKM_average_Range_-14_-14.5.txt
cat E201_153_Enhancers_range_-14.5_-15.bed | awk '{sum+=$12} END {print sum/NR}' > E201_653_Med1_RPKM_average_Range_-14.5_-15.txt
cat E201_154_Enhancers_range_-15_-15.5.bed | awk '{sum+=$12} END {print sum/NR}' > E201_654_Med1_RPKM_average_Range_-15_-15.5.txt

# Step25: Summarizing results in step24.
find -name 'E201_6*.txt' -exec cat {} \; >E201_660_average.csv
find -name 'E201_6*.txt' >E201_661_filename.csv
paste E201_660_average.csv E201_661_filename.csv >E201_662_Average_of_Med1_RPKM_in_ranges.csv

# Step26: Calculate the average of Med1 random control (RPKM) in enhancers at each Log2(H3K27ac/H3K27me3) range.
cat E201_100_Enhancers_range_12_11.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_700_RandMed1_RPKM_average_Range_12_11.5.txt
cat E201_101_Enhancers_range_11.5_11.bed | awk '{sum+=$13} END {print sum/NR}' > E201_701_RandMed1_RPKM_average_Range_11.5_11.txt
cat E201_102_Enhancers_range_11_10.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_702_RandMed1_RPKM_average_Range_11_10.5.txt
cat E201_103_Enhancers_range_10.5_10.bed | awk '{sum+=$13} END {print sum/NR}' > E201_703_RandMed1_RPKM_average_Range_10.5_10.txt
cat E201_104_Enhancers_range_10_9.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_704_RandMed1_RPKM_average_Range_10_9.5.txt
cat E201_105_Enhancers_range_9.5_9.bed | awk '{sum+=$13} END {print sum/NR}' > E201_705_RandMed1_RPKM_average_Range_9.5_9.txt
cat E201_106_Enhancers_range_9_8.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_706_RandMed1_RPKM_average_Range_9_8.5.txt
cat E201_107_Enhancers_range_8.5_8.bed | awk '{sum+=$13} END {print sum/NR}' > E201_707_RandMed1_RPKM_average_Range_8.5_8.txt
cat E201_108_Enhancers_range_8_7.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_708_RandMed1_RPKM_average_Range_8_7.5.txt
cat E201_109_Enhancers_range_7.5_7.bed | awk '{sum+=$13} END {print sum/NR}' > E201_709_RandMed1_RPKM_average_Range_7.5_7.txt
cat E201_110_Enhancers_range_7_6.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_710_RandMed1_RPKM_average_Range_7_6.5.txt
cat E201_111_Enhancers_range_6.5_6.bed | awk '{sum+=$13} END {print sum/NR}' > E201_711_RandMed1_RPKM_average_Range_6.5_6.txt
cat E201_112_Enhancers_range_6_5.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_712_RandMed1_RPKM_average_Range_6_5.5.txt
cat E201_113_Enhancers_range_5.5_5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_713_RandMed1_RPKM_average_Range_5.5_5.txt
cat E201_114_Enhancers_range_5_4.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_714_RandMed1_RPKM_average_Range_5_4.5.txt
cat E201_115_Enhancers_range_4.5_4.bed | awk '{sum+=$13} END {print sum/NR}' > E201_715_RandMed1_RPKM_average_Range_4.5_4.txt
cat E201_116_Enhancers_range_4_3.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_716_RandMed1_RPKM_average_Range_4_3.5.txt
cat E201_117_Enhancers_range_3.5_3.bed | awk '{sum+=$13} END {print sum/NR}' > E201_717_RandMed1_RPKM_average_Range_3.5_3.txt
cat E201_118_Enhancers_range_3_2.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_718_RandMed1_RPKM_average_Range_3_2.5.txt
cat E201_119_Enhancers_range_2.5_2.bed | awk '{sum+=$13} END {print sum/NR}' > E201_719_RandMed1_RPKM_average_Range_2.5_2.txt
cat E201_120_Enhancers_range_2_1.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_720_RandMed1_RPKM_average_Range_2_1.5.txt
cat E201_121_Enhancers_range_1.5_1.bed | awk '{sum+=$13} END {print sum/NR}' > E201_721_RandMed1_RPKM_average_Range_1.5_1.txt
cat E201_122_Enhancers_range_1_0.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_722_RandMed1_RPKM_average_Range_1_0.5.txt
cat E201_123_Enhancers_range_0.5_0.bed | awk '{sum+=$13} END {print sum/NR}' > E201_723_RandMed1_RPKM_average_Range_0.5_0.txt
cat E201_124_Enhancers_range_0_-0.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_724_RandMed1_RPKM_average_Range_0_-0.5.txt
cat E201_125_Enhancers_range_-0.5_-1.bed | awk '{sum+=$13} END {print sum/NR}' > E201_725_RandMed1_RPKM_average_Range_-0.5_-1.txt
cat E201_126_Enhancers_range_-1_-1.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_726_RandMed1_RPKM_average_Range_-1_-1.5.txt
cat E201_127_Enhancers_range_-1.5_-2.bed | awk '{sum+=$13} END {print sum/NR}' > E201_727_RandMed1_RPKM_average_Range_-1.5_-2.txt
cat E201_128_Enhancers_range_-2_-2.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_728_RandMed1_RPKM_average_Range_-2_-2.5.txt
cat E201_129_Enhancers_range_-2.5_-3.bed | awk '{sum+=$13} END {print sum/NR}' > E201_729_RandMed1_RPKM_average_Range_-2.5_-3.txt
cat E201_130_Enhancers_range_-3_-3.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_730_RandMed1_RPKM_average_Range_-3_-3.5.txt
cat E201_131_Enhancers_range_-3.5_-4.bed | awk '{sum+=$13} END {print sum/NR}' > E201_731_RandMed1_RPKM_average_Range_-3.5_-4.txt
cat E201_132_Enhancers_range_-4_-4.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_732_RandMed1_RPKM_average_Range_-4_-4.5.txt
cat E201_133_Enhancers_range_-4.5_-5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_733_RandMed1_RPKM_average_Range_-4.5_-5.txt
cat E201_134_Enhancers_range_-5_-5.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_734_RandMed1_RPKM_average_Range_-5_-5.5.txt
cat E201_135_Enhancers_range_-5.5_-6.bed | awk '{sum+=$13} END {print sum/NR}' > E201_735_RandMed1_RPKM_average_Range_-5.5_-6.txt
cat E201_136_Enhancers_range_-6_-6.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_736_RandMed1_RPKM_average_Range_-6_-6.5.txt
cat E201_137_Enhancers_range_-6.5_-7.bed | awk '{sum+=$13} END {print sum/NR}' > E201_737_RandMed1_RPKM_average_Range_-6.5_-7.txt
cat E201_138_Enhancers_range_-7_-7.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_738_RandMed1_RPKM_average_Range_-7_-7.5.txt
cat E201_139_Enhancers_range_-7.5_-8.bed | awk '{sum+=$13} END {print sum/NR}' > E201_739_RandMed1_RPKM_average_Range_-7.5_-8.txt
cat E201_140_Enhancers_range_-8_-8.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_740_RandMed1_RPKM_average_Range_-8_-8.5.txt
cat E201_141_Enhancers_range_-8.5_-9.bed | awk '{sum+=$13} END {print sum/NR}' > E201_741_RandMed1_RPKM_average_Range_-8.5_-9.txt
cat E201_142_Enhancers_range_-9_-9.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_742_RandMed1_RPKM_average_Range_-9_-9.5.txt
cat E201_143_Enhancers_range_-9.5_-10.bed | awk '{sum+=$13} END {print sum/NR}' > E201_743_RandMed1_RPKM_average_Range_-9.5_-10.txt
cat E201_144_Enhancers_range_-10_-10.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_744_RandMed1_RPKM_average_Range_-10_-10.5.txt
cat E201_145_Enhancers_range_-10.5_-11.bed | awk '{sum+=$13} END {print sum/NR}' > E201_745_RandMed1_RPKM_average_Range_-10.5_-11.txt
cat E201_146_Enhancers_range_-11_-11.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_746_RandMed1_RPKM_average_Range_-11_-11.5.txt
cat E201_147_Enhancers_range_-11.5_-12.bed | awk '{sum+=$13} END {print sum/NR}' > E201_747_RandMed1_RPKM_average_Range_-11.5_-12.txt
cat E201_148_Enhancers_range_-12_-12.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_748_RandMed1_RPKM_average_Range_-12_-12.5.txt
cat E201_149_Enhancers_range_-12.5_-13.bed | awk '{sum+=$13} END {print sum/NR}' > E201_749_RandMed1_RPKM_average_Range_-12.5_-13.txt
cat E201_150_Enhancers_range_-13_-13.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_750_RandMed1_RPKM_average_Range_-13_-13.5.txt
cat E201_151_Enhancers_range_-13.5_-14.bed | awk '{sum+=$13} END {print sum/NR}' > E201_751_RandMed1_RPKM_average_Range_-13.5_-14.txt
cat E201_152_Enhancers_range_-14_-14.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_752_RandMed1_RPKM_average_Range_-14_-14.5.txt
cat E201_153_Enhancers_range_-14.5_-15.bed | awk '{sum+=$13} END {print sum/NR}' > E201_753_RandMed1_RPKM_average_Range_-14.5_-15.txt
cat E201_154_Enhancers_range_-15_-15.5.bed | awk '{sum+=$13} END {print sum/NR}' > E201_754_RandMed1_RPKM_average_Range_-15_-15.5.txt

# Step27: Summarizing results in step26.
find -name 'E201_7*.txt' -exec cat {} \; >E201_760_average.csv
find -name 'E201_7*.txt' >E201_761_filename.csv
paste E201_760_average.csv E201_761_filename.csv >E201_762_Average_of_Med1_random_control_RPKM_in_ranges.csv

# Step28: Calculate the average of 5hmC (RPKM) in enhancers at each Log2(H3K27ac/H3K27me3) range.
cat E201_100_Enhancers_range_12_11.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a000_5hmC_RPKM_average_Range_12_11.5.txt
cat E201_101_Enhancers_range_11.5_11.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a001_5hmC_RPKM_average_Range_11.5_11.txt
cat E201_102_Enhancers_range_11_10.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a002_5hmC_RPKM_average_Range_11_10.5.txt
cat E201_103_Enhancers_range_10.5_10.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a003_5hmC_RPKM_average_Range_10.5_10.txt
cat E201_104_Enhancers_range_10_9.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a004_5hmC_RPKM_average_Range_10_9.5.txt
cat E201_105_Enhancers_range_9.5_9.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a005_5hmC_RPKM_average_Range_9.5_9.txt
cat E201_106_Enhancers_range_9_8.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a006_5hmC_RPKM_average_Range_9_8.5.txt
cat E201_107_Enhancers_range_8.5_8.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a007_5hmC_RPKM_average_Range_8.5_8.txt
cat E201_108_Enhancers_range_8_7.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a008_5hmC_RPKM_average_Range_8_7.5.txt
cat E201_109_Enhancers_range_7.5_7.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a009_5hmC_RPKM_average_Range_7.5_7.txt
cat E201_110_Enhancers_range_7_6.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a010_5hmC_RPKM_average_Range_7_6.5.txt
cat E201_111_Enhancers_range_6.5_6.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a011_5hmC_RPKM_average_Range_6.5_6.txt
cat E201_112_Enhancers_range_6_5.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a012_5hmC_RPKM_average_Range_6_5.5.txt
cat E201_113_Enhancers_range_5.5_5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a013_5hmC_RPKM_average_Range_5.5_5.txt
cat E201_114_Enhancers_range_5_4.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a014_5hmC_RPKM_average_Range_5_4.5.txt
cat E201_115_Enhancers_range_4.5_4.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a015_5hmC_RPKM_average_Range_4.5_4.txt
cat E201_116_Enhancers_range_4_3.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a016_5hmC_RPKM_average_Range_4_3.5.txt
cat E201_117_Enhancers_range_3.5_3.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a017_5hmC_RPKM_average_Range_3.5_3.txt
cat E201_118_Enhancers_range_3_2.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a018_5hmC_RPKM_average_Range_3_2.5.txt
cat E201_119_Enhancers_range_2.5_2.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a019_5hmC_RPKM_average_Range_2.5_2.txt
cat E201_120_Enhancers_range_2_1.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a020_5hmC_RPKM_average_Range_2_1.5.txt
cat E201_121_Enhancers_range_1.5_1.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a021_5hmC_RPKM_average_Range_1.5_1.txt
cat E201_122_Enhancers_range_1_0.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a022_5hmC_RPKM_average_Range_1_0.5.txt
cat E201_123_Enhancers_range_0.5_0.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a023_5hmC_RPKM_average_Range_0.5_0.txt
cat E201_124_Enhancers_range_0_-0.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a024_5hmC_RPKM_average_Range_0_-0.5.txt
cat E201_125_Enhancers_range_-0.5_-1.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a025_5hmC_RPKM_average_Range_-0.5_-1.txt
cat E201_126_Enhancers_range_-1_-1.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a026_5hmC_RPKM_average_Range_-1_-1.5.txt
cat E201_127_Enhancers_range_-1.5_-2.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a027_5hmC_RPKM_average_Range_-1.5_-2.txt
cat E201_128_Enhancers_range_-2_-2.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a028_5hmC_RPKM_average_Range_-2_-2.5.txt
cat E201_129_Enhancers_range_-2.5_-3.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a029_5hmC_RPKM_average_Range_-2.5_-3.txt
cat E201_130_Enhancers_range_-3_-3.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a030_5hmC_RPKM_average_Range_-3_-3.5.txt
cat E201_131_Enhancers_range_-3.5_-4.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a031_5hmC_RPKM_average_Range_-3.5_-4.txt
cat E201_132_Enhancers_range_-4_-4.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a032_5hmC_RPKM_average_Range_-4_-4.5.txt
cat E201_133_Enhancers_range_-4.5_-5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a033_5hmC_RPKM_average_Range_-4.5_-5.txt
cat E201_134_Enhancers_range_-5_-5.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a034_5hmC_RPKM_average_Range_-5_-5.5.txt
cat E201_135_Enhancers_range_-5.5_-6.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a035_5hmC_RPKM_average_Range_-5.5_-6.txt
cat E201_136_Enhancers_range_-6_-6.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a036_5hmC_RPKM_average_Range_-6_-6.5.txt
cat E201_137_Enhancers_range_-6.5_-7.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a037_5hmC_RPKM_average_Range_-6.5_-7.txt
cat E201_138_Enhancers_range_-7_-7.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a038_5hmC_RPKM_average_Range_-7_-7.5.txt
cat E201_139_Enhancers_range_-7.5_-8.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a039_5hmC_RPKM_average_Range_-7.5_-8.txt
cat E201_140_Enhancers_range_-8_-8.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a040_5hmC_RPKM_average_Range_-8_-8.5.txt
cat E201_141_Enhancers_range_-8.5_-9.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a041_5hmC_RPKM_average_Range_-8.5_-9.txt
cat E201_142_Enhancers_range_-9_-9.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a042_5hmC_RPKM_average_Range_-9_-9.5.txt
cat E201_143_Enhancers_range_-9.5_-10.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a043_5hmC_RPKM_average_Range_-9.5_-10.txt
cat E201_144_Enhancers_range_-10_-10.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a044_5hmC_RPKM_average_Range_-10_-10.5.txt
cat E201_145_Enhancers_range_-10.5_-11.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a045_5hmC_RPKM_average_Range_-10.5_-11.txt
cat E201_146_Enhancers_range_-11_-11.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a046_5hmC_RPKM_average_Range_-11_-11.5.txt
cat E201_147_Enhancers_range_-11.5_-12.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a047_5hmC_RPKM_average_Range_-11.5_-12.txt
cat E201_148_Enhancers_range_-12_-12.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a048_5hmC_RPKM_average_Range_-12_-12.5.txt
cat E201_149_Enhancers_range_-12.5_-13.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a049_5hmC_RPKM_average_Range_-12.5_-13.txt
cat E201_150_Enhancers_range_-13_-13.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a050_5hmC_RPKM_average_Range_-13_-13.5.txt
cat E201_151_Enhancers_range_-13.5_-14.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a051_5hmC_RPKM_average_Range_-13.5_-14.txt
cat E201_152_Enhancers_range_-14_-14.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a052_5hmC_RPKM_average_Range_-14_-14.5.txt
cat E201_153_Enhancers_range_-14.5_-15.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a053_5hmC_RPKM_average_Range_-14.5_-15.txt
cat E201_154_Enhancers_range_-15_-15.5.bed | awk '{sum+=$14} END {print sum/NR}' > E201_a054_5hmC_RPKM_average_Range_-15_-15.5.txt

# Step29 Summarizing results in step28.
find -name 'E201_a0*.txt' -exec cat {} \; >E201_a060_average.csv
find -name 'E201_a0*.txt' >E201_a061_filename.csv
paste E201_a060_average.csv E201_a061_filename.csv >E201_a062_Average_of_5hmC_RPKM_in_ranges.csv

# Step30: Calculate the average of 5hmC random control (RPKM) in enhancers at each Log2(H3K27ac/H3K27me3) range.
cat E201_100_Enhancers_range_12_11.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a100_Rand5hmC_RPKM_average_Range_12_11.5.txt
cat E201_101_Enhancers_range_11.5_11.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a101_Rand5hmC_RPKM_average_Range_11.5_11.txt
cat E201_102_Enhancers_range_11_10.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a102_Rand5hmC_RPKM_average_Range_11_10.5.txt
cat E201_103_Enhancers_range_10.5_10.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a103_Rand5hmC_RPKM_average_Range_10.5_10.txt
cat E201_104_Enhancers_range_10_9.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a104_Rand5hmC_RPKM_average_Range_10_9.5.txt
cat E201_105_Enhancers_range_9.5_9.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a105_Rand5hmC_RPKM_average_Range_9.5_9.txt
cat E201_106_Enhancers_range_9_8.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a106_Rand5hmC_RPKM_average_Range_9_8.5.txt
cat E201_107_Enhancers_range_8.5_8.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a107_Rand5hmC_RPKM_average_Range_8.5_8.txt
cat E201_108_Enhancers_range_8_7.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a108_Rand5hmC_RPKM_average_Range_8_7.5.txt
cat E201_109_Enhancers_range_7.5_7.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a109_Rand5hmC_RPKM_average_Range_7.5_7.txt
cat E201_110_Enhancers_range_7_6.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a110_Rand5hmC_RPKM_average_Range_7_6.5.txt
cat E201_111_Enhancers_range_6.5_6.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a111_Rand5hmC_RPKM_average_Range_6.5_6.txt
cat E201_112_Enhancers_range_6_5.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a112_Rand5hmC_RPKM_average_Range_6_5.5.txt
cat E201_113_Enhancers_range_5.5_5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a113_Rand5hmC_RPKM_average_Range_5.5_5.txt
cat E201_114_Enhancers_range_5_4.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a114_Rand5hmC_RPKM_average_Range_5_4.5.txt
cat E201_115_Enhancers_range_4.5_4.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a115_Rand5hmC_RPKM_average_Range_4.5_4.txt
cat E201_116_Enhancers_range_4_3.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a116_Rand5hmC_RPKM_average_Range_4_3.5.txt
cat E201_117_Enhancers_range_3.5_3.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a117_Rand5hmC_RPKM_average_Range_3.5_3.txt
cat E201_118_Enhancers_range_3_2.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a118_Rand5hmC_RPKM_average_Range_3_2.5.txt
cat E201_119_Enhancers_range_2.5_2.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a119_Rand5hmC_RPKM_average_Range_2.5_2.txt
cat E201_120_Enhancers_range_2_1.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a120_Rand5hmC_RPKM_average_Range_2_1.5.txt
cat E201_121_Enhancers_range_1.5_1.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a121_Rand5hmC_RPKM_average_Range_1.5_1.txt
cat E201_122_Enhancers_range_1_0.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a122_Rand5hmC_RPKM_average_Range_1_0.5.txt
cat E201_123_Enhancers_range_0.5_0.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a123_Rand5hmC_RPKM_average_Range_0.5_0.txt
cat E201_124_Enhancers_range_0_-0.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a124_Rand5hmC_RPKM_average_Range_0_-0.5.txt
cat E201_125_Enhancers_range_-0.5_-1.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a125_Rand5hmC_RPKM_average_Range_-0.5_-1.txt
cat E201_126_Enhancers_range_-1_-1.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a126_Rand5hmC_RPKM_average_Range_-1_-1.5.txt
cat E201_127_Enhancers_range_-1.5_-2.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a127_Rand5hmC_RPKM_average_Range_-1.5_-2.txt
cat E201_128_Enhancers_range_-2_-2.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a128_Rand5hmC_RPKM_average_Range_-2_-2.5.txt
cat E201_129_Enhancers_range_-2.5_-3.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a129_Rand5hmC_RPKM_average_Range_-2.5_-3.txt
cat E201_130_Enhancers_range_-3_-3.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a130_Rand5hmC_RPKM_average_Range_-3_-3.5.txt
cat E201_131_Enhancers_range_-3.5_-4.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a131_Rand5hmC_RPKM_average_Range_-3.5_-4.txt
cat E201_132_Enhancers_range_-4_-4.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a132_Rand5hmC_RPKM_average_Range_-4_-4.5.txt
cat E201_133_Enhancers_range_-4.5_-5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a133_Rand5hmC_RPKM_average_Range_-4.5_-5.txt
cat E201_134_Enhancers_range_-5_-5.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a134_Rand5hmC_RPKM_average_Range_-5_-5.5.txt
cat E201_135_Enhancers_range_-5.5_-6.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a135_Rand5hmC_RPKM_average_Range_-5.5_-6.txt
cat E201_136_Enhancers_range_-6_-6.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a136_Rand5hmC_RPKM_average_Range_-6_-6.5.txt
cat E201_137_Enhancers_range_-6.5_-7.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a137_Rand5hmC_RPKM_average_Range_-6.5_-7.txt
cat E201_138_Enhancers_range_-7_-7.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a138_Rand5hmC_RPKM_average_Range_-7_-7.5.txt
cat E201_139_Enhancers_range_-7.5_-8.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a139_Rand5hmC_RPKM_average_Range_-7.5_-8.txt
cat E201_140_Enhancers_range_-8_-8.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a140_Rand5hmC_RPKM_average_Range_-8_-8.5.txt
cat E201_141_Enhancers_range_-8.5_-9.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a141_Rand5hmC_RPKM_average_Range_-8.5_-9.txt
cat E201_142_Enhancers_range_-9_-9.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a142_Rand5hmC_RPKM_average_Range_-9_-9.5.txt
cat E201_143_Enhancers_range_-9.5_-10.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a143_Rand5hmC_RPKM_average_Range_-9.5_-10.txt
cat E201_144_Enhancers_range_-10_-10.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a144_Rand5hmC_RPKM_average_Range_-10_-10.5.txt
cat E201_145_Enhancers_range_-10.5_-11.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a145_Rand5hmC_RPKM_average_Range_-10.5_-11.txt
cat E201_146_Enhancers_range_-11_-11.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a146_Rand5hmC_RPKM_average_Range_-11_-11.5.txt
cat E201_147_Enhancers_range_-11.5_-12.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a147_Rand5hmC_RPKM_average_Range_-11.5_-12.txt
cat E201_148_Enhancers_range_-12_-12.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a148_Rand5hmC_RPKM_average_Range_-12_-12.5.txt
cat E201_149_Enhancers_range_-12.5_-13.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a149_Rand5hmC_RPKM_average_Range_-12.5_-13.txt
cat E201_150_Enhancers_range_-13_-13.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a150_Rand5hmC_RPKM_average_Range_-13_-13.5.txt
cat E201_151_Enhancers_range_-13.5_-14.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a151_Rand5hmC_RPKM_average_Range_-13.5_-14.txt
cat E201_152_Enhancers_range_-14_-14.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a152_Rand5hmC_RPKM_average_Range_-14_-14.5.txt
cat E201_153_Enhancers_range_-14.5_-15.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a153_Rand5hmC_RPKM_average_Range_-14.5_-15.txt
cat E201_154_Enhancers_range_-15_-15.5.bed | awk '{sum+=$15} END {print sum/NR}' > E201_a154_Rand5hmC_RPKM_average_Range_-15_-15.5.txt

# Step31: Summarizing results in step30.
find -name 'E201_a1*.txt' -exec cat {} \; >E201_a160_average.csv
find -name 'E201_a1*.txt' >E201_a161_filename.csv
paste E201_a160_average.csv E201_a161_filename.csv >E201_a162_Average_of_Rand5hmC_RPKM_in_ranges.csv
