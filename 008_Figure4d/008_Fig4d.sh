#!/usr/bin/bash

# Step1: Download HACER dataset, enhancers-promoter physical interaction.
wget http://bioinfo.vanderbilt.edu/AE/HACER/download/T1.txt

# Step2: Convert the HACER dataset to BED format.
cat T1.txt | awk 'BEGIN {OFS="\t"}; {print $2, $3, $4, $1, $13}' >a001.bed

# Step3: HACER is on hg19 genome assembly. Here, hg19 is converted into hg38 genome assembly.
wget http://hgdownload.soe.ucsc.edu/goldenPath/hg19/liftOver/hg19ToHg38.over.chain.gz
module load crossmap
crossmap bed hg19ToHg38.over.chain.gz a001.bed a002.bed

# Step4: Download promoter dataset.
wget ftp://ccg.epfl.ch/epdnew/human/current/Hs_EPDnew.bed

# Step5: Remove extra info in Promoter BED file.
cat Hs_EPDnew.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2, $3, $4}' >a003.bed

# Step6: Extract gene symbol from the Promoter BED file.
cat Hs_EPDnew.bed | awk 'BEGIN {OFS="\t"}; {print $4}' >a004.bed
sed 's/_*//g' a004.bed >a005.bed

# Step7: Add the extracted gene symbol to the Promoter BED file.
paste a003.bed a005.bed >a006.bed

# Step8: Adjust length of each promoter region to +/-1,000 bp.
cat a006.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2-970, $3+970, $4, $5}' >a007.bed

# Step9: Combine the HACER BED file and the Promoter BED file.
cat a002.bed a007.bed >a008.bed

# Step10: Add length info of promoters and enhancers in column 6.
cat a008.bed | awk 'BEGIN {OFS="\t"}; { print $1, $2, $3, $4, $5, $3-$2 }' >a009.bed

# Step11: HACER contains duplicates. Here, the duplicates are removed.
cat a009.bed | awk '!a[$1,$2,$3,$5]++' >a010.bed

# Step12: Download BAM files of H3K27ac and H3K27me3 bulk ChIP-seq (K562).
wget https://www.encodeproject.org/files/ENCFF301TVL/@@download/ENCFF301TVL.bam -O H3K27ac_ENCFF301TVL_GRCh38.bam
wget https://www.encodeproject.org/files/ENCFF330YFF/@@download/ENCFF330YFF.bam -O H3K27me3_ENCFF330YFF_GRCh38.bam

# Step13: Index files of the downloaded BAM files are generated.
module load samtools
samtools index H3K27ac_ENCFF301TVL_GRCh38.bam
samtools index H3K27me3_ENCFF330YFF_GRCh38.bam

# Step14: Count reads of bulk ChIP-seq in promoters and enhancers.
module load bedtools
bedtools multicov -bams H3K27ac_ENCFF301TVL_GRCh38.bam H3K27me3_ENCFF330YFF_GRCh38.bam -bed a010.bed >a011.bed

# Step15: Count reads of single-cell datasets in promoters and enhancers.
bedtools intersect -a a011.bed -b z100_H3K27ac_Rep1-3_SC1-8_PutativeSignals.bed -c >z300.bed
bedtools intersect -a z300.bed -b z101_H3K27me3_Rep1-3_SC1-8_PutativeSignals.bed -c >z301.bed

# Step16: Normalize read counts to RPKM.
# Input reads of H3K27ac_ENCFF301TVL_GRCh38.bam : 9,761,907
# Input reads of H3K27me3_ENCFF330YFF_GRCh38.bam : 20,135,251
# Input reads of z100_H3K27ac_Rep1-3_SC1-8_PutativeSignals.bed : 4,462,017
# Input reads of z101_H3K27me3_Rep1-3_SC1-8_PutativeSignals.bed : 3,198,454 
cat z301.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, $7/$6*1000/9761907*1000000, $8/$6*1000/20135251*1000000, $9/$6*1000/4462017*1000000, $10/$6*1000/3198454*1000000, "" }' >a012.bed

# Step17: Convert 0 to 0.01 to avoid errors in calculation of H3K27ac/H3K27me3.
sed "s/\t0\t/\t0.01\t/g" a012.bed >b001.bed
sed "s/\t0\t/\t0.01\t/g" b001.bed >b002.bed

# Step18: Calculate log2(H3K27ac/H3K27me3).
cat b002.bed | awk  'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $6, log($7/$8)/log(2), log($9/$10)/log(2), "" }' >b003.bed
