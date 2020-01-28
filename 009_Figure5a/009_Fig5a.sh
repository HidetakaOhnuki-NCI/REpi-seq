#!/usr/bin/bash

# Step1. Download datasets of H3K27ac and H3K27me3 bulk ChIP-seq from ENCODE.
wget https://www.encodeproject.org/files/ENCFF301TVL/@@download/ENCFF301TVL.bam -O a001_K562_ENCFF301TVL.bam
wget https://www.encodeproject.org/files/ENCFF190OWE/@@download/ENCFF190OWE.bam -O a002_K562_ENCFF190OWE.bam
wget https://www.encodeproject.org/files/ENCFF879BWC/@@download/ENCFF879BWC.bam -O a003_K562_ENCFF879BWC.bam
wget https://www.encodeproject.org/files/ENCFF692KQZ/@@download/ENCFF692KQZ.bam -O a004_K562_ENCFF692KQZ.bam
wget https://www.encodeproject.org/files/ENCFF072ZAR/@@download/ENCFF072ZAR.bam -O a005_DND-41_ENCFF072ZAR.bam
wget https://www.encodeproject.org/files/ENCFF024MTX/@@download/ENCFF024MTX.bam -O a006_DND-41_ENCFF024MTX.bam
wget https://www.encodeproject.org/files/ENCFF854LWC/@@download/ENCFF854LWC.bam -O a007_DND-41_ENCFF854LWC.bam
wget https://www.encodeproject.org/files/ENCFF700KKS/@@download/ENCFF700KKS.bam -O a008_DND-41_ENCFF700KKS.bam
wget https://www.encodeproject.org/files/ENCFF854WUY/@@download/ENCFF854WUY.bam -O a009_Karpas-422_ENCFF854WUY.bam
wget https://www.encodeproject.org/files/ENCFF960YXZ/@@download/ENCFF960YXZ.bam -O a010_Karpas-422_ENCFF960YXZ.bam
wget https://www.encodeproject.org/files/ENCFF949LGB/@@download/ENCFF949LGB.bam -O a011_Karpas-422_ENCFF949LGB.bam
wget https://www.encodeproject.org/files/ENCFF813CKH/@@download/ENCFF813CKH.bam -O a012_Karpas-422_ENCFF813CKH.bam
wget https://www.encodeproject.org/files/ENCFF241NJQ/@@download/ENCFF241NJQ.bam -O a013_OCI-LY1_ENCFF241NJQ.bam
wget https://www.encodeproject.org/files/ENCFF401MIF/@@download/ENCFF401MIF.bam -O a014_OCI-LY1_ENCFF401MIF.bam
wget https://www.encodeproject.org/files/ENCFF572KGX/@@download/ENCFF572KGX.bam -O a015_OCI-LY1_ENCFF572KGX.bam
wget https://www.encodeproject.org/files/ENCFF503PYV/@@download/ENCFF503PYV.bam -O a016_OCI-LY1_ENCFF503PYV.bam
wget https://www.encodeproject.org/files/ENCFF948GTC/@@download/ENCFF948GTC.bam -O a017_GM12878_ENCFF948GTC.bam
wget https://www.encodeproject.org/files/ENCFF796DDM/@@download/ENCFF796DDM.bam -O a018_GM12878_ENCFF796DDM.bam
wget https://www.encodeproject.org/files/ENCFF804NCH/@@download/ENCFF804NCH.bam -O a019_GM12878_ENCFF804NCH.bam
wget https://www.encodeproject.org/files/ENCFF927XRX/@@download/ENCFF927XRX.bam -O a020_GM12878_ENCFF927XRX.bam
wget https://www.encodeproject.org/files/ENCFF605DAC/@@download/ENCFF605DAC.bam -O a021_MM1S_ENCFF605DAC.bam
wget https://www.encodeproject.org/files/ENCFF712XDN/@@download/ENCFF712XDN.bam -O a022_MM1S_ENCFF712XDN.bam
wget https://www.encodeproject.org/files/ENCFF937ZTU/@@download/ENCFF937ZTU.bam -O a023_MM1S_ENCFF937ZTU.bam
wget https://www.encodeproject.org/files/ENCFF956YCD/@@download/ENCFF956YCD.bam -O a024_MM1S_ENCFF956YCD.bam
wget https://www.encodeproject.org/files/ENCFF607VEF/@@download/ENCFF607VEF.bam -O a025_KMS-11_ENCFF607VEF.bam
wget https://www.encodeproject.org/files/ENCFF283SMP/@@download/ENCFF283SMP.bam -O a026_KMS-11_ENCFF283SMP.bam
wget https://www.encodeproject.org/files/ENCFF820EBJ/@@download/ENCFF820EBJ.bam -O a027_KMS-11_ENCFF820EBJ.bam
wget https://www.encodeproject.org/files/ENCFF891YVY/@@download/ENCFF891YVY.bam -O a028_KMS-11_ENCFF891YVY.bam
wget https://www.encodeproject.org/files/ENCFF132KAK/@@download/ENCFF132KAK.bam -O a029_OCI-LY3_ENCFF132KAK.bam
wget https://www.encodeproject.org/files/ENCFF286KFY/@@download/ENCFF286KFY.bam -O a030_OCI-LY3_ENCFF286KFY.bam
wget https://www.encodeproject.org/files/ENCFF988VMF/@@download/ENCFF988VMF.bam -O a031_OCI-LY3_ENCFF988VMF.bam
wget https://www.encodeproject.org/files/ENCFF818WQQ/@@download/ENCFF818WQQ.bam -O a032_OCI-LY3_ENCFF818WQQ.bam
wget https://www.encodeproject.org/files/ENCFF479VLR/@@download/ENCFF479VLR.bam -O a033_DOHH2_ENCFF479VLR.bam
wget https://www.encodeproject.org/files/ENCFF370MOM/@@download/ENCFF370MOM.bam -O a034_DOHH2_ENCFF370MOM.bam
wget https://www.encodeproject.org/files/ENCFF079AQF/@@download/ENCFF079AQF.bam -O a035_DOHH2_ENCFF079AQF.bam
wget https://www.encodeproject.org/files/ENCFF133EQW/@@download/ENCFF133EQW.bam -O a036_DOHH2_ENCFF133EQW.bam
wget https://www.encodeproject.org/files/ENCFF070LFK/@@download/ENCFF070LFK.bam -O a037_SU-DHL-6_ENCFF070LFK.bam
wget https://www.encodeproject.org/files/ENCFF182RDK/@@download/ENCFF182RDK.bam -O a038_SU-DHL-6_ENCFF182RDK.bam
wget https://www.encodeproject.org/files/ENCFF730NKH/@@download/ENCFF730NKH.bam -O a039_SU-DHL-6_ENCFF730NKH.bam
wget https://www.encodeproject.org/files/ENCFF075XIO/@@download/ENCFF075XIO.bam -O a040_SU-DHL-6_ENCFF075XIO.bam
wget https://www.encodeproject.org/files/ENCFF365LRL/@@download/ENCFF365LRL.bam -O a041_B_cell_ENCFF365LRL.bam
wget https://www.encodeproject.org/files/ENCFF326COY/@@download/ENCFF326COY.bam -O a042_B_cell_ENCFF326COY.bam
wget https://www.encodeproject.org/files/ENCFF013CQR/@@download/ENCFF013CQR.bam -O a043_B_cell_ENCFF013CQR.bam
wget https://www.encodeproject.org/files/ENCFF578PVF/@@download/ENCFF578PVF.bam -O a044_B_cell_ENCFF578PVF.bam
wget https://www.encodeproject.org/files/ENCFF474VOO/@@download/ENCFF474VOO.bam -O a045_B_cell_ENCFF474VOO.bam
wget https://www.encodeproject.org/files/ENCFF454ZLD/@@download/ENCFF454ZLD.bam -O a046_B_cell_ENCFF454ZLD.bam
wget https://www.encodeproject.org/files/ENCFF831LVQ/@@download/ENCFF831LVQ.bam -O a047_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_ENCFF831LVQ.bam
wget https://www.encodeproject.org/files/ENCFF883IRG/@@download/ENCFF883IRG.bam -O a048_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_ENCFF883IRG.bam
wget https://www.encodeproject.org/files/ENCFF733XRG/@@download/ENCFF733XRG.bam -O a049_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_ENCFF733XRG.bam
wget https://www.encodeproject.org/files/ENCFF663FZE/@@download/ENCFF663FZE.bam -O a050_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_ENCFF663FZE.bam
wget https://www.encodeproject.org/files/ENCFF422BYQ/@@download/ENCFF422BYQ.bam -O a051_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_ENCFF422BYQ.bam
wget https://www.encodeproject.org/files/ENCFF034VOA/@@download/ENCFF034VOA.bam -O a052_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_ENCFF034VOA.bam
wget https://www.encodeproject.org/files/ENCFF604IOL/@@download/ENCFF604IOL.bam -O a053_natural_killer_cell_ENCFF604IOL.bam
wget https://www.encodeproject.org/files/ENCFF853ZML/@@download/ENCFF853ZML.bam -O a054_natural_killer_cell_ENCFF853ZML.bam
wget https://www.encodeproject.org/files/ENCFF680VNR/@@download/ENCFF680VNR.bam -O a055_CD14-positive_monocyte_ENCFF680VNR.bam
wget https://www.encodeproject.org/files/ENCFF145UVW/@@download/ENCFF145UVW.bam -O a056_CD14-positive_monocyte_ENCFF145UVW.bam
wget https://www.encodeproject.org/files/ENCFF329AXT/@@download/ENCFF329AXT.bam -O a057_CD14-positive_monocyte_ENCFF329AXT.bam
wget https://www.encodeproject.org/files/ENCFF619JPI/@@download/ENCFF619JPI.bam -O a058_CD14-positive_monocyte_ENCFF619JPI.bam
wget https://www.encodeproject.org/files/ENCFF835ZFV/@@download/ENCFF835ZFV.bam -O a059_CD14-positive_monocyte_ENCFF835ZFV.bam
wget https://www.encodeproject.org/files/ENCFF711ACC/@@download/ENCFF711ACC.bam -O a060_CD14-positive_monocyte_ENCFF711ACC.bam
wget https://www.encodeproject.org/files/ENCFF956SSC/@@download/ENCFF956SSC.bam -O a061_CD4-positive_alpha-beta_T_cell_ENCFF956SSC.bam
wget https://www.encodeproject.org/files/ENCFF714KZL/@@download/ENCFF714KZL.bam -O a062_CD4-positive_alpha-beta_T_cell_ENCFF714KZL.bam
wget https://www.encodeproject.org/files/ENCFF082MIE/@@download/ENCFF082MIE.bam -O a063_CD4-positive_alpha-beta_T_cell_ENCFF082MIE.bam
wget https://www.encodeproject.org/files/ENCFF624YMM/@@download/ENCFF624YMM.bam -O a064_CD4-positive_alpha-beta_T_cell_ENCFF624YMM.bam
wget https://www.encodeproject.org/files/ENCFF914QOY/@@download/ENCFF914QOY.bam -O a065_CD4-positive_alpha-beta_memory_T_cell_ENCFF914QOY.bam
wget https://www.encodeproject.org/files/ENCFF504RQX/@@download/ENCFF504RQX.bam -O a066_CD4-positive_alpha-beta_memory_T_cell_ENCFF504RQX.bam
wget https://www.encodeproject.org/files/ENCFF056LBY/@@download/ENCFF056LBY.bam -O a067_CD4-positive_alpha-beta_memory_T_cell_ENCFF056LBY.bam
wget https://www.encodeproject.org/files/ENCFF722VPO/@@download/ENCFF722VPO.bam -O a068_CD4-positive_alpha-beta_memory_T_cell_ENCFF722VPO.bam
wget https://www.encodeproject.org/files/ENCFF817XVA/@@download/ENCFF817XVA.bam -O a069_CD4-positive_alpha-beta_memory_T_cell_ENCFF817XVA.bam
wget https://www.encodeproject.org/files/ENCFF974TXV/@@download/ENCFF974TXV.bam -O a070_CD4-positive_alpha-beta_memory_T_cell_ENCFF974TXV.bam
wget https://www.encodeproject.org/files/ENCFF611AQQ/@@download/ENCFF611AQQ.bam -O a071_CD4-positive_CD25-positive_alpha-beta_regulatory_T_cell_ENCFF611AQQ.bam
wget https://www.encodeproject.org/files/ENCFF864EUW/@@download/ENCFF864EUW.bam -O a072_CD4-positive_CD25-positive_alpha-beta_regulatory_T_cell_ENCFF864EUW.bam
wget https://www.encodeproject.org/files/ENCFF633ZOG/@@download/ENCFF633ZOG.bam -O a073_CD8-positive_alpha-beta_memory_T_cell_ENCFF633ZOG.bam
wget https://www.encodeproject.org/files/ENCFF407DTQ/@@download/ENCFF407DTQ.bam -O a074_CD8-positive_alpha-beta_memory_T_cell_ENCFF407DTQ.bam
wget https://www.encodeproject.org/files/ENCFF449YKU/@@download/ENCFF449YKU.bam -O a075_CD8-positive_alpha-beta_T_cell_ENCFF449YKU.bam
wget https://www.encodeproject.org/files/ENCFF783NPA/@@download/ENCFF783NPA.bam -O a076_CD8-positive_alpha-beta_T_cell_ENCFF783NPA.bam
wget https://www.encodeproject.org/files/ENCFF232SFI/@@download/ENCFF232SFI.bam -O a077_CD8-positive_alpha-beta_T_cell_ENCFF232SFI.bam
wget https://www.encodeproject.org/files/ENCFF179XXQ/@@download/ENCFF179XXQ.bam -O a078_CD8-positive_alpha-beta_T_cell_ENCFF179XXQ.bam
wget https://www.encodeproject.org/files/ENCFF346ZJV/@@download/ENCFF346ZJV.bam -O a079_CD8-positive_alpha-beta_T_cell_ENCFF346ZJV.bam
wget https://www.encodeproject.org/files/ENCFF792BHX/@@download/ENCFF792BHX.bam -O a080_CD8-positive_alpha-beta_T_cell_ENCFF792BHX.bam
wget https://www.encodeproject.org/files/ENCFF047LSV/@@download/ENCFF047LSV.bam -O a081_common_myeloid_progenitor_CD34-positive_ENCFF047LSV.bam
wget https://www.encodeproject.org/files/ENCFF792JAG/@@download/ENCFF792JAG.bam -O a082_common_myeloid_progenitor_CD34-positive_ENCFF792JAG.bam
wget https://www.encodeproject.org/files/ENCFF823HMZ/@@download/ENCFF823HMZ.bam -O a083_common_myeloid_progenitor_CD34-positive_ENCFF823HMZ.bam
wget https://www.encodeproject.org/files/ENCFF931STS/@@download/ENCFF931STS.bam -O a084_common_myeloid_progenitor_CD34-positive_ENCFF931STS.bam
wget https://www.encodeproject.org/files/ENCFF150ZJR/@@download/ENCFF150ZJR.bam -O a085_common_myeloid_progenitor_CD34-positive_ENCFF150ZJR.bam
wget https://www.encodeproject.org/files/ENCFF128GDQ/@@download/ENCFF128GDQ.bam -O a086_common_myeloid_progenitor_CD34-positive_ENCFF128GDQ.bam
wget https://www.encodeproject.org/files/ENCFF577PRS/@@download/ENCFF577PRS.bam -O a087_effector_memory_CD4-positive_alpha-beta_T_cell_ENCFF577PRS.bam
wget https://www.encodeproject.org/files/ENCFF624RVG/@@download/ENCFF624RVG.bam -O a088_effector_memory_CD4-positive_alpha-beta_T_cell_ENCFF624RVG.bam
wget https://www.encodeproject.org/files/ENCFF652IFU/@@download/ENCFF652IFU.bam -O a089_effector_memory_CD4-positive_alpha-beta_T_cell_ENCFF652IFU.bam
wget https://www.encodeproject.org/files/ENCFF120QQK/@@download/ENCFF120QQK.bam -O a090_effector_memory_CD4-positive_alpha-beta_T_cell_ENCFF120QQK.bam
wget https://www.encodeproject.org/files/ENCFF810CHL/@@download/ENCFF810CHL.bam -O a091_neutrophil_ENCFF810CHL.bam
wget https://www.encodeproject.org/files/ENCFF073HXA/@@download/ENCFF073HXA.bam -O a092_neutrophil_ENCFF073HXA.bam
wget https://www.encodeproject.org/files/ENCFF191UXI/@@download/ENCFF191UXI.bam -O a093_neutrophil_ENCFF191UXI.bam
wget https://www.encodeproject.org/files/ENCFF517KOQ/@@download/ENCFF517KOQ.bam -O a094_neutrophil_ENCFF517KOQ.bam
wget https://www.encodeproject.org/files/ENCFF687LPA/@@download/ENCFF687LPA.bam -O a095_peripheral_blood_mononuclear_cell_ENCFF687LPA.bam
wget https://www.encodeproject.org/files/ENCFF139VFB/@@download/ENCFF139VFB.bam -O a096_peripheral_blood_mononuclear_cell_ENCFF139VFB.bam
wget https://www.encodeproject.org/files/ENCFF503WNJ/@@download/ENCFF503WNJ.bam -O a097_peripheral_blood_mononuclear_cell_ENCFF503WNJ.bam
wget https://www.encodeproject.org/files/ENCFF361XRW/@@download/ENCFF361XRW.bam -O a098_peripheral_blood_mononuclear_cell_ENCFF361XRW.bam
wget https://www.encodeproject.org/files/ENCFF350ISY/@@download/ENCFF350ISY.bam -O a099_peripheral_blood_mononuclear_cell_ENCFF350ISY.bam
wget https://www.encodeproject.org/files/ENCFF257UIH/@@download/ENCFF257UIH.bam -O a100_peripheral_blood_mononuclear_cell_ENCFF257UIH.bam
wget https://www.encodeproject.org/files/ENCFF736FZD/@@download/ENCFF736FZD.bam -O a101_T-cell_ENCFF736FZD.bam
wget https://www.encodeproject.org/files/ENCFF165YKT/@@download/ENCFF165YKT.bam -O a102_T-cell_ENCFF165YKT.bam
wget https://www.encodeproject.org/files/ENCFF749JAV/@@download/ENCFF749JAV.bam -O a103_T-helper_17_cell_ENCFF749JAV.bam
wget https://www.encodeproject.org/files/ENCFF628IWA/@@download/ENCFF628IWA.bam -O a104_T-helper_17_cell_ENCFF628IWA.bam
wget https://www.encodeproject.org/files/ENCFF181AML/@@download/ENCFF181AML.bam -O a105_MCF-7_ENCFF181AML.bam
wget https://www.encodeproject.org/files/ENCFF351EJX/@@download/ENCFF351EJX.bam -O a106_MCF-7_ENCFF351EJX.bam
wget https://www.encodeproject.org/files/ENCFF224RMQ/@@download/ENCFF224RMQ.bam -O a107_MCF-7_ENCFF224RMQ.bam
wget https://www.encodeproject.org/files/ENCFF519ABK/@@download/ENCFF519ABK.bam -O a108_MCF-7_ENCFF519ABK.bam
wget https://www.encodeproject.org/files/ENCFF096GIM/@@download/ENCFF096GIM.bam -O a109_MCF-7_ENCFF096GIM.bam
wget https://www.encodeproject.org/files/ENCFF997VYW/@@download/ENCFF997VYW.bam -O a110_MCF-7_ENCFF997VYW.bam
wget https://www.encodeproject.org/files/ENCFF692SZU/@@download/ENCFF692SZU.bam -O a111_MCF-7_ENCFF692SZU.bam
wget https://www.encodeproject.org/files/ENCFF611UYK/@@download/ENCFF611UYK.bam -O a112_MCF-7_ENCFF611UYK.bam
wget https://www.encodeproject.org/files/ENCFF689GKI/@@download/ENCFF689GKI.bam -O a113_HCT116_ENCFF689GKI.bam
wget https://www.encodeproject.org/files/ENCFF293SFY/@@download/ENCFF293SFY.bam -O a114_HCT116_ENCFF293SFY.bam
wget https://www.encodeproject.org/files/ENCFF340TPS/@@download/ENCFF340TPS.bam -O a115_HCT116_ENCFF340TPS.bam
wget https://www.encodeproject.org/files/ENCFF933YRM/@@download/ENCFF933YRM.bam -O a116_HCT116_ENCFF933YRM.bam
wget https://www.encodeproject.org/files/ENCFF218BUW/@@download/ENCFF218BUW.bam -O a117_HeLa-S3_ENCFF218BUW.bam
wget https://www.encodeproject.org/files/ENCFF284GFW/@@download/ENCFF284GFW.bam -O a118_HeLa-S3_ENCFF284GFW.bam
wget https://www.encodeproject.org/files/ENCFF113QJM/@@download/ENCFF113QJM.bam -O a119_HeLa-S3_ENCFF113QJM.bam
wget https://www.encodeproject.org/files/ENCFF928PZN/@@download/ENCFF928PZN.bam -O a120_HeLa-S3_ENCFF928PZN.bam
wget https://www.encodeproject.org/files/ENCFF805KGN/@@download/ENCFF805KGN.bam -O a121_HepG2_ENCFF805KGN.bam
wget https://www.encodeproject.org/files/ENCFF394DQA/@@download/ENCFF394DQA.bam -O a122_HepG2_ENCFF394DQA.bam
wget https://www.encodeproject.org/files/ENCFF686HFQ/@@download/ENCFF686HFQ.bam -O a123_HepG2_ENCFF686HFQ.bam
wget https://www.encodeproject.org/files/ENCFF030HAG/@@download/ENCFF030HAG.bam -O a124_HepG2_ENCFF030HAG.bam
wget https://www.encodeproject.org/files/ENCFF299IGN/@@download/ENCFF299IGN.bam -O a125_PC-9_ENCFF299IGN.bam
wget https://www.encodeproject.org/files/ENCFF217CGZ/@@download/ENCFF217CGZ.bam -O a126_PC-9_ENCFF217CGZ.bam
wget https://www.encodeproject.org/files/ENCFF655AIP/@@download/ENCFF655AIP.bam -O a127_PC-9_ENCFF655AIP.bam
wget https://www.encodeproject.org/files/ENCFF014ESB/@@download/ENCFF014ESB.bam -O a128_PC-9_ENCFF014ESB.bam
wget https://www.encodeproject.org/files/ENCFF384KMQ/@@download/ENCFF384KMQ.bam -O a129_Panc1_ENCFF384KMQ.bam
wget https://www.encodeproject.org/files/ENCFF714IMC/@@download/ENCFF714IMC.bam -O a130_Panc1_ENCFF714IMC.bam
wget https://www.encodeproject.org/files/ENCFF960KET/@@download/ENCFF960KET.bam -O a131_Panc1_ENCFF960KET.bam
wget https://www.encodeproject.org/files/ENCFF683OAH/@@download/ENCFF683OAH.bam -O a132_Panc1_ENCFF683OAH.bam
wget https://www.encodeproject.org/files/ENCFF420CUB/@@download/ENCFF420CUB.bam -O a133_ACC112_ENCFF420CUB.bam
wget https://www.encodeproject.org/files/ENCFF086FXU/@@download/ENCFF086FXU.bam -O a134_ACC112_ENCFF086FXU.bam
wget https://www.encodeproject.org/files/ENCFF567QOT/@@download/ENCFF567QOT.bam -O a135_ACC112_ENCFF567QOT.bam
wget https://www.encodeproject.org/files/ENCFF316QCM/@@download/ENCFF316QCM.bam -O a136_ACC112_ENCFF316QCM.bam
wget https://www.encodeproject.org/files/ENCFF474QFK/@@download/ENCFF474QFK.bam -O a137_PC-3_ENCFF474QFK.bam
wget https://www.encodeproject.org/files/ENCFF127CPB/@@download/ENCFF127CPB.bam -O a138_PC-3_ENCFF127CPB.bam
wget https://www.encodeproject.org/files/ENCFF174JIG/@@download/ENCFF174JIG.bam -O a139_PC-3_ENCFF174JIG.bam
wget https://www.encodeproject.org/files/ENCFF347INE/@@download/ENCFF347INE.bam -O a140_PC-3_ENCFF347INE.bam
wget https://www.encodeproject.org/files/ENCFF659HWC/@@download/ENCFF659HWC.bam -O a141_SK-N-SH_ENCFF659HWC.bam
wget https://www.encodeproject.org/files/ENCFF690PRE/@@download/ENCFF690PRE.bam -O a142_SK-N-SH_ENCFF690PRE.bam
wget https://www.encodeproject.org/files/ENCFF879LRT/@@download/ENCFF879LRT.bam -O a143_SK-N-SH_ENCFF879LRT.bam
wget https://www.encodeproject.org/files/ENCFF897EXE/@@download/ENCFF897EXE.bam -O a144_SK-N-SH_ENCFF897EXE.bam
wget https://www.encodeproject.org/files/ENCFF380OTV/@@download/ENCFF380OTV.bam -O a145_SK-N-SH_ENCFF380OTV.bam
wget https://www.encodeproject.org/files/ENCFF614FPH/@@download/ENCFF614FPH.bam -O a146_SK-N-SH_ENCFF614FPH.bam
wget https://www.encodeproject.org/files/ENCFF775DHW/@@download/ENCFF775DHW.bam -O a147_SK-N-SH_ENCFF775DHW.bam
wget https://www.encodeproject.org/files/ENCFF762NUT/@@download/ENCFF762NUT.bam -O a148_SK-N-SH_ENCFF762NUT.bam
wget https://www.encodeproject.org/files/ENCFF737FZT/@@download/ENCFF737FZT.bam -O a149_A673_ENCFF737FZT.bam
wget https://www.encodeproject.org/files/ENCFF406AQZ/@@download/ENCFF406AQZ.bam -O a150_A673_ENCFF406AQZ.bam
wget https://www.encodeproject.org/files/ENCFF918ACD/@@download/ENCFF918ACD.bam -O a151_A673_ENCFF918ACD.bam
wget https://www.encodeproject.org/files/ENCFF480BYU/@@download/ENCFF480BYU.bam -O a152_A673_ENCFF480BYU.bam
wget https://www.encodeproject.org/files/ENCFF988TNK/@@download/ENCFF988TNK.bam -O a153_mammary_epithelial_cell_ENCFF988TNK.bam
wget https://www.encodeproject.org/files/ENCFF015OVW/@@download/ENCFF015OVW.bam -O a154_mammary_epithelial_cell_ENCFF015OVW.bam
wget https://www.encodeproject.org/files/ENCFF068FTW/@@download/ENCFF068FTW.bam -O a155_mammary_epithelial_cell_ENCFF068FTW.bam
wget https://www.encodeproject.org/files/ENCFF843LLA/@@download/ENCFF843LLA.bam -O a156_mammary_epithelial_cell_ENCFF843LLA.bam
wget https://www.encodeproject.org/files/ENCFF618ZNM/@@download/ENCFF618ZNM.bam -O a157_AG04450_ENCFF618ZNM.bam
wget https://www.encodeproject.org/files/ENCFF854DNJ/@@download/ENCFF854DNJ.bam -O a158_AG04450_ENCFF854DNJ.bam
wget https://www.encodeproject.org/files/ENCFF084MDC/@@download/ENCFF084MDC.bam -O a159_astrocyte_ENCFF084MDC.bam
wget https://www.encodeproject.org/files/ENCFF442ZRV/@@download/ENCFF442ZRV.bam -O a160_astrocyte_ENCFF442ZRV.bam
wget https://www.encodeproject.org/files/ENCFF496OLR/@@download/ENCFF496OLR.bam -O a161_astrocyte_ENCFF496OLR.bam
wget https://www.encodeproject.org/files/ENCFF757AUJ/@@download/ENCFF757AUJ.bam -O a162_astrocyte_ENCFF757AUJ.bam
wget https://www.encodeproject.org/files/ENCFF450EBG/@@download/ENCFF450EBG.bam -O a163_endothelial_cell_of_umbilical_vein_ENCFF450EBG.bam
wget https://www.encodeproject.org/files/ENCFF897WVH/@@download/ENCFF897WVH.bam -O a164_endothelial_cell_of_umbilical_vein_ENCFF897WVH.bam
wget https://www.encodeproject.org/files/ENCFF851NCB/@@download/ENCFF851NCB.bam -O a165_endothelial_cell_of_umbilical_vein_ENCFF851NCB.bam
wget https://www.encodeproject.org/files/ENCFF944GCZ/@@download/ENCFF944GCZ.bam -O a166_endothelial_cell_of_umbilical_vein_ENCFF944GCZ.bam
wget https://www.encodeproject.org/files/ENCFF420ZAI/@@download/ENCFF420ZAI.bam -O a167_endothelial_cell_of_umbilical_vein_ENCFF420ZAI.bam
wget https://www.encodeproject.org/files/ENCFF764MJN/@@download/ENCFF764MJN.bam -O a168_endothelial_cell_of_umbilical_vein_ENCFF764MJN.bam
wget https://www.encodeproject.org/files/ENCFF195BUK/@@download/ENCFF195BUK.bam -O a169_fibroblast_of_breast_ENCFF195BUK.bam
wget https://www.encodeproject.org/files/ENCFF306HNX/@@download/ENCFF306HNX.bam -O a170_fibroblast_of_breast_ENCFF306HNX.bam
wget https://www.encodeproject.org/files/ENCFF772ADP/@@download/ENCFF772ADP.bam -O a171_fibroblast_of_breast_ENCFF772ADP.bam
wget https://www.encodeproject.org/files/ENCFF456KBT/@@download/ENCFF456KBT.bam -O a172_fibroblast_of_breast_ENCFF456KBT.bam
wget https://www.encodeproject.org/files/ENCFF228BTY/@@download/ENCFF228BTY.bam -O a173_fibroblast_of_dermis_ENCFF228BTY.bam
wget https://www.encodeproject.org/files/ENCFF678BZW/@@download/ENCFF678BZW.bam -O a174_fibroblast_of_dermis_ENCFF678BZW.bam
wget https://www.encodeproject.org/files/ENCFF680YEV/@@download/ENCFF680YEV.bam -O a175_fibroblast_of_dermis_ENCFF680YEV.bam
wget https://www.encodeproject.org/files/ENCFF275IVB/@@download/ENCFF275IVB.bam -O a176_fibroblast_of_dermis_ENCFF275IVB.bam
wget https://www.encodeproject.org/files/ENCFF440FYI/@@download/ENCFF440FYI.bam -O a177_fibroblast_of_lung_ENCFF440FYI.bam
wget https://www.encodeproject.org/files/ENCFF834MYP/@@download/ENCFF834MYP.bam -O a178_fibroblast_of_lung_ENCFF834MYP.bam
wget https://www.encodeproject.org/files/ENCFF071QAT/@@download/ENCFF071QAT.bam -O a179_fibroblast_of_lung_ENCFF071QAT.bam
wget https://www.encodeproject.org/files/ENCFF535LEC/@@download/ENCFF535LEC.bam -O a180_fibroblast_of_lung_ENCFF535LEC.bam
wget https://www.encodeproject.org/files/ENCFF826JLM/@@download/ENCFF826JLM.bam -O a181_foreskin_fibroblast_ENCFF826JLM.bam
wget https://www.encodeproject.org/files/ENCFF639OWM/@@download/ENCFF639OWM.bam -O a182_foreskin_fibroblast_ENCFF639OWM.bam
wget https://www.encodeproject.org/files/ENCFF717BLF/@@download/ENCFF717BLF.bam -O a183_foreskin_fibroblast_ENCFF717BLF.bam
wget https://www.encodeproject.org/files/ENCFF412ZJA/@@download/ENCFF412ZJA.bam -O a184_foreskin_fibroblast_ENCFF412ZJA.bam
wget https://www.encodeproject.org/files/ENCFF742AHH/@@download/ENCFF742AHH.bam -O a185_foreskin_fibroblast_ENCFF742AHH.bam
wget https://www.encodeproject.org/files/ENCFF819PPP/@@download/ENCFF819PPP.bam -O a186_foreskin_fibroblast_ENCFF819PPP.bam
wget https://www.encodeproject.org/files/ENCFF868WOD/@@download/ENCFF868WOD.bam -O a187_foreskin_fibroblast_ENCFF868WOD.bam
wget https://www.encodeproject.org/files/ENCFF464MMC/@@download/ENCFF464MMC.bam -O a188_foreskin_fibroblast_ENCFF464MMC.bam
wget https://www.encodeproject.org/files/ENCFF166BMF/@@download/ENCFF166BMF.bam -O a189_foreskin_keratinocyte_ENCFF166BMF.bam
wget https://www.encodeproject.org/files/ENCFF524BYH/@@download/ENCFF524BYH.bam -O a190_foreskin_keratinocyte_ENCFF524BYH.bam
wget https://www.encodeproject.org/files/ENCFF234PWP/@@download/ENCFF234PWP.bam -O a191_foreskin_keratinocyte_ENCFF234PWP.bam
wget https://www.encodeproject.org/files/ENCFF252XIN/@@download/ENCFF252XIN.bam -O a192_foreskin_keratinocyte_ENCFF252XIN.bam
wget https://www.encodeproject.org/files/ENCFF003FHH/@@download/ENCFF003FHH.bam -O a193_foreskin_keratinocyte_ENCFF003FHH.bam
wget https://www.encodeproject.org/files/ENCFF079MUK/@@download/ENCFF079MUK.bam -O a194_foreskin_keratinocyte_ENCFF079MUK.bam
wget https://www.encodeproject.org/files/ENCFF449ZJA/@@download/ENCFF449ZJA.bam -O a195_foreskin_melanocyte_ENCFF449ZJA.bam
wget https://www.encodeproject.org/files/ENCFF939GYM/@@download/ENCFF939GYM.bam -O a196_foreskin_melanocyte_ENCFF939GYM.bam
wget https://www.encodeproject.org/files/ENCFF862KQF/@@download/ENCFF862KQF.bam -O a197_foreskin_melanocyte_ENCFF862KQF.bam
wget https://www.encodeproject.org/files/ENCFF653ZQK/@@download/ENCFF653ZQK.bam -O a198_foreskin_melanocyte_ENCFF653ZQK.bam
wget https://www.encodeproject.org/files/ENCFF338JGH/@@download/ENCFF338JGH.bam -O a199_GM23248_ENCFF338JGH.bam
wget https://www.encodeproject.org/files/ENCFF943RTB/@@download/ENCFF943RTB.bam -O a200_GM23248_ENCFF943RTB.bam
wget https://www.encodeproject.org/files/ENCFF470UMA/@@download/ENCFF470UMA.bam -O a201_GM23248_ENCFF470UMA.bam
wget https://www.encodeproject.org/files/ENCFF122SGX/@@download/ENCFF122SGX.bam -O a202_GM23248_ENCFF122SGX.bam
wget https://www.encodeproject.org/files/ENCFF403VXK/@@download/ENCFF403VXK.bam -O a203_GM23338_ENCFF403VXK.bam
wget https://www.encodeproject.org/files/ENCFF371CJE/@@download/ENCFF371CJE.bam -O a204_GM23338_ENCFF371CJE.bam
wget https://www.encodeproject.org/files/ENCFF259MDS/@@download/ENCFF259MDS.bam -O a205_GM23338_ENCFF259MDS.bam
wget https://www.encodeproject.org/files/ENCFF862WYK/@@download/ENCFF862WYK.bam -O a206_GM23338_ENCFF862WYK.bam
wget https://www.encodeproject.org/files/ENCFF146UYU/@@download/ENCFF146UYU.bam -O a207_IMR-90_ENCFF146UYU.bam
wget https://www.encodeproject.org/files/ENCFF825OWT/@@download/ENCFF825OWT.bam -O a208_IMR-90_ENCFF825OWT.bam
wget https://www.encodeproject.org/files/ENCFF071VOI/@@download/ENCFF071VOI.bam -O a209_IMR-90_ENCFF071VOI.bam
wget https://www.encodeproject.org/files/ENCFF868WTE/@@download/ENCFF868WTE.bam -O a210_IMR-90_ENCFF868WTE.bam
wget https://www.encodeproject.org/files/ENCFF828BCB/@@download/ENCFF828BCB.bam -O a211_keratinocyte_ENCFF828BCB.bam
wget https://www.encodeproject.org/files/ENCFF553LTL/@@download/ENCFF553LTL.bam -O a212_keratinocyte_ENCFF553LTL.bam
wget https://www.encodeproject.org/files/ENCFF578IKI/@@download/ENCFF578IKI.bam -O a213_keratinocyte_ENCFF578IKI.bam
wget https://www.encodeproject.org/files/ENCFF137DEJ/@@download/ENCFF137DEJ.bam -O a214_keratinocyte_ENCFF137DEJ.bam
wget https://www.encodeproject.org/files/ENCFF516HFJ/@@download/ENCFF516HFJ.bam -O a215_neurosphere_ENCFF516HFJ.bam
wget https://www.encodeproject.org/files/ENCFF903OEB/@@download/ENCFF903OEB.bam -O a216_neurosphere_ENCFF903OEB.bam
wget https://www.encodeproject.org/files/ENCFF835QFJ/@@download/ENCFF835QFJ.bam -O a217_osteoblast_ENCFF835QFJ.bam
wget https://www.encodeproject.org/files/ENCFF318IMH/@@download/ENCFF318IMH.bam -O a218_osteoblast_ENCFF318IMH.bam
wget https://www.encodeproject.org/files/ENCFF155WZC/@@download/ENCFF155WZC.bam -O a219_osteoblast_ENCFF155WZC.bam
wget https://www.encodeproject.org/files/ENCFF798RLD/@@download/ENCFF798RLD.bam -O a220_osteoblast_ENCFF798RLD.bam
wget https://www.encodeproject.org/files/ENCFF534NCP/@@download/ENCFF534NCP.bam -O a221_skeletal_muscle_myoblast_ENCFF534NCP.bam
wget https://www.encodeproject.org/files/ENCFF462BRB/@@download/ENCFF462BRB.bam -O a222_skeletal_muscle_myoblast_ENCFF462BRB.bam
wget https://www.encodeproject.org/files/ENCFF191YSM/@@download/ENCFF191YSM.bam -O a223_skeletal_muscle_myoblast_ENCFF191YSM.bam
wget https://www.encodeproject.org/files/ENCFF232HUV/@@download/ENCFF232HUV.bam -O a224_skeletal_muscle_myoblast_ENCFF232HUV.bam
wget https://www.encodeproject.org/files/ENCFF663ILT/@@download/ENCFF663ILT.bam -O a225_UCSF-4_ENCFF663ILT.bam
wget https://www.encodeproject.org/files/ENCFF358EIU/@@download/ENCFF358EIU.bam -O a226_UCSF-4_ENCFF358EIU.bam
wget https://www.encodeproject.org/files/ENCFF948UXT/@@download/ENCFF948UXT.bam -O a227_H1_ENCFF948UXT.bam
wget https://www.encodeproject.org/files/ENCFF310SBN/@@download/ENCFF310SBN.bam -O a228_H1_ENCFF310SBN.bam
wget https://www.encodeproject.org/files/ENCFF663SAM/@@download/ENCFF663SAM.bam -O a229_H1_ENCFF663SAM.bam
wget https://www.encodeproject.org/files/ENCFF083QQZ/@@download/ENCFF083QQZ.bam -O a230_H1_ENCFF083QQZ.bam
wget https://www.encodeproject.org/files/ENCFF242PAC/@@download/ENCFF242PAC.bam -O a231_H1_ENCFF242PAC.bam
wget https://www.encodeproject.org/files/ENCFF382GPJ/@@download/ENCFF382GPJ.bam -O a232_H1_ENCFF382GPJ.bam
wget https://www.encodeproject.org/files/ENCFF238SQN/@@download/ENCFF238SQN.bam -O a233_H1_ENCFF238SQN.bam
wget https://www.encodeproject.org/files/ENCFF748KOZ/@@download/ENCFF748KOZ.bam -O a234_H1_ENCFF748KOZ.bam
wget https://www.encodeproject.org/files/ENCFF271XBU/@@download/ENCFF271XBU.bam -O a235_H9_ENCFF271XBU.bam
wget https://www.encodeproject.org/files/ENCFF905OOT/@@download/ENCFF905OOT.bam -O a236_H9_ENCFF905OOT.bam
wget https://www.encodeproject.org/files/ENCFF178ICX/@@download/ENCFF178ICX.bam -O a237_H9_ENCFF178ICX.bam
wget https://www.encodeproject.org/files/ENCFF022SFF/@@download/ENCFF022SFF.bam -O a238_H9_ENCFF022SFF.bam
wget https://www.encodeproject.org/files/ENCFF973SSW/@@download/ENCFF973SSW.bam -O a239_HUES48_ENCFF973SSW.bam
wget https://www.encodeproject.org/files/ENCFF487HGF/@@download/ENCFF487HGF.bam -O a240_HUES48_ENCFF487HGF.bam
wget https://www.encodeproject.org/files/ENCFF048NVB/@@download/ENCFF048NVB.bam -O a241_HUES6_ENCFF048NVB.bam
wget https://www.encodeproject.org/files/ENCFF451JBS/@@download/ENCFF451JBS.bam -O a242_HUES6_ENCFF451JBS.bam
wget https://www.encodeproject.org/files/ENCFF373LPF/@@download/ENCFF373LPF.bam -O a243_HUES6_ENCFF373LPF.bam
wget https://www.encodeproject.org/files/ENCFF832VWA/@@download/ENCFF832VWA.bam -O a244_HUES6_ENCFF832VWA.bam
wget https://www.encodeproject.org/files/ENCFF935PUM/@@download/ENCFF935PUM.bam -O a245_HUES64_ENCFF935PUM.bam
wget https://www.encodeproject.org/files/ENCFF083LRD/@@download/ENCFF083LRD.bam -O a246_HUES64_ENCFF083LRD.bam
wget https://www.encodeproject.org/files/ENCFF169UER/@@download/ENCFF169UER.bam -O a247_HUES64_ENCFF169UER.bam
wget https://www.encodeproject.org/files/ENCFF230FVU/@@download/ENCFF230FVU.bam -O a248_HUES64_ENCFF230FVU.bam
wget https://www.encodeproject.org/files/ENCFF456DFB/@@download/ENCFF456DFB.bam -O a249_iPS_DF_1911_ENCFF456DFB.bam
wget https://www.encodeproject.org/files/ENCFF901IPF/@@download/ENCFF901IPF.bam -O a250_iPS_DF_1911_ENCFF901IPF.bam
wget https://www.encodeproject.org/files/ENCFF111NTK/@@download/ENCFF111NTK.bam -O a251_iPS_DF_1911_ENCFF111NTK.bam
wget https://www.encodeproject.org/files/ENCFF718MKI/@@download/ENCFF718MKI.bam -O a252_iPS_DF_1911_ENCFF718MKI.bam
wget https://www.encodeproject.org/files/ENCFF691OID/@@download/ENCFF691OID.bam -O a253_iPS_DF_69_ENCFF691OID.bam
wget https://www.encodeproject.org/files/ENCFF443WWA/@@download/ENCFF443WWA.bam -O a254_iPS_DF_69_ENCFF443WWA.bam
wget https://www.encodeproject.org/files/ENCFF124TRP/@@download/ENCFF124TRP.bam -O a255_iPS-18a_ENCFF124TRP.bam
wget https://www.encodeproject.org/files/ENCFF391OGS/@@download/ENCFF391OGS.bam -O a256_iPS-18a_ENCFF391OGS.bam
wget https://www.encodeproject.org/files/ENCFF797ECK/@@download/ENCFF797ECK.bam -O a257_iPS-20b_ENCFF797ECK.bam
wget https://www.encodeproject.org/files/ENCFF289WQP/@@download/ENCFF289WQP.bam -O a258_iPS-20b_ENCFF289WQP.bam

# Step2. Convert the downloaded BAM files to BED files.
bedtools bamtobed -i a001_K562_ENCFF301TVL.bam >b001_K562_H3K27ac_ENCFF301TVL.bed
bedtools bamtobed -i a002_K562_ENCFF190OWE.bam >b002_K562_H3K27me3_ENCFF190OWE.bed
bedtools bamtobed -i a003_K562_ENCFF879BWC.bam >b003_K562_H3K27ac_ENCFF879BWC.bed
bedtools bamtobed -i a004_K562_ENCFF692KQZ.bam >b004_K562_H3K27me3_ENCFF692KQZ.bed
bedtools bamtobed -i a005_DND-41_ENCFF072ZAR.bam >b005_DND-41_H3K27ac_ENCFF072ZAR.bed
bedtools bamtobed -i a006_DND-41_ENCFF024MTX.bam >b006_DND-41_H3K27me3_ENCFF024MTX.bed
bedtools bamtobed -i a007_DND-41_ENCFF854LWC.bam >b007_DND-41_H3K27ac_ENCFF854LWC.bed
bedtools bamtobed -i a008_DND-41_ENCFF700KKS.bam >b008_DND-41_H3K27me3_ENCFF700KKS.bed
bedtools bamtobed -i a009_Karpas-422_ENCFF854WUY.bam >b009_Karpas-422_H3K27ac_ENCFF854WUY.bed
bedtools bamtobed -i a010_Karpas-422_ENCFF960YXZ.bam >b010_Karpas-422_H3K27me3_ENCFF960YXZ.bed
bedtools bamtobed -i a011_Karpas-422_ENCFF949LGB.bam >b011_Karpas-422_H3K27ac_ENCFF949LGB.bed
bedtools bamtobed -i a012_Karpas-422_ENCFF813CKH.bam >b012_Karpas-422_H3K27me3_ENCFF813CKH.bed
bedtools bamtobed -i a013_OCI-LY1_ENCFF241NJQ.bam >b013_OCI-LY1_H3K27ac_ENCFF241NJQ.bed
bedtools bamtobed -i a014_OCI-LY1_ENCFF401MIF.bam >b014_OCI-LY1_H3K27me3_ENCFF401MIF.bed
bedtools bamtobed -i a015_OCI-LY1_ENCFF572KGX.bam >b015_OCI-LY1_H3K27ac_ENCFF572KGX.bed
bedtools bamtobed -i a016_OCI-LY1_ENCFF503PYV.bam >b016_OCI-LY1_H3K27me3_ENCFF503PYV.bed
bedtools bamtobed -i a017_GM12878_ENCFF948GTC.bam >b017_GM12878_H3K27ac_ENCFF948GTC.bed
bedtools bamtobed -i a018_GM12878_ENCFF796DDM.bam >b018_GM12878_H3K27me3_ENCFF796DDM.bed
bedtools bamtobed -i a019_GM12878_ENCFF804NCH.bam >b019_GM12878_H3K27ac_ENCFF804NCH.bed
bedtools bamtobed -i a020_GM12878_ENCFF927XRX.bam >b020_GM12878_H3K27me3_ENCFF927XRX.bed
bedtools bamtobed -i a021_MM1S_ENCFF605DAC.bam >b021_MM1S_H3K27ac_ENCFF605DAC.bed
bedtools bamtobed -i a022_MM1S_ENCFF712XDN.bam >b022_MM1S_H3K27me3_ENCFF712XDN.bed
bedtools bamtobed -i a023_MM1S_ENCFF937ZTU.bam >b023_MM1S_H3K27ac_ENCFF937ZTU.bed
bedtools bamtobed -i a024_MM1S_ENCFF956YCD.bam >b024_MM1S_H3K27me3_ENCFF956YCD.bed
bedtools bamtobed -i a025_KMS-11_ENCFF607VEF.bam >b025_KMS-11_H3K27ac_ENCFF607VEF.bed
bedtools bamtobed -i a026_KMS-11_ENCFF283SMP.bam >b026_KMS-11_H3K27me3_ENCFF283SMP.bed
bedtools bamtobed -i a027_KMS-11_ENCFF820EBJ.bam >b027_KMS-11_H3K27ac_ENCFF820EBJ.bed
bedtools bamtobed -i a028_KMS-11_ENCFF891YVY.bam >b028_KMS-11_H3K27me3_ENCFF891YVY.bed
bedtools bamtobed -i a029_OCI-LY3_ENCFF132KAK.bam >b029_OCI-LY3_H3K27ac_ENCFF132KAK.bed
bedtools bamtobed -i a030_OCI-LY3_ENCFF286KFY.bam >b030_OCI-LY3_H3K27me3_ENCFF286KFY.bed
bedtools bamtobed -i a031_OCI-LY3_ENCFF988VMF.bam >b031_OCI-LY3_H3K27ac_ENCFF988VMF.bed
bedtools bamtobed -i a032_OCI-LY3_ENCFF818WQQ.bam >b032_OCI-LY3_H3K27me3_ENCFF818WQQ.bed
bedtools bamtobed -i a033_DOHH2_ENCFF479VLR.bam >b033_DOHH2_H3K27ac_ENCFF479VLR.bed
bedtools bamtobed -i a034_DOHH2_ENCFF370MOM.bam >b034_DOHH2_H3K27me3_ENCFF370MOM.bed
bedtools bamtobed -i a035_DOHH2_ENCFF079AQF.bam >b035_DOHH2_H3K27ac_ENCFF079AQF.bed
bedtools bamtobed -i a036_DOHH2_ENCFF133EQW.bam >b036_DOHH2_H3K27me3_ENCFF133EQW.bed
bedtools bamtobed -i a037_SU-DHL-6_ENCFF070LFK.bam >b037_SU-DHL-6_H3K27ac_ENCFF070LFK.bed
bedtools bamtobed -i a038_SU-DHL-6_ENCFF182RDK.bam >b038_SU-DHL-6_H3K27me3_ENCFF182RDK.bed
bedtools bamtobed -i a039_SU-DHL-6_ENCFF730NKH.bam >b039_SU-DHL-6_H3K27ac_ENCFF730NKH.bed
bedtools bamtobed -i a040_SU-DHL-6_ENCFF075XIO.bam >b040_SU-DHL-6_H3K27me3_ENCFF075XIO.bed
bedtools bamtobed -i a041_B_cell_ENCFF365LRL.bam >b041_B_cell_H3K27ac_ENCFF365LRL.bed
bedtools bamtobed -i a042_B_cell_ENCFF326COY.bam >b042_B_cell_H3K27me3_ENCFF326COY.bed
bedtools bamtobed -i a043_B_cell_ENCFF013CQR.bam >b043_B_cell_H3K27ac_ENCFF013CQR.bed
bedtools bamtobed -i a044_B_cell_ENCFF578PVF.bam >b044_B_cell_H3K27me3_ENCFF578PVF.bed
bedtools bamtobed -i a045_B_cell_ENCFF474VOO.bam >b045_B_cell_H3K27ac_ENCFF474VOO.bed
bedtools bamtobed -i a046_B_cell_ENCFF454ZLD.bam >b046_B_cell_H3K27me3_ENCFF454ZLD.bed
bedtools bamtobed -i a047_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_ENCFF831LVQ.bam >b047_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF831LVQ.bed
bedtools bamtobed -i a048_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_ENCFF883IRG.bam >b048_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF883IRG.bed
bedtools bamtobed -i a049_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_ENCFF733XRG.bam >b049_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF733XRG.bed
bedtools bamtobed -i a050_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_ENCFF663FZE.bam >b050_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF663FZE.bed
bedtools bamtobed -i a051_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_ENCFF422BYQ.bam >b051_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF422BYQ.bed
bedtools bamtobed -i a052_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_ENCFF034VOA.bam >b052_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF034VOA.bed
bedtools bamtobed -i a053_natural_killer_cell_ENCFF604IOL.bam >b053_natural_killer_cell_H3K27ac_ENCFF604IOL.bed
bedtools bamtobed -i a054_natural_killer_cell_ENCFF853ZML.bam >b054_natural_killer_cell_H3K27me3_ENCFF853ZML.bed
bedtools bamtobed -i a055_CD14-positive_monocyte_ENCFF680VNR.bam >b055_CD14-positive_monocyte_H3K27ac_ENCFF680VNR.bed
bedtools bamtobed -i a056_CD14-positive_monocyte_ENCFF145UVW.bam >b056_CD14-positive_monocyte_H3K27me3_ENCFF145UVW.bed
bedtools bamtobed -i a057_CD14-positive_monocyte_ENCFF329AXT.bam >b057_CD14-positive_monocyte_H3K27ac_ENCFF329AXT.bed
bedtools bamtobed -i a058_CD14-positive_monocyte_ENCFF619JPI.bam >b058_CD14-positive_monocyte_H3K27me3_ENCFF619JPI.bed
bedtools bamtobed -i a059_CD14-positive_monocyte_ENCFF835ZFV.bam >b059_CD14-positive_monocyte_H3K27ac_ENCFF835ZFV.bed
bedtools bamtobed -i a060_CD14-positive_monocyte_ENCFF711ACC.bam >b060_CD14-positive_monocyte_H3K27me3_ENCFF711ACC.bed
bedtools bamtobed -i a061_CD4-positive_alpha-beta_T_cell_ENCFF956SSC.bam >b061_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF956SSC.bed
bedtools bamtobed -i a062_CD4-positive_alpha-beta_T_cell_ENCFF714KZL.bam >b062_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF714KZL.bed
bedtools bamtobed -i a063_CD4-positive_alpha-beta_T_cell_ENCFF082MIE.bam >b063_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF082MIE.bed
bedtools bamtobed -i a064_CD4-positive_alpha-beta_T_cell_ENCFF624YMM.bam >b064_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF624YMM.bed
bedtools bamtobed -i a065_CD4-positive_alpha-beta_memory_T_cell_ENCFF914QOY.bam >b065_CD4-positive_alpha-beta_memory_T_cell_H3K27ac_ENCFF914QOY.bed
bedtools bamtobed -i a066_CD4-positive_alpha-beta_memory_T_cell_ENCFF504RQX.bam >b066_CD4-positive_alpha-beta_memory_T_cell_H3K27me3_ENCFF504RQX.bed
bedtools bamtobed -i a067_CD4-positive_alpha-beta_memory_T_cell_ENCFF056LBY.bam >b067_CD4-positive_alpha-beta_memory_T_cell_H3K27ac_ENCFF056LBY.bed
bedtools bamtobed -i a068_CD4-positive_alpha-beta_memory_T_cell_ENCFF722VPO.bam >b068_CD4-positive_alpha-beta_memory_T_cell_H3K27me3_ENCFF722VPO.bed
bedtools bamtobed -i a069_CD4-positive_alpha-beta_memory_T_cell_ENCFF817XVA.bam >b069_CD4-positive_alpha-beta_memory_T_cell_H3K27ac_ENCFF817XVA.bed
bedtools bamtobed -i a070_CD4-positive_alpha-beta_memory_T_cell_ENCFF974TXV.bam >b070_CD4-positive_alpha-beta_memory_T_cell_H3K27me3_ENCFF974TXV.bed
bedtools bamtobed -i a071_CD4-positive_CD25-positive_alpha-beta_regulatory_T_cell_ENCFF611AQQ.bam >b071_CD4-positive_CD25-positive_alpha-beta_regulatory_T_cell_H3K27ac_ENCFF611AQQ.bed
bedtools bamtobed -i a072_CD4-positive_CD25-positive_alpha-beta_regulatory_T_cell_ENCFF864EUW.bam >b072_CD4-positive_CD25-positive_alpha-beta_regulatory_T_cell_H3K27me3_ENCFF864EUW.bed
bedtools bamtobed -i a073_CD8-positive_alpha-beta_memory_T_cell_ENCFF633ZOG.bam >b073_CD8-positive_alpha-beta_memory_T_cell_H3K27ac_ENCFF633ZOG.bed
bedtools bamtobed -i a074_CD8-positive_alpha-beta_memory_T_cell_ENCFF407DTQ.bam >b074_CD8-positive_alpha-beta_memory_T_cell_H3K27me3_ENCFF407DTQ.bed
bedtools bamtobed -i a075_CD8-positive_alpha-beta_T_cell_ENCFF449YKU.bam >b075_CD8-positive_alpha-beta_T_cell_H3K27ac_ENCFF449YKU.bed
bedtools bamtobed -i a076_CD8-positive_alpha-beta_T_cell_ENCFF783NPA.bam >b076_CD8-positive_alpha-beta_T_cell_H3K27me3_ENCFF783NPA.bed
bedtools bamtobed -i a077_CD8-positive_alpha-beta_T_cell_ENCFF232SFI.bam >b077_CD8-positive_alpha-beta_T_cell_H3K27ac_ENCFF232SFI.bed
bedtools bamtobed -i a078_CD8-positive_alpha-beta_T_cell_ENCFF179XXQ.bam >b078_CD8-positive_alpha-beta_T_cell_H3K27me3_ENCFF179XXQ.bed
bedtools bamtobed -i a079_CD8-positive_alpha-beta_T_cell_ENCFF346ZJV.bam >b079_CD8-positive_alpha-beta_T_cell_H3K27ac_ENCFF346ZJV.bed
bedtools bamtobed -i a080_CD8-positive_alpha-beta_T_cell_ENCFF792BHX.bam >b080_CD8-positive_alpha-beta_T_cell_H3K27me3_ENCFF792BHX.bed
bedtools bamtobed -i a081_common_myeloid_progenitor_CD34-positive_ENCFF047LSV.bam >b081_common_myeloid_progenitor_CD34-positive_H3K27ac_ENCFF047LSV.bed
bedtools bamtobed -i a082_common_myeloid_progenitor_CD34-positive_ENCFF792JAG.bam >b082_common_myeloid_progenitor_CD34-positive_H3K27me3_ENCFF792JAG.bed
bedtools bamtobed -i a083_common_myeloid_progenitor_CD34-positive_ENCFF823HMZ.bam >b083_common_myeloid_progenitor_CD34-positive_H3K27ac_ENCFF823HMZ.bed
bedtools bamtobed -i a084_common_myeloid_progenitor_CD34-positive_ENCFF931STS.bam >b084_common_myeloid_progenitor_CD34-positive_H3K27me3_ENCFF931STS.bed
bedtools bamtobed -i a085_common_myeloid_progenitor_CD34-positive_ENCFF150ZJR.bam >b085_common_myeloid_progenitor_CD34-positive_H3K27ac_ENCFF150ZJR.bed
bedtools bamtobed -i a086_common_myeloid_progenitor_CD34-positive_ENCFF128GDQ.bam >b086_common_myeloid_progenitor_CD34-positive_H3K27me3_ENCFF128GDQ.bed
bedtools bamtobed -i a087_effector_memory_CD4-positive_alpha-beta_T_cell_ENCFF577PRS.bam >b087_effector_memory_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF577PRS.bed
bedtools bamtobed -i a088_effector_memory_CD4-positive_alpha-beta_T_cell_ENCFF624RVG.bam >b088_effector_memory_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF624RVG.bed
bedtools bamtobed -i a089_effector_memory_CD4-positive_alpha-beta_T_cell_ENCFF652IFU.bam >b089_effector_memory_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF652IFU.bed
bedtools bamtobed -i a090_effector_memory_CD4-positive_alpha-beta_T_cell_ENCFF120QQK.bam >b090_effector_memory_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF120QQK.bed
bedtools bamtobed -i a091_neutrophil_ENCFF810CHL.bam >b091_neutrophil_H3K27ac_ENCFF810CHL.bed
bedtools bamtobed -i a092_neutrophil_ENCFF073HXA.bam >b092_neutrophil_H3K27me3_ENCFF073HXA.bed
bedtools bamtobed -i a093_neutrophil_ENCFF191UXI.bam >b093_neutrophil_H3K27ac_ENCFF191UXI.bed
bedtools bamtobed -i a094_neutrophil_ENCFF517KOQ.bam >b094_neutrophil_H3K27me3_ENCFF517KOQ.bed
bedtools bamtobed -i a095_peripheral_blood_mononuclear_cell_ENCFF687LPA.bam >b095_peripheral_blood_mononuclear_cell_H3K27ac_ENCFF687LPA.bed
bedtools bamtobed -i a096_peripheral_blood_mononuclear_cell_ENCFF139VFB.bam >b096_peripheral_blood_mononuclear_cell_H3K27me3_ENCFF139VFB.bed
bedtools bamtobed -i a097_peripheral_blood_mononuclear_cell_ENCFF503WNJ.bam >b097_peripheral_blood_mononuclear_cell_H3K27ac_ENCFF503WNJ.bed
bedtools bamtobed -i a098_peripheral_blood_mononuclear_cell_ENCFF361XRW.bam >b098_peripheral_blood_mononuclear_cell_H3K27me3_ENCFF361XRW.bed
bedtools bamtobed -i a099_peripheral_blood_mononuclear_cell_ENCFF350ISY.bam >b099_peripheral_blood_mononuclear_cell_H3K27ac_ENCFF350ISY.bed
bedtools bamtobed -i a100_peripheral_blood_mononuclear_cell_ENCFF257UIH.bam >b100_peripheral_blood_mononuclear_cell_H3K27me3_ENCFF257UIH.bed
bedtools bamtobed -i a101_T-cell_ENCFF736FZD.bam >b101_T-cell_H3K27ac_ENCFF736FZD.bed
bedtools bamtobed -i a102_T-cell_ENCFF165YKT.bam >b102_T-cell_H3K27me3_ENCFF165YKT.bed
bedtools bamtobed -i a103_T-helper_17_cell_ENCFF749JAV.bam >b103_T-helper_17_cell_H3K27ac_ENCFF749JAV.bed
bedtools bamtobed -i a104_T-helper_17_cell_ENCFF628IWA.bam >b104_T-helper_17_cell_H3K27me3_ENCFF628IWA.bed
bedtools bamtobed -i a105_MCF-7_ENCFF181AML.bam >b105_MCF-7_H3K27ac_ENCFF181AML.bed
bedtools bamtobed -i a106_MCF-7_ENCFF351EJX.bam >b106_MCF-7_H3K27me3_ENCFF351EJX.bed
bedtools bamtobed -i a107_MCF-7_ENCFF224RMQ.bam >b107_MCF-7_H3K27ac_ENCFF224RMQ.bed
bedtools bamtobed -i a108_MCF-7_ENCFF519ABK.bam >b108_MCF-7_H3K27me3_ENCFF519ABK.bed
bedtools bamtobed -i a109_MCF-7_ENCFF096GIM.bam >b109_MCF-7_H3K27ac_ENCFF096GIM.bed
bedtools bamtobed -i a110_MCF-7_ENCFF997VYW.bam >b110_MCF-7_H3K27me3_ENCFF997VYW.bed
bedtools bamtobed -i a111_MCF-7_ENCFF692SZU.bam >b111_MCF-7_H3K27ac_ENCFF692SZU.bed
bedtools bamtobed -i a112_MCF-7_ENCFF611UYK.bam >b112_MCF-7_H3K27me3_ENCFF611UYK.bed
bedtools bamtobed -i a113_HCT116_ENCFF689GKI.bam >b113_HCT116_H3K27ac_ENCFF689GKI.bed
bedtools bamtobed -i a114_HCT116_ENCFF293SFY.bam >b114_HCT116_H3K27me3_ENCFF293SFY.bed
bedtools bamtobed -i a115_HCT116_ENCFF340TPS.bam >b115_HCT116_H3K27ac_ENCFF340TPS.bed
bedtools bamtobed -i a116_HCT116_ENCFF933YRM.bam >b116_HCT116_H3K27me3_ENCFF933YRM.bed
bedtools bamtobed -i a117_HeLa-S3_ENCFF218BUW.bam >b117_HeLa-S3_H3K27ac_ENCFF218BUW.bed
bedtools bamtobed -i a118_HeLa-S3_ENCFF284GFW.bam >b118_HeLa-S3_H3K27me3_ENCFF284GFW.bed
bedtools bamtobed -i a119_HeLa-S3_ENCFF113QJM.bam >b119_HeLa-S3_H3K27ac_ENCFF113QJM.bed
bedtools bamtobed -i a120_HeLa-S3_ENCFF928PZN.bam >b120_HeLa-S3_H3K27me3_ENCFF928PZN.bed
bedtools bamtobed -i a121_HepG2_ENCFF805KGN.bam >b121_HepG2_H3K27ac_ENCFF805KGN.bed
bedtools bamtobed -i a122_HepG2_ENCFF394DQA.bam >b122_HepG2_H3K27me3_ENCFF394DQA.bed
bedtools bamtobed -i a123_HepG2_ENCFF686HFQ.bam >b123_HepG2_H3K27ac_ENCFF686HFQ.bed
bedtools bamtobed -i a124_HepG2_ENCFF030HAG.bam >b124_HepG2_H3K27me3_ENCFF030HAG.bed
bedtools bamtobed -i a125_PC-9_ENCFF299IGN.bam >b125_PC-9_H3K27ac_ENCFF299IGN.bed
bedtools bamtobed -i a126_PC-9_ENCFF217CGZ.bam >b126_PC-9_H3K27me3_ENCFF217CGZ.bed
bedtools bamtobed -i a127_PC-9_ENCFF655AIP.bam >b127_PC-9_H3K27ac_ENCFF655AIP.bed
bedtools bamtobed -i a128_PC-9_ENCFF014ESB.bam >b128_PC-9_H3K27me3_ENCFF014ESB.bed
bedtools bamtobed -i a129_Panc1_ENCFF384KMQ.bam >b129_Panc1_H3K27ac_ENCFF384KMQ.bed
bedtools bamtobed -i a130_Panc1_ENCFF714IMC.bam >b130_Panc1_H3K27me3_ENCFF714IMC.bed
bedtools bamtobed -i a131_Panc1_ENCFF960KET.bam >b131_Panc1_H3K27ac_ENCFF960KET.bed
bedtools bamtobed -i a132_Panc1_ENCFF683OAH.bam >b132_Panc1_H3K27me3_ENCFF683OAH.bed
bedtools bamtobed -i a133_ACC112_ENCFF420CUB.bam >b133_ACC112_H3K27ac_ENCFF420CUB.bed
bedtools bamtobed -i a134_ACC112_ENCFF086FXU.bam >b134_ACC112_H3K27me3_ENCFF086FXU.bed
bedtools bamtobed -i a135_ACC112_ENCFF567QOT.bam >b135_ACC112_H3K27ac_ENCFF567QOT.bed
bedtools bamtobed -i a136_ACC112_ENCFF316QCM.bam >b136_ACC112_H3K27me3_ENCFF316QCM.bed
bedtools bamtobed -i a137_PC-3_ENCFF474QFK.bam >b137_PC-3_H3K27ac_ENCFF474QFK.bed
bedtools bamtobed -i a138_PC-3_ENCFF127CPB.bam >b138_PC-3_H3K27me3_ENCFF127CPB.bed
bedtools bamtobed -i a139_PC-3_ENCFF174JIG.bam >b139_PC-3_H3K27ac_ENCFF174JIG.bed
bedtools bamtobed -i a140_PC-3_ENCFF347INE.bam >b140_PC-3_H3K27me3_ENCFF347INE.bed
bedtools bamtobed -i a141_SK-N-SH_ENCFF659HWC.bam >b141_SK-N-SH_H3K27ac_ENCFF659HWC.bed
bedtools bamtobed -i a142_SK-N-SH_ENCFF690PRE.bam >b142_SK-N-SH_H3K27me3_ENCFF690PRE.bed
bedtools bamtobed -i a143_SK-N-SH_ENCFF879LRT.bam >b143_SK-N-SH_H3K27ac_ENCFF879LRT.bed
bedtools bamtobed -i a144_SK-N-SH_ENCFF897EXE.bam >b144_SK-N-SH_H3K27me3_ENCFF897EXE.bed
bedtools bamtobed -i a145_SK-N-SH_ENCFF380OTV.bam >b145_SK-N-SH_H3K27ac_ENCFF380OTV.bed
bedtools bamtobed -i a146_SK-N-SH_ENCFF614FPH.bam >b146_SK-N-SH_H3K27me3_ENCFF614FPH.bed
bedtools bamtobed -i a147_SK-N-SH_ENCFF775DHW.bam >b147_SK-N-SH_H3K27ac_ENCFF775DHW.bed
bedtools bamtobed -i a148_SK-N-SH_ENCFF762NUT.bam >b148_SK-N-SH_H3K27me3_ENCFF762NUT.bed
bedtools bamtobed -i a149_A673_ENCFF737FZT.bam >b149_A673_H3K27ac_ENCFF737FZT.bed
bedtools bamtobed -i a150_A673_ENCFF406AQZ.bam >b150_A673_H3K27me3_ENCFF406AQZ.bed
bedtools bamtobed -i a151_A673_ENCFF918ACD.bam >b151_A673_H3K27ac_ENCFF918ACD.bed
bedtools bamtobed -i a152_A673_ENCFF480BYU.bam >b152_A673_H3K27me3_ENCFF480BYU.bed
bedtools bamtobed -i a153_mammary_epithelial_cell_ENCFF988TNK.bam >b153_mammary_epithelial_cell_H3K27ac_ENCFF988TNK.bed
bedtools bamtobed -i a154_mammary_epithelial_cell_ENCFF015OVW.bam >b154_mammary_epithelial_cell_H3K27me3_ENCFF015OVW.bed
bedtools bamtobed -i a155_mammary_epithelial_cell_ENCFF068FTW.bam >b155_mammary_epithelial_cell_H3K27ac_ENCFF068FTW.bed
bedtools bamtobed -i a156_mammary_epithelial_cell_ENCFF843LLA.bam >b156_mammary_epithelial_cell_H3K27me3_ENCFF843LLA.bed
bedtools bamtobed -i a157_AG04450_ENCFF618ZNM.bam >b157_AG04450_H3K27ac_ENCFF618ZNM.bed
bedtools bamtobed -i a158_AG04450_ENCFF854DNJ.bam >b158_AG04450_H3K27me3_ENCFF854DNJ.bed
bedtools bamtobed -i a159_astrocyte_ENCFF084MDC.bam >b159_astrocyte_H3K27ac_ENCFF084MDC.bed
bedtools bamtobed -i a160_astrocyte_ENCFF442ZRV.bam >b160_astrocyte_H3K27me3_ENCFF442ZRV.bed
bedtools bamtobed -i a161_astrocyte_ENCFF496OLR.bam >b161_astrocyte_H3K27ac_ENCFF496OLR.bed
bedtools bamtobed -i a162_astrocyte_ENCFF757AUJ.bam >b162_astrocyte_H3K27me3_ENCFF757AUJ.bed
bedtools bamtobed -i a163_endothelial_cell_of_umbilical_vein_ENCFF450EBG.bam >b163_endothelial_cell_of_umbilical_vein_H3K27ac_ENCFF450EBG.bed
bedtools bamtobed -i a164_endothelial_cell_of_umbilical_vein_ENCFF897WVH.bam >b164_endothelial_cell_of_umbilical_vein_H3K27me3_ENCFF897WVH.bed
bedtools bamtobed -i a165_endothelial_cell_of_umbilical_vein_ENCFF851NCB.bam >b165_endothelial_cell_of_umbilical_vein_H3K27ac_ENCFF851NCB.bed
bedtools bamtobed -i a166_endothelial_cell_of_umbilical_vein_ENCFF944GCZ.bam >b166_endothelial_cell_of_umbilical_vein_H3K27me3_ENCFF944GCZ.bed
bedtools bamtobed -i a167_endothelial_cell_of_umbilical_vein_ENCFF420ZAI.bam >b167_endothelial_cell_of_umbilical_vein_H3K27ac_ENCFF420ZAI.bed
bedtools bamtobed -i a168_endothelial_cell_of_umbilical_vein_ENCFF764MJN.bam >b168_endothelial_cell_of_umbilical_vein_H3K27me3_ENCFF764MJN.bed
bedtools bamtobed -i a169_fibroblast_of_breast_ENCFF195BUK.bam >b169_fibroblast_of_breast_H3K27ac_ENCFF195BUK.bed
bedtools bamtobed -i a170_fibroblast_of_breast_ENCFF306HNX.bam >b170_fibroblast_of_breast_H3K27me3_ENCFF306HNX.bed
bedtools bamtobed -i a171_fibroblast_of_breast_ENCFF772ADP.bam >b171_fibroblast_of_breast_H3K27ac_ENCFF772ADP.bed
bedtools bamtobed -i a172_fibroblast_of_breast_ENCFF456KBT.bam >b172_fibroblast_of_breast_H3K27me3_ENCFF456KBT.bed
bedtools bamtobed -i a173_fibroblast_of_dermis_ENCFF228BTY.bam >b173_fibroblast_of_dermis_H3K27ac_ENCFF228BTY.bed
bedtools bamtobed -i a174_fibroblast_of_dermis_ENCFF678BZW.bam >b174_fibroblast_of_dermis_H3K27me3_ENCFF678BZW.bed
bedtools bamtobed -i a175_fibroblast_of_dermis_ENCFF680YEV.bam >b175_fibroblast_of_dermis_H3K27ac_ENCFF680YEV.bed
bedtools bamtobed -i a176_fibroblast_of_dermis_ENCFF275IVB.bam >b176_fibroblast_of_dermis_H3K27me3_ENCFF275IVB.bed
bedtools bamtobed -i a177_fibroblast_of_lung_ENCFF440FYI.bam >b177_fibroblast_of_lung_H3K27ac_ENCFF440FYI.bed
bedtools bamtobed -i a178_fibroblast_of_lung_ENCFF834MYP.bam >b178_fibroblast_of_lung_H3K27me3_ENCFF834MYP.bed
bedtools bamtobed -i a179_fibroblast_of_lung_ENCFF071QAT.bam >b179_fibroblast_of_lung_H3K27ac_ENCFF071QAT.bed
bedtools bamtobed -i a180_fibroblast_of_lung_ENCFF535LEC.bam >b180_fibroblast_of_lung_H3K27me3_ENCFF535LEC.bed
bedtools bamtobed -i a181_foreskin_fibroblast_ENCFF826JLM.bam >b181_foreskin_fibroblast_H3K27ac_ENCFF826JLM.bed
bedtools bamtobed -i a182_foreskin_fibroblast_ENCFF639OWM.bam >b182_foreskin_fibroblast_H3K27me3_ENCFF639OWM.bed
bedtools bamtobed -i a183_foreskin_fibroblast_ENCFF717BLF.bam >b183_foreskin_fibroblast_H3K27ac_ENCFF717BLF.bed
bedtools bamtobed -i a184_foreskin_fibroblast_ENCFF412ZJA.bam >b184_foreskin_fibroblast_H3K27me3_ENCFF412ZJA.bed
bedtools bamtobed -i a185_foreskin_fibroblast_ENCFF742AHH.bam >b185_foreskin_fibroblast_H3K27ac_ENCFF742AHH.bed
bedtools bamtobed -i a186_foreskin_fibroblast_ENCFF819PPP.bam >b186_foreskin_fibroblast_H3K27me3_ENCFF819PPP.bed
bedtools bamtobed -i a187_foreskin_fibroblast_ENCFF868WOD.bam >b187_foreskin_fibroblast_H3K27ac_ENCFF868WOD.bed
bedtools bamtobed -i a188_foreskin_fibroblast_ENCFF464MMC.bam >b188_foreskin_fibroblast_H3K27me3_ENCFF464MMC.bed
bedtools bamtobed -i a189_foreskin_keratinocyte_ENCFF166BMF.bam >b189_foreskin_keratinocyte_H3K27ac_ENCFF166BMF.bed
bedtools bamtobed -i a190_foreskin_keratinocyte_ENCFF524BYH.bam >b190_foreskin_keratinocyte_H3K27me3_ENCFF524BYH.bed
bedtools bamtobed -i a191_foreskin_keratinocyte_ENCFF234PWP.bam >b191_foreskin_keratinocyte_H3K27ac_ENCFF234PWP.bed
bedtools bamtobed -i a192_foreskin_keratinocyte_ENCFF252XIN.bam >b192_foreskin_keratinocyte_H3K27me3_ENCFF252XIN.bed
bedtools bamtobed -i a193_foreskin_keratinocyte_ENCFF003FHH.bam >b193_foreskin_keratinocyte_H3K27ac_ENCFF003FHH.bed
bedtools bamtobed -i a194_foreskin_keratinocyte_ENCFF079MUK.bam >b194_foreskin_keratinocyte_H3K27me3_ENCFF079MUK.bed
bedtools bamtobed -i a195_foreskin_melanocyte_ENCFF449ZJA.bam >b195_foreskin_melanocyte_H3K27ac_ENCFF449ZJA.bed
bedtools bamtobed -i a196_foreskin_melanocyte_ENCFF939GYM.bam >b196_foreskin_melanocyte_H3K27me3_ENCFF939GYM.bed
bedtools bamtobed -i a197_foreskin_melanocyte_ENCFF862KQF.bam >b197_foreskin_melanocyte_H3K27ac_ENCFF862KQF.bed
bedtools bamtobed -i a198_foreskin_melanocyte_ENCFF653ZQK.bam >b198_foreskin_melanocyte_H3K27me3_ENCFF653ZQK.bed
bedtools bamtobed -i a199_GM23248_ENCFF338JGH.bam >b199_GM23248_H3K27ac_ENCFF338JGH.bed
bedtools bamtobed -i a200_GM23248_ENCFF943RTB.bam >b200_GM23248_H3K27me3_ENCFF943RTB.bed
bedtools bamtobed -i a201_GM23248_ENCFF470UMA.bam >b201_GM23248_H3K27ac_ENCFF470UMA.bed
bedtools bamtobed -i a202_GM23248_ENCFF122SGX.bam >b202_GM23248_H3K27me3_ENCFF122SGX.bed
bedtools bamtobed -i a203_GM23338_ENCFF403VXK.bam >b203_GM23338_H3K27ac_ENCFF403VXK.bed
bedtools bamtobed -i a204_GM23338_ENCFF371CJE.bam >b204_GM23338_H3K27me3_ENCFF371CJE.bed
bedtools bamtobed -i a205_GM23338_ENCFF259MDS.bam >b205_GM23338_H3K27ac_ENCFF259MDS.bed
bedtools bamtobed -i a206_GM23338_ENCFF862WYK.bam >b206_GM23338_H3K27me3_ENCFF862WYK.bed
bedtools bamtobed -i a207_IMR-90_ENCFF146UYU.bam >b207_IMR-90_H3K27ac_ENCFF146UYU.bed
bedtools bamtobed -i a208_IMR-90_ENCFF825OWT.bam >b208_IMR-90_H3K27me3_ENCFF825OWT.bed
bedtools bamtobed -i a209_IMR-90_ENCFF071VOI.bam >b209_IMR-90_H3K27ac_ENCFF071VOI.bed
bedtools bamtobed -i a210_IMR-90_ENCFF868WTE.bam >b210_IMR-90_H3K27me3_ENCFF868WTE.bed
bedtools bamtobed -i a211_keratinocyte_ENCFF828BCB.bam >b211_keratinocyte_H3K27ac_ENCFF828BCB.bed
bedtools bamtobed -i a212_keratinocyte_ENCFF553LTL.bam >b212_keratinocyte_H3K27me3_ENCFF553LTL.bed
bedtools bamtobed -i a213_keratinocyte_ENCFF578IKI.bam >b213_keratinocyte_H3K27ac_ENCFF578IKI.bed
bedtools bamtobed -i a214_keratinocyte_ENCFF137DEJ.bam >b214_keratinocyte_H3K27me3_ENCFF137DEJ.bed
bedtools bamtobed -i a215_neurosphere_ENCFF516HFJ.bam >b215_neurosphere_H3K27ac_ENCFF516HFJ.bed
bedtools bamtobed -i a216_neurosphere_ENCFF903OEB.bam >b216_neurosphere_H3K27me3_ENCFF903OEB.bed
bedtools bamtobed -i a217_osteoblast_ENCFF835QFJ.bam >b217_osteoblast_H3K27ac_ENCFF835QFJ.bed
bedtools bamtobed -i a218_osteoblast_ENCFF318IMH.bam >b218_osteoblast_H3K27me3_ENCFF318IMH.bed
bedtools bamtobed -i a219_osteoblast_ENCFF155WZC.bam >b219_osteoblast_H3K27ac_ENCFF155WZC.bed
bedtools bamtobed -i a220_osteoblast_ENCFF798RLD.bam >b220_osteoblast_H3K27me3_ENCFF798RLD.bed
bedtools bamtobed -i a221_skeletal_muscle_myoblast_ENCFF534NCP.bam >b221_skeletal_muscle_myoblast_H3K27ac_ENCFF534NCP.bed
bedtools bamtobed -i a222_skeletal_muscle_myoblast_ENCFF462BRB.bam >b222_skeletal_muscle_myoblast_H3K27me3_ENCFF462BRB.bed
bedtools bamtobed -i a223_skeletal_muscle_myoblast_ENCFF191YSM.bam >b223_skeletal_muscle_myoblast_H3K27ac_ENCFF191YSM.bed
bedtools bamtobed -i a224_skeletal_muscle_myoblast_ENCFF232HUV.bam >b224_skeletal_muscle_myoblast_H3K27me3_ENCFF232HUV.bed
bedtools bamtobed -i a225_UCSF-4_ENCFF663ILT.bam >b225_UCSF-4_H3K27ac_ENCFF663ILT.bed
bedtools bamtobed -i a226_UCSF-4_ENCFF358EIU.bam >b226_UCSF-4_H3K27me3_ENCFF358EIU.bed
bedtools bamtobed -i a227_H1_ENCFF948UXT.bam >b227_H1_H3K27ac_ENCFF948UXT.bed
bedtools bamtobed -i a228_H1_ENCFF310SBN.bam >b228_H1_H3K27me3_ENCFF310SBN.bed
bedtools bamtobed -i a229_H1_ENCFF663SAM.bam >b229_H1_H3K27ac_ENCFF663SAM.bed
bedtools bamtobed -i a230_H1_ENCFF083QQZ.bam >b230_H1_H3K27me3_ENCFF083QQZ.bed
bedtools bamtobed -i a231_H1_ENCFF242PAC.bam >b231_H1_H3K27ac_ENCFF242PAC.bed
bedtools bamtobed -i a232_H1_ENCFF382GPJ.bam >b232_H1_H3K27me3_ENCFF382GPJ.bed
bedtools bamtobed -i a233_H1_ENCFF238SQN.bam >b233_H1_H3K27ac_ENCFF238SQN.bed
bedtools bamtobed -i a234_H1_ENCFF748KOZ.bam >b234_H1_H3K27me3_ENCFF748KOZ.bed
bedtools bamtobed -i a235_H9_ENCFF271XBU.bam >b235_H9_H3K27ac_ENCFF271XBU.bed
bedtools bamtobed -i a236_H9_ENCFF905OOT.bam >b236_H9_H3K27me3_ENCFF905OOT.bed
bedtools bamtobed -i a237_H9_ENCFF178ICX.bam >b237_H9_H3K27ac_ENCFF178ICX.bed
bedtools bamtobed -i a238_H9_ENCFF022SFF.bam >b238_H9_H3K27me3_ENCFF022SFF.bed
bedtools bamtobed -i a239_HUES48_ENCFF973SSW.bam >b239_HUES48_H3K27ac_ENCFF973SSW.bed
bedtools bamtobed -i a240_HUES48_ENCFF487HGF.bam >b240_HUES48_H3K27me3_ENCFF487HGF.bed
bedtools bamtobed -i a241_HUES6_ENCFF048NVB.bam >b241_HUES6_H3K27ac_ENCFF048NVB.bed
bedtools bamtobed -i a242_HUES6_ENCFF451JBS.bam >b242_HUES6_H3K27me3_ENCFF451JBS.bed
bedtools bamtobed -i a243_HUES6_ENCFF373LPF.bam >b243_HUES6_H3K27ac_ENCFF373LPF.bed
bedtools bamtobed -i a244_HUES6_ENCFF832VWA.bam >b244_HUES6_H3K27me3_ENCFF832VWA.bed
bedtools bamtobed -i a245_HUES64_ENCFF935PUM.bam >b245_HUES64_H3K27ac_ENCFF935PUM.bed
bedtools bamtobed -i a246_HUES64_ENCFF083LRD.bam >b246_HUES64_H3K27me3_ENCFF083LRD.bed
bedtools bamtobed -i a247_HUES64_ENCFF169UER.bam >b247_HUES64_H3K27ac_ENCFF169UER.bed
bedtools bamtobed -i a248_HUES64_ENCFF230FVU.bam >b248_HUES64_H3K27me3_ENCFF230FVU.bed
bedtools bamtobed -i a249_iPS_DF_1911_ENCFF456DFB.bam >b249_iPS_DF_1911_H3K27ac_ENCFF456DFB.bed
bedtools bamtobed -i a250_iPS_DF_1911_ENCFF901IPF.bam >b250_iPS_DF_1911_H3K27me3_ENCFF901IPF.bed
bedtools bamtobed -i a251_iPS_DF_1911_ENCFF111NTK.bam >b251_iPS_DF_1911_H3K27ac_ENCFF111NTK.bed
bedtools bamtobed -i a252_iPS_DF_1911_ENCFF718MKI.bam >b252_iPS_DF_1911_H3K27me3_ENCFF718MKI.bed
bedtools bamtobed -i a253_iPS_DF_69_ENCFF691OID.bam >b253_iPS_DF_69_H3K27ac_ENCFF691OID.bed
bedtools bamtobed -i a254_iPS_DF_69_ENCFF443WWA.bam >b254_iPS_DF_69_H3K27me3_ENCFF443WWA.bed
bedtools bamtobed -i a255_iPS-18a_ENCFF124TRP.bam >b255_iPS-18a_H3K27ac_ENCFF124TRP.bed
bedtools bamtobed -i a256_iPS-18a_ENCFF391OGS.bam >b256_iPS-18a_H3K27me3_ENCFF391OGS.bed
bedtools bamtobed -i a257_iPS-20b_ENCFF797ECK.bam >b257_iPS-20b_H3K27ac_ENCFF797ECK.bed
bedtools bamtobed -i a258_iPS-20b_ENCFF289WQP.bam >b258_iPS-20b_H3K27me3_ENCFF289WQP.bed
# Run the jobs above using the following swarm command.
# swarm -f 002_BAMtoBED.swarm --module bedtools --partition=ccr,norm -g 240 -t 50 -b 25

# Step3: Download enhancer datasets and enhancer interactions.
wget http://bioinfo.vanderbilt.edu/AE/HACER/download/T1.txt

# Step4: Change the file format of the promoter dataset to the BED file format.
cat T1.txt | awk 'BEGIN {OFS="\t"}; {print $2, $3, $4, $1, $13, $9, ""}' >c001_Enhancers.bed

# Step5: HACER dataset uses hg19 genome assembly. To convert the genome assembly to hg38, we use crossmap.
# Download the chain file for the conversion.
wget http://hgdownload.soe.ucsc.edu/goldenPath/hg19/liftOver/hg19ToHg38.over.chain.gz

# Step6: Convert hg19 genome assembly to hg38 using crossmap.
module load crossmap
crossmap bed hg19ToHg38.over.chain.gz c001_Enhancers.bed c002_Enhancers.bed

# Step7: Remove duplicates of enhancers.
cat c002_Enhancers.bed | awk '!a[$1,$2,$3]++' >c003_Enhancers_hg38_deduplicates.bed
cat c003_Enhancers_hg38_deduplicates.bed | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$3-$2,"" }' >d001_Enhancers_hg38_w_length.bed

# Step8: Download promoter dataset.
wget ftp://ccg.epfl.ch/epdnew/human/current/Hs_EPDnew.bed -O c004.bed

# Step9: Remove extra columns in the promoter BED file.
cat c004.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2, $3, $4}' >c005.bed

# Step10: Extract target gene information from the promoter BED file.
cat c005.bed | awk 'BEGIN {OFS="\t"}; {print $4}' >c006.bed
sed 's/_.*//g' c006.bed >c007.bed

# Step11: Add the target gene symbols to the promoter BED file.
paste c005.bed c007.bed >c008_Promoters.bed

# Step12: Adjust the length of a promoter region to +/-1000 bp.
cat c008_Promoters.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2-970, $3+970, $4, $5}' >c009_Promoters.bed

# Step13: Add length info of promoter regions in column 6.
cat c009_Promoters.bed | awk 'BEGIN {OFS="\t"}; {print $1, $2, $3, $4, $5, $3-$2 }' >d002_Promoters.bed

# Step14. Remove the header in single-cell data.
grep chr C400_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed >C500_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C401_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed >C501_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C402_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed >C502_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C403_H3K27a_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed >C503_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C404_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed >C504_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C405_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed >C505_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C406_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed >C506_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C407_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed >C507_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C408_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed >C508_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C409_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed >C509_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C410_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed >C510_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C411_H3K27me3_Delta_IgG_SC4_Rep1-3_PutativeSignalRegions_CI0.99.bed >C511_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C412_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed >C512_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C413_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed >C513_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C414_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed >C514_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed
grep chr C415_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed >C515_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed

# Step15. Count single-cell putative signals and bulk ChIP signals in promoter regions.
bedtools map -a d002_Promoters.bed -b C500_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e001_promoters.bed
bedtools map -a e001_promoters.bed -b C501_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e002_promoters.bed
bedtools map -a e002_promoters.bed -b C502_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e003_promoters.bed
bedtools map -a e003_promoters.bed -b C503_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e004_promoters.bed
bedtools map -a e004_promoters.bed -b C504_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e005_promoters.bed
bedtools map -a e005_promoters.bed -b C505_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e006_promoters.bed
bedtools map -a e006_promoters.bed -b C506_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e007_promoters.bed
bedtools map -a e007_promoters.bed -b C507_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e008_promoters.bed
bedtools map -a e008_promoters.bed -b C508_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e009_promoters.bed
bedtools map -a e009_promoters.bed -b C509_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e010_promoters.bed
bedtools map -a e010_promoters.bed -b C510_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e011_promoters.bed
bedtools map -a e011_promoters.bed -b C511_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e012_promoters.bed
bedtools map -a e012_promoters.bed -b C512_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e013_promoters.bed
bedtools map -a e013_promoters.bed -b C513_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e014_promoters.bed
bedtools map -a e014_promoters.bed -b C514_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e015_promoters.bed
bedtools map -a e015_promoters.bed -b C515_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e016_promoters.bed
bedtools intersect -a e016_promoters.bed -b b001_K562_H3K27ac_ENCFF301TVL.bed -c >e017_promoters.bed
bedtools intersect -a e017_promoters.bed -b b002_K562_H3K27me3_ENCFF190OWE.bed -c >e018_promoters.bed
bedtools intersect -a e018_promoters.bed -b b003_K562_H3K27ac_ENCFF879BWC.bed -c >e019_promoters.bed
bedtools intersect -a e019_promoters.bed -b b004_K562_H3K27me3_ENCFF692KQZ.bed -c >e020_promoters.bed
bedtools intersect -a e020_promoters.bed -b b005_DND-41_H3K27ac_ENCFF072ZAR.bed -c >e021_promoters.bed
bedtools intersect -a e021_promoters.bed -b b006_DND-41_H3K27me3_ENCFF024MTX.bed -c >e022_promoters.bed
bedtools intersect -a e022_promoters.bed -b b007_DND-41_H3K27ac_ENCFF854LWC.bed -c >e023_promoters.bed
bedtools intersect -a e023_promoters.bed -b b008_DND-41_H3K27me3_ENCFF700KKS.bed -c >e024_promoters.bed
bedtools intersect -a e024_promoters.bed -b b009_Karpas-422_H3K27ac_ENCFF854WUY.bed -c >e025_promoters.bed
bedtools intersect -a e025_promoters.bed -b b010_Karpas-422_H3K27me3_ENCFF960YXZ.bed -c >e026_promoters.bed
bedtools intersect -a e026_promoters.bed -b b011_Karpas-422_H3K27ac_ENCFF949LGB.bed -c >e027_promoters.bed
bedtools intersect -a e027_promoters.bed -b b012_Karpas-422_H3K27me3_ENCFF813CKH.bed -c >e028_promoters.bed
bedtools intersect -a e028_promoters.bed -b b013_OCI-LY1_H3K27ac_ENCFF241NJQ.bed -c >e029_promoters.bed
bedtools intersect -a e029_promoters.bed -b b014_OCI-LY1_H3K27me3_ENCFF401MIF.bed -c >e030_promoters.bed
bedtools intersect -a e030_promoters.bed -b b015_OCI-LY1_H3K27ac_ENCFF572KGX.bed -c >e031_promoters.bed
bedtools intersect -a e031_promoters.bed -b b016_OCI-LY1_H3K27me3_ENCFF503PYV.bed -c >e032_promoters.bed
bedtools intersect -a e032_promoters.bed -b b017_GM12878_H3K27ac_ENCFF948GTC.bed -c >e033_promoters.bed
bedtools intersect -a e033_promoters.bed -b b018_GM12878_H3K27me3_ENCFF796DDM.bed -c >e034_promoters.bed
bedtools intersect -a e034_promoters.bed -b b019_GM12878_H3K27ac_ENCFF804NCH.bed -c >e035_promoters.bed
bedtools intersect -a e035_promoters.bed -b b020_GM12878_H3K27me3_ENCFF927XRX.bed -c >e036_promoters.bed
bedtools intersect -a e036_promoters.bed -b b021_MM1S_H3K27ac_ENCFF605DAC.bed -c >e037_promoters.bed
bedtools intersect -a e037_promoters.bed -b b022_MM1S_H3K27me3_ENCFF712XDN.bed -c >e038_promoters.bed
bedtools intersect -a e038_promoters.bed -b b023_MM1S_H3K27ac_ENCFF937ZTU.bed -c >e039_promoters.bed
bedtools intersect -a e039_promoters.bed -b b024_MM1S_H3K27me3_ENCFF956YCD.bed -c >e040_promoters.bed
bedtools intersect -a e040_promoters.bed -b b025_KMS-11_H3K27ac_ENCFF607VEF.bed -c >e041_promoters.bed
bedtools intersect -a e041_promoters.bed -b b026_KMS-11_H3K27me3_ENCFF283SMP.bed -c >e042_promoters.bed
bedtools intersect -a e042_promoters.bed -b b027_KMS-11_H3K27ac_ENCFF820EBJ.bed -c >e043_promoters.bed
bedtools intersect -a e043_promoters.bed -b b028_KMS-11_H3K27me3_ENCFF891YVY.bed -c >e044_promoters.bed
bedtools intersect -a e044_promoters.bed -b b029_OCI-LY3_H3K27ac_ENCFF132KAK.bed -c >e045_promoters.bed
bedtools intersect -a e045_promoters.bed -b b030_OCI-LY3_H3K27me3_ENCFF286KFY.bed -c >e046_promoters.bed
bedtools intersect -a e046_promoters.bed -b b031_OCI-LY3_H3K27ac_ENCFF988VMF.bed -c >e047_promoters.bed
bedtools intersect -a e047_promoters.bed -b b032_OCI-LY3_H3K27me3_ENCFF818WQQ.bed -c >e048_promoters.bed
bedtools intersect -a e048_promoters.bed -b b033_DOHH2_H3K27ac_ENCFF479VLR.bed -c >e049_promoters.bed
bedtools intersect -a e049_promoters.bed -b b034_DOHH2_H3K27me3_ENCFF370MOM.bed -c >e050_promoters.bed
bedtools intersect -a e050_promoters.bed -b b035_DOHH2_H3K27ac_ENCFF079AQF.bed -c >e051_promoters.bed
bedtools intersect -a e051_promoters.bed -b b036_DOHH2_H3K27me3_ENCFF133EQW.bed -c >e052_promoters.bed
bedtools intersect -a e052_promoters.bed -b b037_SU-DHL-6_H3K27ac_ENCFF070LFK.bed -c >e053_promoters.bed
bedtools intersect -a e053_promoters.bed -b b038_SU-DHL-6_H3K27me3_ENCFF182RDK.bed -c >e054_promoters.bed
bedtools intersect -a e054_promoters.bed -b b039_SU-DHL-6_H3K27ac_ENCFF730NKH.bed -c >e055_promoters.bed
bedtools intersect -a e055_promoters.bed -b b040_SU-DHL-6_H3K27me3_ENCFF075XIO.bed -c >e056_promoters.bed
bedtools intersect -a e056_promoters.bed -b b041_B_cell_H3K27ac_ENCFF365LRL.bed -c >e057_promoters.bed
bedtools intersect -a e057_promoters.bed -b b042_B_cell_H3K27me3_ENCFF326COY.bed -c >e058_promoters.bed
bedtools intersect -a e058_promoters.bed -b b043_B_cell_H3K27ac_ENCFF013CQR.bed -c >e059_promoters.bed
bedtools intersect -a e059_promoters.bed -b b044_B_cell_H3K27me3_ENCFF578PVF.bed -c >e060_promoters.bed
bedtools intersect -a e060_promoters.bed -b b045_B_cell_H3K27ac_ENCFF474VOO.bed -c >e061_promoters.bed
bedtools intersect -a e061_promoters.bed -b b046_B_cell_H3K27me3_ENCFF454ZLD.bed -c >e062_promoters.bed
bedtools intersect -a e062_promoters.bed -b b047_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF831LVQ.bed -c >e063_promoters.bed
bedtools intersect -a e063_promoters.bed -b b048_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF883IRG.bed -c >e064_promoters.bed
bedtools intersect -a e064_promoters.bed -b b049_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF733XRG.bed -c >e065_promoters.bed
bedtools intersect -a e065_promoters.bed -b b050_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF663FZE.bed -c >e066_promoters.bed
bedtools intersect -a e066_promoters.bed -b b051_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF422BYQ.bed -c >e067_promoters.bed
bedtools intersect -a e067_promoters.bed -b b052_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF034VOA.bed -c >e068_promoters.bed
bedtools intersect -a e068_promoters.bed -b b053_natural_killer_cell_H3K27ac_ENCFF604IOL.bed -c >e069_promoters.bed
bedtools intersect -a e069_promoters.bed -b b054_natural_killer_cell_H3K27me3_ENCFF853ZML.bed -c >e070_promoters.bed
bedtools intersect -a e070_promoters.bed -b b055_CD14-positive_monocyte_H3K27ac_ENCFF680VNR.bed -c >e071_promoters.bed
bedtools intersect -a e071_promoters.bed -b b056_CD14-positive_monocyte_H3K27me3_ENCFF145UVW.bed -c >e072_promoters.bed
bedtools intersect -a e072_promoters.bed -b b057_CD14-positive_monocyte_H3K27ac_ENCFF329AXT.bed -c >e073_promoters.bed
bedtools intersect -a e073_promoters.bed -b b058_CD14-positive_monocyte_H3K27me3_ENCFF619JPI.bed -c >e074_promoters.bed
bedtools intersect -a e074_promoters.bed -b b059_CD14-positive_monocyte_H3K27ac_ENCFF835ZFV.bed -c >e075_promoters.bed
bedtools intersect -a e075_promoters.bed -b b060_CD14-positive_monocyte_H3K27me3_ENCFF711ACC.bed -c >e076_promoters.bed
bedtools intersect -a e076_promoters.bed -b b061_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF956SSC.bed -c >e077_promoters.bed
bedtools intersect -a e077_promoters.bed -b b062_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF714KZL.bed -c >e078_promoters.bed
bedtools intersect -a e078_promoters.bed -b b063_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF082MIE.bed -c >e079_promoters.bed
bedtools intersect -a e079_promoters.bed -b b064_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF624YMM.bed -c >e080_promoters.bed
bedtools intersect -a e080_promoters.bed -b b065_CD4-positive_alpha-beta_memory_T_cell_H3K27ac_ENCFF914QOY.bed -c >e081_promoters.bed
bedtools intersect -a e081_promoters.bed -b b066_CD4-positive_alpha-beta_memory_T_cell_H3K27me3_ENCFF504RQX.bed -c >e082_promoters.bed
bedtools intersect -a e082_promoters.bed -b b067_CD4-positive_alpha-beta_memory_T_cell_H3K27ac_ENCFF056LBY.bed -c >e083_promoters.bed
bedtools intersect -a e083_promoters.bed -b b068_CD4-positive_alpha-beta_memory_T_cell_H3K27me3_ENCFF722VPO.bed -c >e084_promoters.bed
bedtools intersect -a e084_promoters.bed -b b069_CD4-positive_alpha-beta_memory_T_cell_H3K27ac_ENCFF817XVA.bed -c >e085_promoters.bed
bedtools intersect -a e085_promoters.bed -b b070_CD4-positive_alpha-beta_memory_T_cell_H3K27me3_ENCFF974TXV.bed -c >e086_promoters.bed
bedtools intersect -a e086_promoters.bed -b b071_CD4-positive_CD25-positive_alpha-beta_regulatory_T_cell_H3K27ac_ENCFF611AQQ.bed -c >e087_promoters.bed
bedtools intersect -a e087_promoters.bed -b b072_CD4-positive_CD25-positive_alpha-beta_regulatory_T_cell_H3K27me3_ENCFF864EUW.bed -c >e088_promoters.bed
bedtools intersect -a e088_promoters.bed -b b073_CD8-positive_alpha-beta_memory_T_cell_H3K27ac_ENCFF633ZOG.bed -c >e089_promoters.bed
bedtools intersect -a e089_promoters.bed -b b074_CD8-positive_alpha-beta_memory_T_cell_H3K27me3_ENCFF407DTQ.bed -c >e090_promoters.bed
bedtools intersect -a e090_promoters.bed -b b075_CD8-positive_alpha-beta_T_cell_H3K27ac_ENCFF449YKU.bed -c >e091_promoters.bed
bedtools intersect -a e091_promoters.bed -b b076_CD8-positive_alpha-beta_T_cell_H3K27me3_ENCFF783NPA.bed -c >e092_promoters.bed
bedtools intersect -a e092_promoters.bed -b b077_CD8-positive_alpha-beta_T_cell_H3K27ac_ENCFF232SFI.bed -c >e093_promoters.bed
bedtools intersect -a e093_promoters.bed -b b078_CD8-positive_alpha-beta_T_cell_H3K27me3_ENCFF179XXQ.bed -c >e094_promoters.bed
bedtools intersect -a e094_promoters.bed -b b079_CD8-positive_alpha-beta_T_cell_H3K27ac_ENCFF346ZJV.bed -c >e095_promoters.bed
bedtools intersect -a e095_promoters.bed -b b080_CD8-positive_alpha-beta_T_cell_H3K27me3_ENCFF792BHX.bed -c >e096_promoters.bed
bedtools intersect -a e096_promoters.bed -b b081_common_myeloid_progenitor_CD34-positive_H3K27ac_ENCFF047LSV.bed -c >e097_promoters.bed
bedtools intersect -a e097_promoters.bed -b b082_common_myeloid_progenitor_CD34-positive_H3K27me3_ENCFF792JAG.bed -c >e098_promoters.bed
bedtools intersect -a e098_promoters.bed -b b083_common_myeloid_progenitor_CD34-positive_H3K27ac_ENCFF823HMZ.bed -c >e099_promoters.bed
bedtools intersect -a e099_promoters.bed -b b084_common_myeloid_progenitor_CD34-positive_H3K27me3_ENCFF931STS.bed -c >e100_promoters.bed
bedtools intersect -a e100_promoters.bed -b b085_common_myeloid_progenitor_CD34-positive_H3K27ac_ENCFF150ZJR.bed -c >e101_promoters.bed
bedtools intersect -a e101_promoters.bed -b b086_common_myeloid_progenitor_CD34-positive_H3K27me3_ENCFF128GDQ.bed -c >e102_promoters.bed
bedtools intersect -a e102_promoters.bed -b b087_effector_memory_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF577PRS.bed -c >e103_promoters.bed
bedtools intersect -a e103_promoters.bed -b b088_effector_memory_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF624RVG.bed -c >e104_promoters.bed
bedtools intersect -a e104_promoters.bed -b b089_effector_memory_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF652IFU.bed -c >e105_promoters.bed
bedtools intersect -a e105_promoters.bed -b b090_effector_memory_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF120QQK.bed -c >e106_promoters.bed
bedtools intersect -a e106_promoters.bed -b b091_neutrophil_H3K27ac_ENCFF810CHL.bed -c >e107_promoters.bed
bedtools intersect -a e107_promoters.bed -b b092_neutrophil_H3K27me3_ENCFF073HXA.bed -c >e108_promoters.bed
bedtools intersect -a e108_promoters.bed -b b093_neutrophil_H3K27ac_ENCFF191UXI.bed -c >e109_promoters.bed
bedtools intersect -a e109_promoters.bed -b b094_neutrophil_H3K27me3_ENCFF517KOQ.bed -c >e110_promoters.bed
bedtools intersect -a e110_promoters.bed -b b095_peripheral_blood_mononuclear_cell_H3K27ac_ENCFF687LPA.bed -c >e111_promoters.bed
bedtools intersect -a e111_promoters.bed -b b096_peripheral_blood_mononuclear_cell_H3K27me3_ENCFF139VFB.bed -c >e112_promoters.bed
bedtools intersect -a e112_promoters.bed -b b097_peripheral_blood_mononuclear_cell_H3K27ac_ENCFF503WNJ.bed -c >e113_promoters.bed
bedtools intersect -a e113_promoters.bed -b b098_peripheral_blood_mononuclear_cell_H3K27me3_ENCFF361XRW.bed -c >e114_promoters.bed
bedtools intersect -a e114_promoters.bed -b b099_peripheral_blood_mononuclear_cell_H3K27ac_ENCFF350ISY.bed -c >e115_promoters.bed
bedtools intersect -a e115_promoters.bed -b b100_peripheral_blood_mononuclear_cell_H3K27me3_ENCFF257UIH.bed -c >e116_promoters.bed
bedtools intersect -a e116_promoters.bed -b b101_T-cell_H3K27ac_ENCFF736FZD.bed -c >e117_promoters.bed
bedtools intersect -a e117_promoters.bed -b b102_T-cell_H3K27me3_ENCFF165YKT.bed -c >e118_promoters.bed
bedtools intersect -a e118_promoters.bed -b b103_T-helper_17_cell_H3K27ac_ENCFF749JAV.bed -c >e119_promoters.bed
bedtools intersect -a e119_promoters.bed -b b104_T-helper_17_cell_H3K27me3_ENCFF628IWA.bed -c >e120_promoters.bed
bedtools intersect -a e120_promoters.bed -b b105_MCF-7_H3K27ac_ENCFF181AML.bed -c >e121_promoters.bed
bedtools intersect -a e121_promoters.bed -b b106_MCF-7_H3K27me3_ENCFF351EJX.bed -c >e122_promoters.bed
bedtools intersect -a e122_promoters.bed -b b107_MCF-7_H3K27ac_ENCFF224RMQ.bed -c >e123_promoters.bed
bedtools intersect -a e123_promoters.bed -b b108_MCF-7_H3K27me3_ENCFF519ABK.bed -c >e124_promoters.bed
bedtools intersect -a e124_promoters.bed -b b109_MCF-7_H3K27ac_ENCFF096GIM.bed -c >e125_promoters.bed
bedtools intersect -a e125_promoters.bed -b b110_MCF-7_H3K27me3_ENCFF997VYW.bed -c >e126_promoters.bed
bedtools intersect -a e126_promoters.bed -b b111_MCF-7_H3K27ac_ENCFF692SZU.bed -c >e127_promoters.bed
bedtools intersect -a e127_promoters.bed -b b112_MCF-7_H3K27me3_ENCFF611UYK.bed -c >e128_promoters.bed
bedtools intersect -a e128_promoters.bed -b b113_HCT116_H3K27ac_ENCFF689GKI.bed -c >e129_promoters.bed
bedtools intersect -a e129_promoters.bed -b b114_HCT116_H3K27me3_ENCFF293SFY.bed -c >e130_promoters.bed
bedtools intersect -a e130_promoters.bed -b b115_HCT116_H3K27ac_ENCFF340TPS.bed -c >e131_promoters.bed
bedtools intersect -a e131_promoters.bed -b b116_HCT116_H3K27me3_ENCFF933YRM.bed -c >e132_promoters.bed
bedtools intersect -a e132_promoters.bed -b b117_HeLa-S3_H3K27ac_ENCFF218BUW.bed -c >e133_promoters.bed
bedtools intersect -a e133_promoters.bed -b b118_HeLa-S3_H3K27me3_ENCFF284GFW.bed -c >e134_promoters.bed
bedtools intersect -a e134_promoters.bed -b b119_HeLa-S3_H3K27ac_ENCFF113QJM.bed -c >e135_promoters.bed
bedtools intersect -a e135_promoters.bed -b b120_HeLa-S3_H3K27me3_ENCFF928PZN.bed -c >e136_promoters.bed
bedtools intersect -a e136_promoters.bed -b b121_HepG2_H3K27ac_ENCFF805KGN.bed -c >e137_promoters.bed
bedtools intersect -a e137_promoters.bed -b b122_HepG2_H3K27me3_ENCFF394DQA.bed -c >e138_promoters.bed
bedtools intersect -a e138_promoters.bed -b b123_HepG2_H3K27ac_ENCFF686HFQ.bed -c >e139_promoters.bed
bedtools intersect -a e139_promoters.bed -b b124_HepG2_H3K27me3_ENCFF030HAG.bed -c >e140_promoters.bed
bedtools intersect -a e140_promoters.bed -b b125_PC-9_H3K27ac_ENCFF299IGN.bed -c >e141_promoters.bed
bedtools intersect -a e141_promoters.bed -b b126_PC-9_H3K27me3_ENCFF217CGZ.bed -c >e142_promoters.bed
bedtools intersect -a e142_promoters.bed -b b127_PC-9_H3K27ac_ENCFF655AIP.bed -c >e143_promoters.bed
bedtools intersect -a e143_promoters.bed -b b128_PC-9_H3K27me3_ENCFF014ESB.bed -c >e144_promoters.bed
bedtools intersect -a e144_promoters.bed -b b129_Panc1_H3K27ac_ENCFF384KMQ.bed -c >e145_promoters.bed
bedtools intersect -a e145_promoters.bed -b b130_Panc1_H3K27me3_ENCFF714IMC.bed -c >e146_promoters.bed
bedtools intersect -a e146_promoters.bed -b b131_Panc1_H3K27ac_ENCFF960KET.bed -c >e147_promoters.bed
bedtools intersect -a e147_promoters.bed -b b132_Panc1_H3K27me3_ENCFF683OAH.bed -c >e148_promoters.bed
bedtools intersect -a e148_promoters.bed -b b133_ACC112_H3K27ac_ENCFF420CUB.bed -c >e149_promoters.bed
bedtools intersect -a e149_promoters.bed -b b134_ACC112_H3K27me3_ENCFF086FXU.bed -c >e150_promoters.bed
bedtools intersect -a e150_promoters.bed -b b135_ACC112_H3K27ac_ENCFF567QOT.bed -c >e151_promoters.bed
bedtools intersect -a e151_promoters.bed -b b136_ACC112_H3K27me3_ENCFF316QCM.bed -c >e152_promoters.bed
bedtools intersect -a e152_promoters.bed -b b137_PC-3_H3K27ac_ENCFF474QFK.bed -c >e153_promoters.bed
bedtools intersect -a e153_promoters.bed -b b138_PC-3_H3K27me3_ENCFF127CPB.bed -c >e154_promoters.bed
bedtools intersect -a e154_promoters.bed -b b139_PC-3_H3K27ac_ENCFF174JIG.bed -c >e155_promoters.bed
bedtools intersect -a e155_promoters.bed -b b140_PC-3_H3K27me3_ENCFF347INE.bed -c >e156_promoters.bed
bedtools intersect -a e156_promoters.bed -b b141_SK-N-SH_H3K27ac_ENCFF659HWC.bed -c >e157_promoters.bed
bedtools intersect -a e157_promoters.bed -b b142_SK-N-SH_H3K27me3_ENCFF690PRE.bed -c >e158_promoters.bed
bedtools intersect -a e158_promoters.bed -b b143_SK-N-SH_H3K27ac_ENCFF879LRT.bed -c >e159_promoters.bed
bedtools intersect -a e159_promoters.bed -b b144_SK-N-SH_H3K27me3_ENCFF897EXE.bed -c >e160_promoters.bed
bedtools intersect -a e160_promoters.bed -b b145_SK-N-SH_H3K27ac_ENCFF380OTV.bed -c >e161_promoters.bed
bedtools intersect -a e161_promoters.bed -b b146_SK-N-SH_H3K27me3_ENCFF614FPH.bed -c >e162_promoters.bed
bedtools intersect -a e162_promoters.bed -b b147_SK-N-SH_H3K27ac_ENCFF775DHW.bed -c >e163_promoters.bed
bedtools intersect -a e163_promoters.bed -b b148_SK-N-SH_H3K27me3_ENCFF762NUT.bed -c >e164_promoters.bed
bedtools intersect -a e164_promoters.bed -b b149_A673_H3K27ac_ENCFF737FZT.bed -c >e165_promoters.bed
bedtools intersect -a e165_promoters.bed -b b150_A673_H3K27me3_ENCFF406AQZ.bed -c >e166_promoters.bed
bedtools intersect -a e166_promoters.bed -b b151_A673_H3K27ac_ENCFF918ACD.bed -c >e167_promoters.bed
bedtools intersect -a e167_promoters.bed -b b152_A673_H3K27me3_ENCFF480BYU.bed -c >e168_promoters.bed
bedtools intersect -a e168_promoters.bed -b b153_mammary_epithelial_cell_H3K27ac_ENCFF988TNK.bed -c >e169_promoters.bed
bedtools intersect -a e169_promoters.bed -b b154_mammary_epithelial_cell_H3K27me3_ENCFF015OVW.bed -c >e170_promoters.bed
bedtools intersect -a e170_promoters.bed -b b155_mammary_epithelial_cell_H3K27ac_ENCFF068FTW.bed -c >e171_promoters.bed
bedtools intersect -a e171_promoters.bed -b b156_mammary_epithelial_cell_H3K27me3_ENCFF843LLA.bed -c >e172_promoters.bed
bedtools intersect -a e172_promoters.bed -b b157_AG04450_H3K27ac_ENCFF618ZNM.bed -c >e173_promoters.bed
bedtools intersect -a e173_promoters.bed -b b158_AG04450_H3K27me3_ENCFF854DNJ.bed -c >e174_promoters.bed
bedtools intersect -a e174_promoters.bed -b b159_astrocyte_H3K27ac_ENCFF084MDC.bed -c >e175_promoters.bed
bedtools intersect -a e175_promoters.bed -b b160_astrocyte_H3K27me3_ENCFF442ZRV.bed -c >e176_promoters.bed
bedtools intersect -a e176_promoters.bed -b b161_astrocyte_H3K27ac_ENCFF496OLR.bed -c >e177_promoters.bed
bedtools intersect -a e177_promoters.bed -b b162_astrocyte_H3K27me3_ENCFF757AUJ.bed -c >e178_promoters.bed
bedtools intersect -a e178_promoters.bed -b b163_endothelial_cell_of_umbilical_vein_H3K27ac_ENCFF450EBG.bed -c >e179_promoters.bed
bedtools intersect -a e179_promoters.bed -b b164_endothelial_cell_of_umbilical_vein_H3K27me3_ENCFF897WVH.bed -c >e180_promoters.bed
bedtools intersect -a e180_promoters.bed -b b165_endothelial_cell_of_umbilical_vein_H3K27ac_ENCFF851NCB.bed -c >e181_promoters.bed
bedtools intersect -a e181_promoters.bed -b b166_endothelial_cell_of_umbilical_vein_H3K27me3_ENCFF944GCZ.bed -c >e182_promoters.bed
bedtools intersect -a e182_promoters.bed -b b167_endothelial_cell_of_umbilical_vein_H3K27ac_ENCFF420ZAI.bed -c >e183_promoters.bed
bedtools intersect -a e183_promoters.bed -b b168_endothelial_cell_of_umbilical_vein_H3K27me3_ENCFF764MJN.bed -c >e184_promoters.bed
bedtools intersect -a e184_promoters.bed -b b169_fibroblast_of_breast_H3K27ac_ENCFF195BUK.bed -c >e185_promoters.bed
bedtools intersect -a e185_promoters.bed -b b170_fibroblast_of_breast_H3K27me3_ENCFF306HNX.bed -c >e186_promoters.bed
bedtools intersect -a e186_promoters.bed -b b171_fibroblast_of_breast_H3K27ac_ENCFF772ADP.bed -c >e187_promoters.bed
bedtools intersect -a e187_promoters.bed -b b172_fibroblast_of_breast_H3K27me3_ENCFF456KBT.bed -c >e188_promoters.bed
bedtools intersect -a e188_promoters.bed -b b173_fibroblast_of_dermis_H3K27ac_ENCFF228BTY.bed -c >e189_promoters.bed
bedtools intersect -a e189_promoters.bed -b b174_fibroblast_of_dermis_H3K27me3_ENCFF678BZW.bed -c >e190_promoters.bed
bedtools intersect -a e190_promoters.bed -b b175_fibroblast_of_dermis_H3K27ac_ENCFF680YEV.bed -c >e191_promoters.bed
bedtools intersect -a e191_promoters.bed -b b176_fibroblast_of_dermis_H3K27me3_ENCFF275IVB.bed -c >e192_promoters.bed
bedtools intersect -a e192_promoters.bed -b b177_fibroblast_of_lung_H3K27ac_ENCFF440FYI.bed -c >e193_promoters.bed
bedtools intersect -a e193_promoters.bed -b b178_fibroblast_of_lung_H3K27me3_ENCFF834MYP.bed -c >e194_promoters.bed
bedtools intersect -a e194_promoters.bed -b b179_fibroblast_of_lung_H3K27ac_ENCFF071QAT.bed -c >e195_promoters.bed
bedtools intersect -a e195_promoters.bed -b b180_fibroblast_of_lung_H3K27me3_ENCFF535LEC.bed -c >e196_promoters.bed
bedtools intersect -a e196_promoters.bed -b b181_foreskin_fibroblast_H3K27ac_ENCFF826JLM.bed -c >e197_promoters.bed
bedtools intersect -a e197_promoters.bed -b b182_foreskin_fibroblast_H3K27me3_ENCFF639OWM.bed -c >e198_promoters.bed
bedtools intersect -a e198_promoters.bed -b b183_foreskin_fibroblast_H3K27ac_ENCFF717BLF.bed -c >e199_promoters.bed
bedtools intersect -a e199_promoters.bed -b b184_foreskin_fibroblast_H3K27me3_ENCFF412ZJA.bed -c >e200_promoters.bed
bedtools intersect -a e200_promoters.bed -b b185_foreskin_fibroblast_H3K27ac_ENCFF742AHH.bed -c >e201_promoters.bed
bedtools intersect -a e201_promoters.bed -b b186_foreskin_fibroblast_H3K27me3_ENCFF819PPP.bed -c >e202_promoters.bed
bedtools intersect -a e202_promoters.bed -b b187_foreskin_fibroblast_H3K27ac_ENCFF868WOD.bed -c >e203_promoters.bed
bedtools intersect -a e203_promoters.bed -b b188_foreskin_fibroblast_H3K27me3_ENCFF464MMC.bed -c >e204_promoters.bed
bedtools intersect -a e204_promoters.bed -b b189_foreskin_keratinocyte_H3K27ac_ENCFF166BMF.bed -c >e205_promoters.bed
bedtools intersect -a e205_promoters.bed -b b190_foreskin_keratinocyte_H3K27me3_ENCFF524BYH.bed -c >e206_promoters.bed
bedtools intersect -a e206_promoters.bed -b b191_foreskin_keratinocyte_H3K27ac_ENCFF234PWP.bed -c >e207_promoters.bed
bedtools intersect -a e207_promoters.bed -b b192_foreskin_keratinocyte_H3K27me3_ENCFF252XIN.bed -c >e208_promoters.bed
bedtools intersect -a e208_promoters.bed -b b193_foreskin_keratinocyte_H3K27ac_ENCFF003FHH.bed -c >e209_promoters.bed
bedtools intersect -a e209_promoters.bed -b b194_foreskin_keratinocyte_H3K27me3_ENCFF079MUK.bed -c >e210_promoters.bed
bedtools intersect -a e210_promoters.bed -b b195_foreskin_melanocyte_H3K27ac_ENCFF449ZJA.bed -c >e211_promoters.bed
bedtools intersect -a e211_promoters.bed -b b196_foreskin_melanocyte_H3K27me3_ENCFF939GYM.bed -c >e212_promoters.bed
bedtools intersect -a e212_promoters.bed -b b197_foreskin_melanocyte_H3K27ac_ENCFF862KQF.bed -c >e213_promoters.bed
bedtools intersect -a e213_promoters.bed -b b198_foreskin_melanocyte_H3K27me3_ENCFF653ZQK.bed -c >e214_promoters.bed
bedtools intersect -a e214_promoters.bed -b b199_GM23248_H3K27ac_ENCFF338JGH.bed -c >e215_promoters.bed
bedtools intersect -a e215_promoters.bed -b b200_GM23248_H3K27me3_ENCFF943RTB.bed -c >e216_promoters.bed
bedtools intersect -a e216_promoters.bed -b b201_GM23248_H3K27ac_ENCFF470UMA.bed -c >e217_promoters.bed
bedtools intersect -a e217_promoters.bed -b b202_GM23248_H3K27me3_ENCFF122SGX.bed -c >e218_promoters.bed
bedtools intersect -a e218_promoters.bed -b b203_GM23338_H3K27ac_ENCFF403VXK.bed -c >e219_promoters.bed
bedtools intersect -a e219_promoters.bed -b b204_GM23338_H3K27me3_ENCFF371CJE.bed -c >e220_promoters.bed
bedtools intersect -a e220_promoters.bed -b b205_GM23338_H3K27ac_ENCFF259MDS.bed -c >e221_promoters.bed
bedtools intersect -a e221_promoters.bed -b b206_GM23338_H3K27me3_ENCFF862WYK.bed -c >e222_promoters.bed
bedtools intersect -a e222_promoters.bed -b b207_IMR-90_H3K27ac_ENCFF146UYU.bed -c >e223_promoters.bed
bedtools intersect -a e223_promoters.bed -b b208_IMR-90_H3K27me3_ENCFF825OWT.bed -c >e224_promoters.bed
bedtools intersect -a e224_promoters.bed -b b209_IMR-90_H3K27ac_ENCFF071VOI.bed -c >e225_promoters.bed
bedtools intersect -a e225_promoters.bed -b b210_IMR-90_H3K27me3_ENCFF868WTE.bed -c >e226_promoters.bed
bedtools intersect -a e226_promoters.bed -b b211_keratinocyte_H3K27ac_ENCFF828BCB.bed -c >e227_promoters.bed
bedtools intersect -a e227_promoters.bed -b b212_keratinocyte_H3K27me3_ENCFF553LTL.bed -c >e228_promoters.bed
bedtools intersect -a e228_promoters.bed -b b213_keratinocyte_H3K27ac_ENCFF578IKI.bed -c >e229_promoters.bed
bedtools intersect -a e229_promoters.bed -b b214_keratinocyte_H3K27me3_ENCFF137DEJ.bed -c >e230_promoters.bed
bedtools intersect -a e230_promoters.bed -b b215_neurosphere_H3K27ac_ENCFF516HFJ.bed -c >e231_promoters.bed
bedtools intersect -a e231_promoters.bed -b b216_neurosphere_H3K27me3_ENCFF903OEB.bed -c >e232_promoters.bed
bedtools intersect -a e232_promoters.bed -b b217_osteoblast_H3K27ac_ENCFF835QFJ.bed -c >e233_promoters.bed
bedtools intersect -a e233_promoters.bed -b b218_osteoblast_H3K27me3_ENCFF318IMH.bed -c >e234_promoters.bed
bedtools intersect -a e234_promoters.bed -b b219_osteoblast_H3K27ac_ENCFF155WZC.bed -c >e235_promoters.bed
bedtools intersect -a e235_promoters.bed -b b220_osteoblast_H3K27me3_ENCFF798RLD.bed -c >e236_promoters.bed
bedtools intersect -a e236_promoters.bed -b b221_skeletal_muscle_myoblast_H3K27ac_ENCFF534NCP.bed -c >e237_promoters.bed
bedtools intersect -a e237_promoters.bed -b b222_skeletal_muscle_myoblast_H3K27me3_ENCFF462BRB.bed -c >e238_promoters.bed
bedtools intersect -a e238_promoters.bed -b b223_skeletal_muscle_myoblast_H3K27ac_ENCFF191YSM.bed -c >e239_promoters.bed
bedtools intersect -a e239_promoters.bed -b b224_skeletal_muscle_myoblast_H3K27me3_ENCFF232HUV.bed -c >e240_promoters.bed
bedtools intersect -a e240_promoters.bed -b b225_UCSF-4_H3K27ac_ENCFF663ILT.bed -c >e241_promoters.bed
bedtools intersect -a e241_promoters.bed -b b226_UCSF-4_H3K27me3_ENCFF358EIU.bed -c >e242_promoters.bed
bedtools intersect -a e242_promoters.bed -b b227_H1_H3K27ac_ENCFF948UXT.bed -c >e243_promoters.bed
bedtools intersect -a e243_promoters.bed -b b228_H1_H3K27me3_ENCFF310SBN.bed -c >e244_promoters.bed
bedtools intersect -a e244_promoters.bed -b b229_H1_H3K27ac_ENCFF663SAM.bed -c >e245_promoters.bed
bedtools intersect -a e245_promoters.bed -b b230_H1_H3K27me3_ENCFF083QQZ.bed -c >e246_promoters.bed
bedtools intersect -a e246_promoters.bed -b b231_H1_H3K27ac_ENCFF242PAC.bed -c >e247_promoters.bed
bedtools intersect -a e247_promoters.bed -b b232_H1_H3K27me3_ENCFF382GPJ.bed -c >e248_promoters.bed
bedtools intersect -a e248_promoters.bed -b b233_H1_H3K27ac_ENCFF238SQN.bed -c >e249_promoters.bed
bedtools intersect -a e249_promoters.bed -b b234_H1_H3K27me3_ENCFF748KOZ.bed -c >e250_promoters.bed
bedtools intersect -a e250_promoters.bed -b b235_H9_H3K27ac_ENCFF271XBU.bed -c >e251_promoters.bed
bedtools intersect -a e251_promoters.bed -b b236_H9_H3K27me3_ENCFF905OOT.bed -c >e252_promoters.bed
bedtools intersect -a e252_promoters.bed -b b237_H9_H3K27ac_ENCFF178ICX.bed -c >e253_promoters.bed
bedtools intersect -a e253_promoters.bed -b b238_H9_H3K27me3_ENCFF022SFF.bed -c >e254_promoters.bed
bedtools intersect -a e254_promoters.bed -b b239_HUES48_H3K27ac_ENCFF973SSW.bed -c >e255_promoters.bed
bedtools intersect -a e255_promoters.bed -b b240_HUES48_H3K27me3_ENCFF487HGF.bed -c >e256_promoters.bed
bedtools intersect -a e256_promoters.bed -b b241_HUES6_H3K27ac_ENCFF048NVB.bed -c >e257_promoters.bed
bedtools intersect -a e257_promoters.bed -b b242_HUES6_H3K27me3_ENCFF451JBS.bed -c >e258_promoters.bed
bedtools intersect -a e258_promoters.bed -b b243_HUES6_H3K27ac_ENCFF373LPF.bed -c >e259_promoters.bed
bedtools intersect -a e259_promoters.bed -b b244_HUES6_H3K27me3_ENCFF832VWA.bed -c >e260_promoters.bed
bedtools intersect -a e260_promoters.bed -b b245_HUES64_H3K27ac_ENCFF935PUM.bed -c >e261_promoters.bed
bedtools intersect -a e261_promoters.bed -b b246_HUES64_H3K27me3_ENCFF083LRD.bed -c >e262_promoters.bed
bedtools intersect -a e262_promoters.bed -b b247_HUES64_H3K27ac_ENCFF169UER.bed -c >e263_promoters.bed
bedtools intersect -a e263_promoters.bed -b b248_HUES64_H3K27me3_ENCFF230FVU.bed -c >e264_promoters.bed
bedtools intersect -a e264_promoters.bed -b b249_iPS_DF_1911_H3K27ac_ENCFF456DFB.bed -c >e265_promoters.bed
bedtools intersect -a e265_promoters.bed -b b250_iPS_DF_1911_H3K27me3_ENCFF901IPF.bed -c >e266_promoters.bed
bedtools intersect -a e266_promoters.bed -b b251_iPS_DF_1911_H3K27ac_ENCFF111NTK.bed -c >e267_promoters.bed
bedtools intersect -a e267_promoters.bed -b b252_iPS_DF_1911_H3K27me3_ENCFF718MKI.bed -c >e268_promoters.bed
bedtools intersect -a e268_promoters.bed -b b253_iPS_DF_69_H3K27ac_ENCFF691OID.bed -c >e269_promoters.bed
bedtools intersect -a e269_promoters.bed -b b254_iPS_DF_69_H3K27me3_ENCFF443WWA.bed -c >e270_promoters.bed
bedtools intersect -a e270_promoters.bed -b b255_iPS-18a_H3K27ac_ENCFF124TRP.bed -c >e271_promoters.bed
bedtools intersect -a e271_promoters.bed -b b256_iPS-18a_H3K27me3_ENCFF391OGS.bed -c >e272_promoters.bed
bedtools intersect -a e272_promoters.bed -b b257_iPS-20b_H3K27ac_ENCFF797ECK.bed -c >e273_promoters.bed
bedtools intersect -a e273_promoters.bed -b b258_iPS-20b_H3K27me3_ENCFF289WQP.bed -c >e274_promoters.bed
# Run the commands above on NIH high-performance computer, Biowulf using swarm commands below.
# swarm -f 003_bedtools_map_intersect_promoters_1-100.swarm --module bedtools --time 2:00:00 --partition largemem -g 500 -t 100 -b 101
# swarm -f 003_bedtools_map_intersect_promoters_101-200.swarm --module bedtools --time 2:00:00 --partition largemem -g 500 -t 100 -b 101 --dependency afterany:44052588
# swarm -f 003_bedtools_map_intersect_promoters_201-274.swarm --module bedtools --time 2:00:00 --partition largemem -g 500 -t 100 -b 101 --dependency afterany:44052608

# swarm -f 003_bedtools_map_intersect_promoters_1-100.swarm --module bedtools --time 2:00:00 --partition=ccr,norm -g 240 -t 50 -b 101
# swarm -f 003_bedtools_map_intersect_promoters_101-200.swarm --module bedtools --time 2:00:00 --partition=ccr,norm -g 240 -t 50 -b 101 --dependency afterany:44054440
# swarm -f 003_bedtools_map_intersect_promoters_201-274.swarm --module bedtools --time 2:00:00 --partition=ccr,norm -g 240 -t 50 -b 101 --dependency afterany:44054444


# Step16. Count single-cell putative signals and bulk ChIP signals in enhancer regions.
bedtools sort -i d001_Enhancers_hg38_w_length.bed >d002_Enhancers_hg38_w_length.bed
bedtools sort -i C500_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed>C600_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C501_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed>C601_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C502_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed>C602_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C503_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed>C603_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C504_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed>C604_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C505_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed>C605_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C506_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed>C606_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C507_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed>C607_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C508_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed>C608_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C509_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed>C609_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C510_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed>C610_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C511_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed>C611_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C512_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed>C612_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C513_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed>C613_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C514_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed>C614_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools sort -i C515_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed>C615_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed
bedtools map -a d002_Enhancers_hg38_w_length.bed -b C600_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e501_enhancers.bed
bedtools map -a e501_enhancers.bed -b C601_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e502_enhancers.bed
bedtools map -a e502_enhancers.bed -b C602_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e503_enhancers.bed
bedtools map -a e503_enhancers.bed -b C603_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e504_enhancers.bed
bedtools map -a e504_enhancers.bed -b C604_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e505_enhancers.bed
bedtools map -a e505_enhancers.bed -b C605_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e506_enhancers.bed
bedtools map -a e506_enhancers.bed -b C606_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e507_enhancers.bed
bedtools map -a e507_enhancers.bed -b C607_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e508_enhancers.bed
bedtools map -a e508_enhancers.bed -b C608_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e509_enhancers.bed
bedtools map -a e509_enhancers.bed -b C609_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e510_enhancers.bed
bedtools map -a e510_enhancers.bed -b C610_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e511_enhancers.bed
bedtools map -a e511_enhancers.bed -b C611_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e512_enhancers.bed
bedtools map -a e512_enhancers.bed -b C612_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e513_enhancers.bed
bedtools map -a e513_enhancers.bed -b C613_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e514_enhancers.bed
bedtools map -a e514_enhancers.bed -b C614_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e515_enhancers.bed
bedtools map -a e515_enhancers.bed -b C615_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed -c 8 -o sum >e516_enhancers.bed
bedtools intersect -a e516_enhancers.bed -b b001_K562_H3K27ac_ENCFF301TVL.bed -c >e517_enhancers.bed
bedtools intersect -a e517_enhancers.bed -b b002_K562_H3K27me3_ENCFF190OWE.bed -c >e518_enhancers.bed
bedtools intersect -a e518_enhancers.bed -b b003_K562_H3K27ac_ENCFF879BWC.bed -c >e519_enhancers.bed
bedtools intersect -a e519_enhancers.bed -b b004_K562_H3K27me3_ENCFF692KQZ.bed -c >e520_enhancers.bed
bedtools intersect -a e520_enhancers.bed -b b005_DND-41_H3K27ac_ENCFF072ZAR.bed -c >e521_enhancers.bed
bedtools intersect -a e521_enhancers.bed -b b006_DND-41_H3K27me3_ENCFF024MTX.bed -c >e522_enhancers.bed
bedtools intersect -a e522_enhancers.bed -b b007_DND-41_H3K27ac_ENCFF854LWC.bed -c >e523_enhancers.bed
bedtools intersect -a e523_enhancers.bed -b b008_DND-41_H3K27me3_ENCFF700KKS.bed -c >e524_enhancers.bed
bedtools intersect -a e524_enhancers.bed -b b009_Karpas-422_H3K27ac_ENCFF854WUY.bed -c >e525_enhancers.bed
bedtools intersect -a e525_enhancers.bed -b b010_Karpas-422_H3K27me3_ENCFF960YXZ.bed -c >e526_enhancers.bed
bedtools intersect -a e526_enhancers.bed -b b011_Karpas-422_H3K27ac_ENCFF949LGB.bed -c >e527_enhancers.bed
bedtools intersect -a e527_enhancers.bed -b b012_Karpas-422_H3K27me3_ENCFF813CKH.bed -c >e528_enhancers.bed
bedtools intersect -a e528_enhancers.bed -b b013_OCI-LY1_H3K27ac_ENCFF241NJQ.bed -c >e529_enhancers.bed
bedtools intersect -a e529_enhancers.bed -b b014_OCI-LY1_H3K27me3_ENCFF401MIF.bed -c >e530_enhancers.bed
bedtools intersect -a e530_enhancers.bed -b b015_OCI-LY1_H3K27ac_ENCFF572KGX.bed -c >e531_enhancers.bed
bedtools intersect -a e531_enhancers.bed -b b016_OCI-LY1_H3K27me3_ENCFF503PYV.bed -c >e532_enhancers.bed
bedtools intersect -a e532_enhancers.bed -b b017_GM12878_H3K27ac_ENCFF948GTC.bed -c >e533_enhancers.bed
bedtools intersect -a e533_enhancers.bed -b b018_GM12878_H3K27me3_ENCFF796DDM.bed -c >e534_enhancers.bed
bedtools intersect -a e534_enhancers.bed -b b019_GM12878_H3K27ac_ENCFF804NCH.bed -c >e535_enhancers.bed
bedtools intersect -a e535_enhancers.bed -b b020_GM12878_H3K27me3_ENCFF927XRX.bed -c >e536_enhancers.bed
bedtools intersect -a e536_enhancers.bed -b b021_MM1S_H3K27ac_ENCFF605DAC.bed -c >e537_enhancers.bed
bedtools intersect -a e537_enhancers.bed -b b022_MM1S_H3K27me3_ENCFF712XDN.bed -c >e538_enhancers.bed
bedtools intersect -a e538_enhancers.bed -b b023_MM1S_H3K27ac_ENCFF937ZTU.bed -c >e539_enhancers.bed
bedtools intersect -a e539_enhancers.bed -b b024_MM1S_H3K27me3_ENCFF956YCD.bed -c >e540_enhancers.bed
bedtools intersect -a e540_enhancers.bed -b b025_KMS-11_H3K27ac_ENCFF607VEF.bed -c >e541_enhancers.bed
bedtools intersect -a e541_enhancers.bed -b b026_KMS-11_H3K27me3_ENCFF283SMP.bed -c >e542_enhancers.bed
bedtools intersect -a e542_enhancers.bed -b b027_KMS-11_H3K27ac_ENCFF820EBJ.bed -c >e543_enhancers.bed
bedtools intersect -a e543_enhancers.bed -b b028_KMS-11_H3K27me3_ENCFF891YVY.bed -c >e544_enhancers.bed
bedtools intersect -a e544_enhancers.bed -b b029_OCI-LY3_H3K27ac_ENCFF132KAK.bed -c >e545_enhancers.bed
bedtools intersect -a e545_enhancers.bed -b b030_OCI-LY3_H3K27me3_ENCFF286KFY.bed -c >e546_enhancers.bed
bedtools intersect -a e546_enhancers.bed -b b031_OCI-LY3_H3K27ac_ENCFF988VMF.bed -c >e547_enhancers.bed
bedtools intersect -a e547_enhancers.bed -b b032_OCI-LY3_H3K27me3_ENCFF818WQQ.bed -c >e548_enhancers.bed
bedtools intersect -a e548_enhancers.bed -b b033_DOHH2_H3K27ac_ENCFF479VLR.bed -c >e549_enhancers.bed
bedtools intersect -a e549_enhancers.bed -b b034_DOHH2_H3K27me3_ENCFF370MOM.bed -c >e550_enhancers.bed
bedtools intersect -a e550_enhancers.bed -b b035_DOHH2_H3K27ac_ENCFF079AQF.bed -c >e551_enhancers.bed
bedtools intersect -a e551_enhancers.bed -b b036_DOHH2_H3K27me3_ENCFF133EQW.bed -c >e552_enhancers.bed
bedtools intersect -a e552_enhancers.bed -b b037_SU-DHL-6_H3K27ac_ENCFF070LFK.bed -c >e553_enhancers.bed
bedtools intersect -a e553_enhancers.bed -b b038_SU-DHL-6_H3K27me3_ENCFF182RDK.bed -c >e554_enhancers.bed
bedtools intersect -a e554_enhancers.bed -b b039_SU-DHL-6_H3K27ac_ENCFF730NKH.bed -c >e555_enhancers.bed
bedtools intersect -a e555_enhancers.bed -b b040_SU-DHL-6_H3K27me3_ENCFF075XIO.bed -c >e556_enhancers.bed
bedtools intersect -a e556_enhancers.bed -b b041_B_cell_H3K27ac_ENCFF365LRL.bed -c >e557_enhancers.bed
bedtools intersect -a e557_enhancers.bed -b b042_B_cell_H3K27me3_ENCFF326COY.bed -c >e558_enhancers.bed
bedtools intersect -a e558_enhancers.bed -b b043_B_cell_H3K27ac_ENCFF013CQR.bed -c >e559_enhancers.bed
bedtools intersect -a e559_enhancers.bed -b b044_B_cell_H3K27me3_ENCFF578PVF.bed -c >e560_enhancers.bed
bedtools intersect -a e560_enhancers.bed -b b045_B_cell_H3K27ac_ENCFF474VOO.bed -c >e561_enhancers.bed
bedtools intersect -a e561_enhancers.bed -b b046_B_cell_H3K27me3_ENCFF454ZLD.bed -c >e562_enhancers.bed
bedtools intersect -a e562_enhancers.bed -b b047_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF831LVQ.bed -c >e563_enhancers.bed
bedtools intersect -a e563_enhancers.bed -b b048_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF883IRG.bed -c >e564_enhancers.bed
bedtools intersect -a e564_enhancers.bed -b b049_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF733XRG.bed -c >e565_enhancers.bed
bedtools intersect -a e565_enhancers.bed -b b050_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF663FZE.bed -c >e566_enhancers.bed
bedtools intersect -a e566_enhancers.bed -b b051_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF422BYQ.bed -c >e567_enhancers.bed
bedtools intersect -a e567_enhancers.bed -b b052_naive_thymus-derived_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF034VOA.bed -c >e568_enhancers.bed
bedtools intersect -a e568_enhancers.bed -b b053_natural_killer_cell_H3K27ac_ENCFF604IOL.bed -c >e569_enhancers.bed
bedtools intersect -a e569_enhancers.bed -b b054_natural_killer_cell_H3K27me3_ENCFF853ZML.bed -c >e570_enhancers.bed
bedtools intersect -a e570_enhancers.bed -b b055_CD14-positive_monocyte_H3K27ac_ENCFF680VNR.bed -c >e571_enhancers.bed
bedtools intersect -a e571_enhancers.bed -b b056_CD14-positive_monocyte_H3K27me3_ENCFF145UVW.bed -c >e572_enhancers.bed
bedtools intersect -a e572_enhancers.bed -b b057_CD14-positive_monocyte_H3K27ac_ENCFF329AXT.bed -c >e573_enhancers.bed
bedtools intersect -a e573_enhancers.bed -b b058_CD14-positive_monocyte_H3K27me3_ENCFF619JPI.bed -c >e574_enhancers.bed
bedtools intersect -a e574_enhancers.bed -b b059_CD14-positive_monocyte_H3K27ac_ENCFF835ZFV.bed -c >e575_enhancers.bed
bedtools intersect -a e575_enhancers.bed -b b060_CD14-positive_monocyte_H3K27me3_ENCFF711ACC.bed -c >e576_enhancers.bed
bedtools intersect -a e576_enhancers.bed -b b061_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF956SSC.bed -c >e577_enhancers.bed
bedtools intersect -a e577_enhancers.bed -b b062_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF714KZL.bed -c >e578_enhancers.bed
bedtools intersect -a e578_enhancers.bed -b b063_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF082MIE.bed -c >e579_enhancers.bed
bedtools intersect -a e579_enhancers.bed -b b064_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF624YMM.bed -c >e580_enhancers.bed
bedtools intersect -a e580_enhancers.bed -b b065_CD4-positive_alpha-beta_memory_T_cell_H3K27ac_ENCFF914QOY.bed -c >e581_enhancers.bed
bedtools intersect -a e581_enhancers.bed -b b066_CD4-positive_alpha-beta_memory_T_cell_H3K27me3_ENCFF504RQX.bed -c >e582_enhancers.bed
bedtools intersect -a e582_enhancers.bed -b b067_CD4-positive_alpha-beta_memory_T_cell_H3K27ac_ENCFF056LBY.bed -c >e583_enhancers.bed
bedtools intersect -a e583_enhancers.bed -b b068_CD4-positive_alpha-beta_memory_T_cell_H3K27me3_ENCFF722VPO.bed -c >e584_enhancers.bed
bedtools intersect -a e584_enhancers.bed -b b069_CD4-positive_alpha-beta_memory_T_cell_H3K27ac_ENCFF817XVA.bed -c >e585_enhancers.bed
bedtools intersect -a e585_enhancers.bed -b b070_CD4-positive_alpha-beta_memory_T_cell_H3K27me3_ENCFF974TXV.bed -c >e586_enhancers.bed
bedtools intersect -a e586_enhancers.bed -b b071_CD4-positive_CD25-positive_alpha-beta_regulatory_T_cell_H3K27ac_ENCFF611AQQ.bed -c >e587_enhancers.bed
bedtools intersect -a e587_enhancers.bed -b b072_CD4-positive_CD25-positive_alpha-beta_regulatory_T_cell_H3K27me3_ENCFF864EUW.bed -c >e588_enhancers.bed
bedtools intersect -a e588_enhancers.bed -b b073_CD8-positive_alpha-beta_memory_T_cell_H3K27ac_ENCFF633ZOG.bed -c >e589_enhancers.bed
bedtools intersect -a e589_enhancers.bed -b b074_CD8-positive_alpha-beta_memory_T_cell_H3K27me3_ENCFF407DTQ.bed -c >e590_enhancers.bed
bedtools intersect -a e590_enhancers.bed -b b075_CD8-positive_alpha-beta_T_cell_H3K27ac_ENCFF449YKU.bed -c >e591_enhancers.bed
bedtools intersect -a e591_enhancers.bed -b b076_CD8-positive_alpha-beta_T_cell_H3K27me3_ENCFF783NPA.bed -c >e592_enhancers.bed
bedtools intersect -a e592_enhancers.bed -b b077_CD8-positive_alpha-beta_T_cell_H3K27ac_ENCFF232SFI.bed -c >e593_enhancers.bed
bedtools intersect -a e593_enhancers.bed -b b078_CD8-positive_alpha-beta_T_cell_H3K27me3_ENCFF179XXQ.bed -c >e594_enhancers.bed
bedtools intersect -a e594_enhancers.bed -b b079_CD8-positive_alpha-beta_T_cell_H3K27ac_ENCFF346ZJV.bed -c >e595_enhancers.bed
bedtools intersect -a e595_enhancers.bed -b b080_CD8-positive_alpha-beta_T_cell_H3K27me3_ENCFF792BHX.bed -c >e596_enhancers.bed
bedtools intersect -a e596_enhancers.bed -b b081_common_myeloid_progenitor_CD34-positive_H3K27ac_ENCFF047LSV.bed -c >e597_enhancers.bed
bedtools intersect -a e597_enhancers.bed -b b082_common_myeloid_progenitor_CD34-positive_H3K27me3_ENCFF792JAG.bed -c >e598_enhancers.bed
bedtools intersect -a e598_enhancers.bed -b b083_common_myeloid_progenitor_CD34-positive_H3K27ac_ENCFF823HMZ.bed -c >e599_enhancers.bed
bedtools intersect -a e599_enhancers.bed -b b084_common_myeloid_progenitor_CD34-positive_H3K27me3_ENCFF931STS.bed -c >e600_enhancers.bed
bedtools intersect -a e600_enhancers.bed -b b085_common_myeloid_progenitor_CD34-positive_H3K27ac_ENCFF150ZJR.bed -c >e601_enhancers.bed
bedtools intersect -a e601_enhancers.bed -b b086_common_myeloid_progenitor_CD34-positive_H3K27me3_ENCFF128GDQ.bed -c >e602_enhancers.bed
bedtools intersect -a e602_enhancers.bed -b b087_effector_memory_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF577PRS.bed -c >e603_enhancers.bed
bedtools intersect -a e603_enhancers.bed -b b088_effector_memory_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF624RVG.bed -c >e604_enhancers.bed
bedtools intersect -a e604_enhancers.bed -b b089_effector_memory_CD4-positive_alpha-beta_T_cell_H3K27ac_ENCFF652IFU.bed -c >e605_enhancers.bed
bedtools intersect -a e605_enhancers.bed -b b090_effector_memory_CD4-positive_alpha-beta_T_cell_H3K27me3_ENCFF120QQK.bed -c >e606_enhancers.bed
bedtools intersect -a e606_enhancers.bed -b b091_neutrophil_H3K27ac_ENCFF810CHL.bed -c >e607_enhancers.bed
bedtools intersect -a e607_enhancers.bed -b b092_neutrophil_H3K27me3_ENCFF073HXA.bed -c >e608_enhancers.bed
bedtools intersect -a e608_enhancers.bed -b b093_neutrophil_H3K27ac_ENCFF191UXI.bed -c >e609_enhancers.bed
bedtools intersect -a e609_enhancers.bed -b b094_neutrophil_H3K27me3_ENCFF517KOQ.bed -c >e610_enhancers.bed
bedtools intersect -a e610_enhancers.bed -b b095_peripheral_blood_mononuclear_cell_H3K27ac_ENCFF687LPA.bed -c >e611_enhancers.bed
bedtools intersect -a e611_enhancers.bed -b b096_peripheral_blood_mononuclear_cell_H3K27me3_ENCFF139VFB.bed -c >e612_enhancers.bed
bedtools intersect -a e612_enhancers.bed -b b097_peripheral_blood_mononuclear_cell_H3K27ac_ENCFF503WNJ.bed -c >e613_enhancers.bed
bedtools intersect -a e613_enhancers.bed -b b098_peripheral_blood_mononuclear_cell_H3K27me3_ENCFF361XRW.bed -c >e614_enhancers.bed
bedtools intersect -a e614_enhancers.bed -b b099_peripheral_blood_mononuclear_cell_H3K27ac_ENCFF350ISY.bed -c >e615_enhancers.bed
bedtools intersect -a e615_enhancers.bed -b b100_peripheral_blood_mononuclear_cell_H3K27me3_ENCFF257UIH.bed -c >e616_enhancers.bed
bedtools intersect -a e616_enhancers.bed -b b101_T-cell_H3K27ac_ENCFF736FZD.bed -c >e617_enhancers.bed
bedtools intersect -a e617_enhancers.bed -b b102_T-cell_H3K27me3_ENCFF165YKT.bed -c >e618_enhancers.bed
bedtools intersect -a e618_enhancers.bed -b b103_T-helper_17_cell_H3K27ac_ENCFF749JAV.bed -c >e619_enhancers.bed
bedtools intersect -a e619_enhancers.bed -b b104_T-helper_17_cell_H3K27me3_ENCFF628IWA.bed -c >e620_enhancers.bed
bedtools intersect -a e620_enhancers.bed -b b105_MCF-7_H3K27ac_ENCFF181AML.bed -c >e621_enhancers.bed
bedtools intersect -a e621_enhancers.bed -b b106_MCF-7_H3K27me3_ENCFF351EJX.bed -c >e622_enhancers.bed
bedtools intersect -a e622_enhancers.bed -b b107_MCF-7_H3K27ac_ENCFF224RMQ.bed -c >e623_enhancers.bed
bedtools intersect -a e623_enhancers.bed -b b108_MCF-7_H3K27me3_ENCFF519ABK.bed -c >e624_enhancers.bed
bedtools intersect -a e624_enhancers.bed -b b109_MCF-7_H3K27ac_ENCFF096GIM.bed -c >e625_enhancers.bed
bedtools intersect -a e625_enhancers.bed -b b110_MCF-7_H3K27me3_ENCFF997VYW.bed -c >e626_enhancers.bed
bedtools intersect -a e626_enhancers.bed -b b111_MCF-7_H3K27ac_ENCFF692SZU.bed -c >e627_enhancers.bed
bedtools intersect -a e627_enhancers.bed -b b112_MCF-7_H3K27me3_ENCFF611UYK.bed -c >e628_enhancers.bed
bedtools intersect -a e628_enhancers.bed -b b113_HCT116_H3K27ac_ENCFF689GKI.bed -c >e629_enhancers.bed
bedtools intersect -a e629_enhancers.bed -b b114_HCT116_H3K27me3_ENCFF293SFY.bed -c >e630_enhancers.bed
bedtools intersect -a e630_enhancers.bed -b b115_HCT116_H3K27ac_ENCFF340TPS.bed -c >e631_enhancers.bed
bedtools intersect -a e631_enhancers.bed -b b116_HCT116_H3K27me3_ENCFF933YRM.bed -c >e632_enhancers.bed
bedtools intersect -a e632_enhancers.bed -b b117_HeLa-S3_H3K27ac_ENCFF218BUW.bed -c >e633_enhancers.bed
bedtools intersect -a e633_enhancers.bed -b b118_HeLa-S3_H3K27me3_ENCFF284GFW.bed -c >e634_enhancers.bed
bedtools intersect -a e634_enhancers.bed -b b119_HeLa-S3_H3K27ac_ENCFF113QJM.bed -c >e635_enhancers.bed
bedtools intersect -a e635_enhancers.bed -b b120_HeLa-S3_H3K27me3_ENCFF928PZN.bed -c >e636_enhancers.bed
bedtools intersect -a e636_enhancers.bed -b b121_HepG2_H3K27ac_ENCFF805KGN.bed -c >e637_enhancers.bed
bedtools intersect -a e637_enhancers.bed -b b122_HepG2_H3K27me3_ENCFF394DQA.bed -c >e638_enhancers.bed
bedtools intersect -a e638_enhancers.bed -b b123_HepG2_H3K27ac_ENCFF686HFQ.bed -c >e639_enhancers.bed
bedtools intersect -a e639_enhancers.bed -b b124_HepG2_H3K27me3_ENCFF030HAG.bed -c >e640_enhancers.bed
bedtools intersect -a e640_enhancers.bed -b b125_PC-9_H3K27ac_ENCFF299IGN.bed -c >e641_enhancers.bed
bedtools intersect -a e641_enhancers.bed -b b126_PC-9_H3K27me3_ENCFF217CGZ.bed -c >e642_enhancers.bed
bedtools intersect -a e642_enhancers.bed -b b127_PC-9_H3K27ac_ENCFF655AIP.bed -c >e643_enhancers.bed
bedtools intersect -a e643_enhancers.bed -b b128_PC-9_H3K27me3_ENCFF014ESB.bed -c >e644_enhancers.bed
bedtools intersect -a e644_enhancers.bed -b b129_Panc1_H3K27ac_ENCFF384KMQ.bed -c >e645_enhancers.bed
bedtools intersect -a e645_enhancers.bed -b b130_Panc1_H3K27me3_ENCFF714IMC.bed -c >e646_enhancers.bed
bedtools intersect -a e646_enhancers.bed -b b131_Panc1_H3K27ac_ENCFF960KET.bed -c >e647_enhancers.bed
bedtools intersect -a e647_enhancers.bed -b b132_Panc1_H3K27me3_ENCFF683OAH.bed -c >e648_enhancers.bed
bedtools intersect -a e648_enhancers.bed -b b133_ACC112_H3K27ac_ENCFF420CUB.bed -c >e649_enhancers.bed
bedtools intersect -a e649_enhancers.bed -b b134_ACC112_H3K27me3_ENCFF086FXU.bed -c >e650_enhancers.bed
bedtools intersect -a e650_enhancers.bed -b b135_ACC112_H3K27ac_ENCFF567QOT.bed -c >e651_enhancers.bed
bedtools intersect -a e651_enhancers.bed -b b136_ACC112_H3K27me3_ENCFF316QCM.bed -c >e652_enhancers.bed
bedtools intersect -a e652_enhancers.bed -b b137_PC-3_H3K27ac_ENCFF474QFK.bed -c >e653_enhancers.bed
bedtools intersect -a e653_enhancers.bed -b b138_PC-3_H3K27me3_ENCFF127CPB.bed -c >e654_enhancers.bed
bedtools intersect -a e654_enhancers.bed -b b139_PC-3_H3K27ac_ENCFF174JIG.bed -c >e655_enhancers.bed
bedtools intersect -a e655_enhancers.bed -b b140_PC-3_H3K27me3_ENCFF347INE.bed -c >e656_enhancers.bed
bedtools intersect -a e656_enhancers.bed -b b141_SK-N-SH_H3K27ac_ENCFF659HWC.bed -c >e657_enhancers.bed
bedtools intersect -a e657_enhancers.bed -b b142_SK-N-SH_H3K27me3_ENCFF690PRE.bed -c >e658_enhancers.bed
bedtools intersect -a e658_enhancers.bed -b b143_SK-N-SH_H3K27ac_ENCFF879LRT.bed -c >e659_enhancers.bed
bedtools intersect -a e659_enhancers.bed -b b144_SK-N-SH_H3K27me3_ENCFF897EXE.bed -c >e660_enhancers.bed
bedtools intersect -a e660_enhancers.bed -b b145_SK-N-SH_H3K27ac_ENCFF380OTV.bed -c >e661_enhancers.bed
bedtools intersect -a e661_enhancers.bed -b b146_SK-N-SH_H3K27me3_ENCFF614FPH.bed -c >e662_enhancers.bed
bedtools intersect -a e662_enhancers.bed -b b147_SK-N-SH_H3K27ac_ENCFF775DHW.bed -c >e663_enhancers.bed
bedtools intersect -a e663_enhancers.bed -b b148_SK-N-SH_H3K27me3_ENCFF762NUT.bed -c >e664_enhancers.bed
bedtools intersect -a e664_enhancers.bed -b b149_A673_H3K27ac_ENCFF737FZT.bed -c >e665_enhancers.bed
bedtools intersect -a e665_enhancers.bed -b b150_A673_H3K27me3_ENCFF406AQZ.bed -c >e666_enhancers.bed
bedtools intersect -a e666_enhancers.bed -b b151_A673_H3K27ac_ENCFF918ACD.bed -c >e667_enhancers.bed
bedtools intersect -a e667_enhancers.bed -b b152_A673_H3K27me3_ENCFF480BYU.bed -c >e668_enhancers.bed
bedtools intersect -a e668_enhancers.bed -b b153_mammary_epithelial_cell_H3K27ac_ENCFF988TNK.bed -c >e669_enhancers.bed
bedtools intersect -a e669_enhancers.bed -b b154_mammary_epithelial_cell_H3K27me3_ENCFF015OVW.bed -c >e670_enhancers.bed
bedtools intersect -a e670_enhancers.bed -b b155_mammary_epithelial_cell_H3K27ac_ENCFF068FTW.bed -c >e671_enhancers.bed
bedtools intersect -a e671_enhancers.bed -b b156_mammary_epithelial_cell_H3K27me3_ENCFF843LLA.bed -c >e672_enhancers.bed
bedtools intersect -a e672_enhancers.bed -b b157_AG04450_H3K27ac_ENCFF618ZNM.bed -c >e673_enhancers.bed
bedtools intersect -a e673_enhancers.bed -b b158_AG04450_H3K27me3_ENCFF854DNJ.bed -c >e674_enhancers.bed
bedtools intersect -a e674_enhancers.bed -b b159_astrocyte_H3K27ac_ENCFF084MDC.bed -c >e675_enhancers.bed
bedtools intersect -a e675_enhancers.bed -b b160_astrocyte_H3K27me3_ENCFF442ZRV.bed -c >e676_enhancers.bed
bedtools intersect -a e676_enhancers.bed -b b161_astrocyte_H3K27ac_ENCFF496OLR.bed -c >e677_enhancers.bed
bedtools intersect -a e677_enhancers.bed -b b162_astrocyte_H3K27me3_ENCFF757AUJ.bed -c >e678_enhancers.bed
bedtools intersect -a e678_enhancers.bed -b b163_endothelial_cell_of_umbilical_vein_H3K27ac_ENCFF450EBG.bed -c >e679_enhancers.bed
bedtools intersect -a e679_enhancers.bed -b b164_endothelial_cell_of_umbilical_vein_H3K27me3_ENCFF897WVH.bed -c >e680_enhancers.bed
bedtools intersect -a e680_enhancers.bed -b b165_endothelial_cell_of_umbilical_vein_H3K27ac_ENCFF851NCB.bed -c >e681_enhancers.bed
bedtools intersect -a e681_enhancers.bed -b b166_endothelial_cell_of_umbilical_vein_H3K27me3_ENCFF944GCZ.bed -c >e682_enhancers.bed
bedtools intersect -a e682_enhancers.bed -b b167_endothelial_cell_of_umbilical_vein_H3K27ac_ENCFF420ZAI.bed -c >e683_enhancers.bed
bedtools intersect -a e683_enhancers.bed -b b168_endothelial_cell_of_umbilical_vein_H3K27me3_ENCFF764MJN.bed -c >e684_enhancers.bed
bedtools intersect -a e684_enhancers.bed -b b169_fibroblast_of_breast_H3K27ac_ENCFF195BUK.bed -c >e685_enhancers.bed
bedtools intersect -a e685_enhancers.bed -b b170_fibroblast_of_breast_H3K27me3_ENCFF306HNX.bed -c >e686_enhancers.bed
bedtools intersect -a e686_enhancers.bed -b b171_fibroblast_of_breast_H3K27ac_ENCFF772ADP.bed -c >e687_enhancers.bed
bedtools intersect -a e687_enhancers.bed -b b172_fibroblast_of_breast_H3K27me3_ENCFF456KBT.bed -c >e688_enhancers.bed
bedtools intersect -a e688_enhancers.bed -b b173_fibroblast_of_dermis_H3K27ac_ENCFF228BTY.bed -c >e689_enhancers.bed
bedtools intersect -a e689_enhancers.bed -b b174_fibroblast_of_dermis_H3K27me3_ENCFF678BZW.bed -c >e690_enhancers.bed
bedtools intersect -a e690_enhancers.bed -b b175_fibroblast_of_dermis_H3K27ac_ENCFF680YEV.bed -c >e691_enhancers.bed
bedtools intersect -a e691_enhancers.bed -b b176_fibroblast_of_dermis_H3K27me3_ENCFF275IVB.bed -c >e692_enhancers.bed
bedtools intersect -a e692_enhancers.bed -b b177_fibroblast_of_lung_H3K27ac_ENCFF440FYI.bed -c >e693_enhancers.bed
bedtools intersect -a e693_enhancers.bed -b b178_fibroblast_of_lung_H3K27me3_ENCFF834MYP.bed -c >e694_enhancers.bed
bedtools intersect -a e694_enhancers.bed -b b179_fibroblast_of_lung_H3K27ac_ENCFF071QAT.bed -c >e695_enhancers.bed
bedtools intersect -a e695_enhancers.bed -b b180_fibroblast_of_lung_H3K27me3_ENCFF535LEC.bed -c >e696_enhancers.bed
bedtools intersect -a e696_enhancers.bed -b b181_foreskin_fibroblast_H3K27ac_ENCFF826JLM.bed -c >e697_enhancers.bed
bedtools intersect -a e697_enhancers.bed -b b182_foreskin_fibroblast_H3K27me3_ENCFF639OWM.bed -c >e698_enhancers.bed
bedtools intersect -a e698_enhancers.bed -b b183_foreskin_fibroblast_H3K27ac_ENCFF717BLF.bed -c >e699_enhancers.bed
bedtools intersect -a e699_enhancers.bed -b b184_foreskin_fibroblast_H3K27me3_ENCFF412ZJA.bed -c >e700_enhancers.bed
bedtools intersect -a e700_enhancers.bed -b b185_foreskin_fibroblast_H3K27ac_ENCFF742AHH.bed -c >e701_enhancers.bed
bedtools intersect -a e701_enhancers.bed -b b186_foreskin_fibroblast_H3K27me3_ENCFF819PPP.bed -c >e702_enhancers.bed
bedtools intersect -a e702_enhancers.bed -b b187_foreskin_fibroblast_H3K27ac_ENCFF868WOD.bed -c >e703_enhancers.bed
bedtools intersect -a e703_enhancers.bed -b b188_foreskin_fibroblast_H3K27me3_ENCFF464MMC.bed -c >e704_enhancers.bed
bedtools intersect -a e704_enhancers.bed -b b189_foreskin_keratinocyte_H3K27ac_ENCFF166BMF.bed -c >e705_enhancers.bed
bedtools intersect -a e705_enhancers.bed -b b190_foreskin_keratinocyte_H3K27me3_ENCFF524BYH.bed -c >e706_enhancers.bed
bedtools intersect -a e706_enhancers.bed -b b191_foreskin_keratinocyte_H3K27ac_ENCFF234PWP.bed -c >e707_enhancers.bed
bedtools intersect -a e707_enhancers.bed -b b192_foreskin_keratinocyte_H3K27me3_ENCFF252XIN.bed -c >e708_enhancers.bed
bedtools intersect -a e708_enhancers.bed -b b193_foreskin_keratinocyte_H3K27ac_ENCFF003FHH.bed -c >e709_enhancers.bed
bedtools intersect -a e709_enhancers.bed -b b194_foreskin_keratinocyte_H3K27me3_ENCFF079MUK.bed -c >e710_enhancers.bed
bedtools intersect -a e710_enhancers.bed -b b195_foreskin_melanocyte_H3K27ac_ENCFF449ZJA.bed -c >e711_enhancers.bed
bedtools intersect -a e711_enhancers.bed -b b196_foreskin_melanocyte_H3K27me3_ENCFF939GYM.bed -c >e712_enhancers.bed
bedtools intersect -a e712_enhancers.bed -b b197_foreskin_melanocyte_H3K27ac_ENCFF862KQF.bed -c >e713_enhancers.bed
bedtools intersect -a e713_enhancers.bed -b b198_foreskin_melanocyte_H3K27me3_ENCFF653ZQK.bed -c >e714_enhancers.bed
bedtools intersect -a e714_enhancers.bed -b b199_GM23248_H3K27ac_ENCFF338JGH.bed -c >e715_enhancers.bed
bedtools intersect -a e715_enhancers.bed -b b200_GM23248_H3K27me3_ENCFF943RTB.bed -c >e716_enhancers.bed
bedtools intersect -a e716_enhancers.bed -b b201_GM23248_H3K27ac_ENCFF470UMA.bed -c >e717_enhancers.bed
bedtools intersect -a e717_enhancers.bed -b b202_GM23248_H3K27me3_ENCFF122SGX.bed -c >e718_enhancers.bed
bedtools intersect -a e718_enhancers.bed -b b203_GM23338_H3K27ac_ENCFF403VXK.bed -c >e719_enhancers.bed
bedtools intersect -a e719_enhancers.bed -b b204_GM23338_H3K27me3_ENCFF371CJE.bed -c >e720_enhancers.bed
bedtools intersect -a e720_enhancers.bed -b b205_GM23338_H3K27ac_ENCFF259MDS.bed -c >e721_enhancers.bed
bedtools intersect -a e721_enhancers.bed -b b206_GM23338_H3K27me3_ENCFF862WYK.bed -c >e722_enhancers.bed
bedtools intersect -a e722_enhancers.bed -b b207_IMR-90_H3K27ac_ENCFF146UYU.bed -c >e723_enhancers.bed
bedtools intersect -a e723_enhancers.bed -b b208_IMR-90_H3K27me3_ENCFF825OWT.bed -c >e724_enhancers.bed
bedtools intersect -a e724_enhancers.bed -b b209_IMR-90_H3K27ac_ENCFF071VOI.bed -c >e725_enhancers.bed
bedtools intersect -a e725_enhancers.bed -b b210_IMR-90_H3K27me3_ENCFF868WTE.bed -c >e726_enhancers.bed
bedtools intersect -a e726_enhancers.bed -b b211_keratinocyte_H3K27ac_ENCFF828BCB.bed -c >e727_enhancers.bed
bedtools intersect -a e727_enhancers.bed -b b212_keratinocyte_H3K27me3_ENCFF553LTL.bed -c >e728_enhancers.bed
bedtools intersect -a e728_enhancers.bed -b b213_keratinocyte_H3K27ac_ENCFF578IKI.bed -c >e729_enhancers.bed
bedtools intersect -a e729_enhancers.bed -b b214_keratinocyte_H3K27me3_ENCFF137DEJ.bed -c >e730_enhancers.bed
bedtools intersect -a e730_enhancers.bed -b b215_neurosphere_H3K27ac_ENCFF516HFJ.bed -c >e731_enhancers.bed
bedtools intersect -a e731_enhancers.bed -b b216_neurosphere_H3K27me3_ENCFF903OEB.bed -c >e732_enhancers.bed
bedtools intersect -a e732_enhancers.bed -b b217_osteoblast_H3K27ac_ENCFF835QFJ.bed -c >e733_enhancers.bed
bedtools intersect -a e733_enhancers.bed -b b218_osteoblast_H3K27me3_ENCFF318IMH.bed -c >e734_enhancers.bed
bedtools intersect -a e734_enhancers.bed -b b219_osteoblast_H3K27ac_ENCFF155WZC.bed -c >e735_enhancers.bed
bedtools intersect -a e735_enhancers.bed -b b220_osteoblast_H3K27me3_ENCFF798RLD.bed -c >e736_enhancers.bed
bedtools intersect -a e736_enhancers.bed -b b221_skeletal_muscle_myoblast_H3K27ac_ENCFF534NCP.bed -c >e737_enhancers.bed
bedtools intersect -a e737_enhancers.bed -b b222_skeletal_muscle_myoblast_H3K27me3_ENCFF462BRB.bed -c >e738_enhancers.bed
bedtools intersect -a e738_enhancers.bed -b b223_skeletal_muscle_myoblast_H3K27ac_ENCFF191YSM.bed -c >e739_enhancers.bed
bedtools intersect -a e739_enhancers.bed -b b224_skeletal_muscle_myoblast_H3K27me3_ENCFF232HUV.bed -c >e740_enhancers.bed
bedtools intersect -a e740_enhancers.bed -b b225_UCSF-4_H3K27ac_ENCFF663ILT.bed -c >e741_enhancers.bed
bedtools intersect -a e741_enhancers.bed -b b226_UCSF-4_H3K27me3_ENCFF358EIU.bed -c >e742_enhancers.bed
bedtools intersect -a e742_enhancers.bed -b b227_H1_H3K27ac_ENCFF948UXT.bed -c >e743_enhancers.bed
bedtools intersect -a e743_enhancers.bed -b b228_H1_H3K27me3_ENCFF310SBN.bed -c >e744_enhancers.bed
bedtools intersect -a e744_enhancers.bed -b b229_H1_H3K27ac_ENCFF663SAM.bed -c >e745_enhancers.bed
bedtools intersect -a e745_enhancers.bed -b b230_H1_H3K27me3_ENCFF083QQZ.bed -c >e746_enhancers.bed
bedtools intersect -a e746_enhancers.bed -b b231_H1_H3K27ac_ENCFF242PAC.bed -c >e747_enhancers.bed
bedtools intersect -a e747_enhancers.bed -b b232_H1_H3K27me3_ENCFF382GPJ.bed -c >e748_enhancers.bed
bedtools intersect -a e748_enhancers.bed -b b233_H1_H3K27ac_ENCFF238SQN.bed -c >e749_enhancers.bed
bedtools intersect -a e749_enhancers.bed -b b234_H1_H3K27me3_ENCFF748KOZ.bed -c >e750_enhancers.bed
bedtools intersect -a e750_enhancers.bed -b b235_H9_H3K27ac_ENCFF271XBU.bed -c >e751_enhancers.bed
bedtools intersect -a e751_enhancers.bed -b b236_H9_H3K27me3_ENCFF905OOT.bed -c >e752_enhancers.bed
bedtools intersect -a e752_enhancers.bed -b b237_H9_H3K27ac_ENCFF178ICX.bed -c >e753_enhancers.bed
bedtools intersect -a e753_enhancers.bed -b b238_H9_H3K27me3_ENCFF022SFF.bed -c >e754_enhancers.bed
bedtools intersect -a e754_enhancers.bed -b b239_HUES48_H3K27ac_ENCFF973SSW.bed -c >e755_enhancers.bed
bedtools intersect -a e755_enhancers.bed -b b240_HUES48_H3K27me3_ENCFF487HGF.bed -c >e756_enhancers.bed
bedtools intersect -a e756_enhancers.bed -b b241_HUES6_H3K27ac_ENCFF048NVB.bed -c >e757_enhancers.bed
bedtools intersect -a e757_enhancers.bed -b b242_HUES6_H3K27me3_ENCFF451JBS.bed -c >e758_enhancers.bed
bedtools intersect -a e758_enhancers.bed -b b243_HUES6_H3K27ac_ENCFF373LPF.bed -c >e759_enhancers.bed
bedtools intersect -a e759_enhancers.bed -b b244_HUES6_H3K27me3_ENCFF832VWA.bed -c >e760_enhancers.bed
bedtools intersect -a e760_enhancers.bed -b b245_HUES64_H3K27ac_ENCFF935PUM.bed -c >e761_enhancers.bed
bedtools intersect -a e761_enhancers.bed -b b246_HUES64_H3K27me3_ENCFF083LRD.bed -c >e762_enhancers.bed
bedtools intersect -a e762_enhancers.bed -b b247_HUES64_H3K27ac_ENCFF169UER.bed -c >e763_enhancers.bed
bedtools intersect -a e763_enhancers.bed -b b248_HUES64_H3K27me3_ENCFF230FVU.bed -c >e764_enhancers.bed
bedtools intersect -a e764_enhancers.bed -b b249_iPS_DF_1911_H3K27ac_ENCFF456DFB.bed -c >e765_enhancers.bed
bedtools intersect -a e765_enhancers.bed -b b250_iPS_DF_1911_H3K27me3_ENCFF901IPF.bed -c >e766_enhancers.bed
bedtools intersect -a e766_enhancers.bed -b b251_iPS_DF_1911_H3K27ac_ENCFF111NTK.bed -c >e767_enhancers.bed
bedtools intersect -a e767_enhancers.bed -b b252_iPS_DF_1911_H3K27me3_ENCFF718MKI.bed -c >e768_enhancers.bed
bedtools intersect -a e768_enhancers.bed -b b253_iPS_DF_69_H3K27ac_ENCFF691OID.bed -c >e769_enhancers.bed
bedtools intersect -a e769_enhancers.bed -b b254_iPS_DF_69_H3K27me3_ENCFF443WWA.bed -c >e770_enhancers.bed
bedtools intersect -a e770_enhancers.bed -b b255_iPS-18a_H3K27ac_ENCFF124TRP.bed -c >e771_enhancers.bed
bedtools intersect -a e771_enhancers.bed -b b256_iPS-18a_H3K27me3_ENCFF391OGS.bed -c >e772_enhancers.bed
bedtools intersect -a e772_enhancers.bed -b b257_iPS-20b_H3K27ac_ENCFF797ECK.bed -c >e773_enhancers.bed
bedtools intersect -a e773_enhancers.bed -b b258_iPS-20b_H3K27me3_ENCFF289WQP.bed -c >e774_enhancers.bed
# Run the commands above on NIH high-performance computer, Biowulf using swarm commands below.
# swarm -f 004_bedtools_map_intersect_enhancers_1-100.swarm --module bedtools --time 2:00:00 --partition largemem -g 500 -t 100 -b 101
# swarm -f 004_bedtools_map_intersect_enhancers_101-200.swarm --module bedtools --time 2:00:00 --partition largemem -g 500 -t 100 -b 101 --dependency afterany:44052794
# swarm -f 004_bedtools_map_intersect_enhancers_201-274.swarm --module bedtools --time 2:00:00 --partition largemem -g 500 -t 100 -b 101 --dependency afterany:44052828

# swarm -f 004_bedtools_map_intersect_enhancers_1-100.swarm --module bedtools --time 2:00:00 --partition=ccr,norm -g 240 -t 50 -b 101
# swarm -f 004_bedtools_map_intersect_enhancers_101-200.swarm --module bedtools --time 2:00:00 --partition=ccr,norm -g 240 -t 50 -b 101 --dependency afterany:44058045
# swarm -f 004_bedtools_map_intersect_enhancers_201-274.swarm --module bedtools --time 2:00:00 --partition=ccr,norm -g 240 -t 50 -b 101 --dependency afterany:44058052


# Step17. Count the number of reads in input BED files.
cat C500_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a +=$8} END{print a;}' >f000_Input_counts_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat C501_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a +=$8} END{print a;}' >f001_Input_counts_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat C502_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a +=$8} END{print a;}' >f002_Input_counts_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat C503_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a +=$8} END{print a;}' >f003_Input_counts_H3K27a_Delta_IgG_SRep1-3_PutativeSignalRegions_CI0.99.bed
cat C504_H3K27a_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a +=$8} END{print a;}' >f004_Input_counts_H3K27a_Delta_IgG_SRep1-3_PutativeSignalRegions_CI0.99.bed
cat C505_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a +=$8} END{print a;}' >f005_Input_counts_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat C506_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a +=$8} END{print a;}' >f006_Input_counts_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat C507_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a +=$8} END{print a;}' >f007_Input_counts_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat C508_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a +=$8} END{print a;}' >f008_Input_counts_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat C509_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a +=$8} END{print a;}' >f009_Input_counts_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat C510_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a +=$8} END{print a;}' >f010_Input_counts_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat C511_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a +=$8} END{print a;}' >f011_Input_counts_H3K27me3_Delta_IgG_SRep1-3_PutativeSignalRegions_CI0.99.bed
cat C512_H3K27me3_Delta_IgG_SC5_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a +=$8} END{print a;}' >f012_Input_counts_H3K27me3_Delta_IgG_SRep1-3_PutativeSignalRegions_CI0.99.bed
cat C513_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a +=$8} END{print a;}' >f013_Input_counts_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat C514_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a +=$8} END{print a;}' >f014_Input_counts_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed
cat C515_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed | awk '{a +=$8} END{print a;}' >f015_Input_counts_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed
find -name 'b*.bed' -exec wc -l {} \; >f100.csv
find -name 'f0*.bed' -exec echo {} \; >f101.csv
cat f000_Input_counts_H3K27a_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed f001_Input_counts_H3K27a_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed f002_Input_counts_H3K27a_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed f003_Input_counts_H3K27a_Delta_IgG_SRep1-3_PutativeSignalRegions_CI0.99.bed f004_Input_counts_H3K27a_Delta_IgG_SRep1-3_PutativeSignalRegions_CI0.99.bed f005_Input_counts_H3K27a_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed f006_Input_counts_H3K27a_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed f007_Input_counts_H3K27a_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed f008_Input_counts_H3K27me3_Delta_IgG_SC1_Rep1-3_PutativeSignalRegions_CI0.99.bed f009_Input_counts_H3K27me3_Delta_IgG_SC2_Rep1-3_PutativeSignalRegions_CI0.99.bed f010_Input_counts_H3K27me3_Delta_IgG_SC3_Rep1-3_PutativeSignalRegions_CI0.99.bed f011_Input_counts_H3K27me3_Delta_IgG_SRep1-3_PutativeSignalRegions_CI0.99.bed f012_Input_counts_H3K27me3_Delta_IgG_SRep1-3_PutativeSignalRegions_CI0.99.bed f013_Input_counts_H3K27me3_Delta_IgG_SC6_Rep1-3_PutativeSignalRegions_CI0.99.bed f014_Input_counts_H3K27me3_Delta_IgG_SC7_Rep1-3_PutativeSignalRegions_CI0.99.bed f015_Input_counts_H3K27me3_Delta_IgG_SC8_Rep1-3_PutativeSignalRegions_CI0.99.bed >f102.csv
paste f102.csv f101.csv >f103.csv
cat f103.csv f100.csv >f104_number_of_input.csv

# Step18. Calculate RPKM (Reads per kilobase per million input) from read counts.
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6,$7/$6*1000/510544*1000000,$8/$6*1000/297070*1000000,$9/$6*1000/183195*1000000,$10/$6*1000/637931*1000000,$11/$6*1000/394563*1000000,$12/$6*1000/296671*1000000,$13/$6*1000/532945*1000000,$14/$6*1000/332088*1000000,$15/$6*1000/421622*1000000,$16/$6*1000/785915*1000000,$17/$6*1000/553100*1000000}' >g001_column1-17_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $18/$6*1000/761663*1000000,$19/$6*1000/541522*1000000,$20/$6*1000/381122*1000000,$21/$6*1000/666917*1000000,$22/$6*1000/160641*1000000,$23/$6*1000/9761907*1000000,$24/$6*1000/8556879*1000000,$25/$6*1000/4271023*1000000,$26/$6*1000/6365787*1000000,$27/$6*1000/28043462*1000000}' >g001_column18-27_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $28/$6*1000/28263303*1000000,$29/$6*1000/33410430*1000000,$30/$6*1000/15172728*1000000,$31/$6*1000/19736178*1000000,$32/$6*1000/55486757*1000000,$33/$6*1000/25304635*1000000,$34/$6*1000/50037143*1000000,$35/$6*1000/19876360*1000000,$36/$6*1000/22891552*1000000,$37/$6*1000/14628877*1000000}' >g001_column28-37_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $38/$6*1000/13814514*1000000,$39/$6*1000/5503616*1000000,$40/$6*1000/13802155*1000000,$41/$6*1000/6441401*1000000,$42/$6*1000/10089745*1000000,$43/$6*1000/21638318*1000000,$44/$6*1000/28419180*1000000,$45/$6*1000/46613183*1000000,$46/$6*1000/47520942*1000000,$47/$6*1000/50713717*1000000}' >g001_column38-47_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $48/$6*1000/39777437*1000000,$49/$6*1000/49117739*1000000,$50/$6*1000/14179728*1000000,$51/$6*1000/34185980*1000000,$52/$6*1000/61163842*1000000,$53/$6*1000/27063662*1000000,$54/$6*1000/40195461*1000000,$55/$6*1000/15521172*1000000,$56/$6*1000/24455917*1000000,$57/$6*1000/19647171*1000000}' >g001_column48-57_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $58/$6*1000/26618957*1000000,$59/$6*1000/16078494*1000000,$60/$6*1000/47763518*1000000,$61/$6*1000/32827344*1000000,$62/$6*1000/60190860*1000000,$63/$6*1000/19824667*1000000,$64/$6*1000/24126039*1000000,$65/$6*1000/23596217*1000000,$66/$6*1000/51500854*1000000,$67/$6*1000/41415517*1000000}' >g001_column58-67_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $68/$6*1000/15638782*1000000,$69/$6*1000/4566594*1000000,$70/$6*1000/10870457*1000000,$71/$6*1000/6088554*1000000,$72/$6*1000/18260866*1000000,$73/$6*1000/18365157*1000000,$74/$6*1000/14450257*1000000,$75/$6*1000/24414402*1000000,$76/$6*1000/25771361*1000000,$77/$6*1000/19167408*1000000}' >g001_column68-77_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $78/$6*1000/20912433*1000000,$79/$6*1000/15897489*1000000,$80/$6*1000/7097394*1000000,$81/$6*1000/17488569*1000000,$82/$6*1000/21331655*1000000,$83/$6*1000/15412708*1000000,$84/$6*1000/12221350*1000000,$85/$6*1000/27203622*1000000,$86/$6*1000/11294591*1000000,$87/$6*1000/14104015*1000000}' >g001_column78-87_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $88/$6*1000/18231049*1000000,$89/$6*1000/11611536*1000000,$90/$6*1000/16626866*1000000,$91/$6*1000/13734608*1000000,$92/$6*1000/9033986*1000000,$93/$6*1000/7680995*1000000,$94/$6*1000/20524315*1000000,$95/$6*1000/12738300*1000000,$96/$6*1000/13635821*1000000,$97/$6*1000/27699264*1000000}' >g001_column88-97_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $98/$6*1000/6884470*1000000,$99/$6*1000/16991068*1000000,$100/$6*1000/13034836*1000000,$101/$6*1000/15158927*1000000,$102/$6*1000/14655111*1000000,$103/$6*1000/7986310*1000000,$104/$6*1000/17407549*1000000,$105/$6*1000/5267653*1000000,$106/$6*1000/14831105*1000000,$107/$6*1000/10768702*1000000}' >g001_column98-107_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $108/$6*1000/9082813*1000000,$109/$6*1000/7760346*1000000,$110/$6*1000/14853286*1000000,$111/$6*1000/6924653*1000000,$112/$6*1000/7238884*1000000,$113/$6*1000/45509589*1000000,$114/$6*1000/8013838*1000000,$115/$6*1000/112109582*1000000,$116/$6*1000/50065833*1000000,$117/$6*1000/21156016*1000000}' >g001_column108-117_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $118/$6*1000/20457665*1000000,$119/$6*1000/23403809*1000000,$120/$6*1000/20003491*1000000,$121/$6*1000/13126217*1000000,$122/$6*1000/22669430*1000000,$123/$6*1000/28688909*1000000,$124/$6*1000/23064324*1000000,$125/$6*1000/16695804*1000000,$126/$6*1000/10876747*1000000,$127/$6*1000/20974793*1000000}' >g001_column118-127_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $128/$6*1000/48045697*1000000,$129/$6*1000/22517570*1000000,$130/$6*1000/12465925*1000000,$131/$6*1000/20617712*1000000,$132/$6*1000/27958678*1000000,$133/$6*1000/63001721*1000000,$134/$6*1000/31906955*1000000,$135/$6*1000/10069764*1000000,$136/$6*1000/23832435*1000000,$137/$6*1000/28111280*1000000}' >g001_column128-137_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $138/$6*1000/18068498*1000000,$139/$6*1000/15712431*1000000,$140/$6*1000/7301940*1000000,$141/$6*1000/14815657*1000000,$142/$6*1000/6685716*1000000,$143/$6*1000/4754166*1000000,$144/$6*1000/5323531*1000000,$145/$6*1000/6641517*1000000,$146/$6*1000/9564284*1000000,$147/$6*1000/35138084*1000000}' >g001_column138-147_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $148/$6*1000/42058621*1000000,$149/$6*1000/32480275*1000000,$150/$6*1000/33970770*1000000,$151/$6*1000/19174162*1000000,$152/$6*1000/25389848*1000000,$153/$6*1000/28523266*1000000,$154/$6*1000/22435045*1000000,$155/$6*1000/17630539*1000000,$156/$6*1000/14836181*1000000,$157/$6*1000/31032980*1000000}' >g001_column148-157_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $158/$6*1000/51958532*1000000,$159/$6*1000/26223721*1000000,$160/$6*1000/55495210*1000000,$161/$6*1000/48217642*1000000,$162/$6*1000/45393802*1000000,$163/$6*1000/16234308*1000000,$164/$6*1000/12093615*1000000,$165/$6*1000/30230502*1000000,$166/$6*1000/27982660*1000000,$167/$6*1000/30045526*1000000}' >g001_column158-167_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $168/$6*1000/8910463*1000000,$169/$6*1000/50066676*1000000,$170/$6*1000/13243967*1000000,$171/$6*1000/15489859*1000000,$172/$6*1000/28180767*1000000,$173/$6*1000/15997541*1000000,$174/$6*1000/32977038*1000000,$175/$6*1000/7434820*1000000,$176/$6*1000/7469450*1000000,$177/$6*1000/9849827*1000000}' >g001_column168-177_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $178/$6*1000/6005840*1000000,$179/$6*1000/12120718*1000000,$180/$6*1000/11648282*1000000,$181/$6*1000/9642480*1000000,$182/$6*1000/7104162*1000000,$183/$6*1000/10295392*1000000,$184/$6*1000/15041925*1000000,$185/$6*1000/6648414*1000000,$186/$6*1000/12534625*1000000,$187/$6*1000/10256355*1000000}' >g001_column178-187_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $188/$6*1000/11692540*1000000,$189/$6*1000/1695232*1000000,$190/$6*1000/8459583*1000000,$191/$6*1000/24015306*1000000,$192/$6*1000/35906248*1000000,$193/$6*1000/34140711*1000000,$194/$6*1000/30206807*1000000,$195/$6*1000/7736991*1000000,$196/$6*1000/6859804*1000000,$197/$6*1000/23914069*1000000}' >g001_column188-197_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $198/$6*1000/25537974*1000000,$199/$6*1000/6780059*1000000,$200/$6*1000/6263359*1000000,$201/$6*1000/7312549*1000000,$202/$6*1000/7258643*1000000,$203/$6*1000/16331473*1000000,$204/$6*1000/81147737*1000000,$205/$6*1000/34454893*1000000,$206/$6*1000/68734577*1000000,$207/$6*1000/15503095*1000000}' >g001_column198-207_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $208/$6*1000/27967196*1000000,$209/$6*1000/15356111*1000000,$210/$6*1000/57109879*1000000,$211/$6*1000/91118438*1000000,$212/$6*1000/59486188*1000000,$213/$6*1000/45927164*1000000,$214/$6*1000/107227564*1000000,$215/$6*1000/51043418*1000000,$216/$6*1000/119610660*1000000,$217/$6*1000/21353822*1000000}' >g001_column208-217_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $218/$6*1000/42767738*1000000,$219/$6*1000/57205688*1000000,$220/$6*1000/39061842*1000000,$221/$6*1000/25477419*1000000,$222/$6*1000/33129669*1000000,$223/$6*1000/26792936*1000000,$224/$6*1000/32287940*1000000,$225/$6*1000/32673662*1000000,$226/$6*1000/27470751*1000000,$227/$6*1000/56841938*1000000}' >g001_column218-227_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $228/$6*1000/18059923*1000000,$229/$6*1000/26488115*1000000,$230/$6*1000/17869784*1000000,$231/$6*1000/8958790*1000000,$232/$6*1000/22805018*1000000,$233/$6*1000/6823081*1000000,$234/$6*1000/3833772*1000000,$235/$6*1000/8148115*1000000,$236/$6*1000/6575236*1000000,$237/$6*1000/40494360*1000000}' >g001_column228-237_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $238/$6*1000/74455342*1000000,$239/$6*1000/10732793*1000000,$240/$6*1000/5814322*1000000,$241/$6*1000/28619232*1000000,$242/$6*1000/24230282*1000000,$243/$6*1000/9612465*1000000,$244/$6*1000/8952259*1000000,$245/$6*1000/6453379*1000000,$246/$6*1000/6718809*1000000,$247/$6*1000/47953148*1000000}' >g001_column238-247_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $248/$6*1000/20733279*1000000,$249/$6*1000/8277744*1000000,$250/$6*1000/8421770*1000000,$251/$6*1000/13621310*1000000,$252/$6*1000/5265229*1000000,$253/$6*1000/12204481*1000000,$254/$6*1000/8171978*1000000,$255/$6*1000/13226043*1000000,$256/$6*1000/9393052*1000000,$257/$6*1000/13817724*1000000}' >g001_column248-257_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $258/$6*1000/9205554*1000000,$259/$6*1000/16633036*1000000,$260/$6*1000/22940316*1000000,$261/$6*1000/17680719*1000000,$262/$6*1000/17843363*1000000,$263/$6*1000/19188600*1000000,$264/$6*1000/23283449*1000000,$265/$6*1000/18138398*1000000,$266/$6*1000/22291343*1000000,$267/$6*1000/18707009*1000000}' >g001_column258-267_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $268/$6*1000/11747412*1000000,$269/$6*1000/24059978*1000000,$270/$6*1000/26056838*1000000,$271/$6*1000/71352323*1000000,$272/$6*1000/50105362*1000000,$273/$6*1000/65776192*1000000,$274/$6*1000/19471478*1000000,$275/$6*1000/28491382*1000000,$276/$6*1000/26191241*1000000,$277/$6*1000/32299582*1000000}' >g001_column268-277_Promoters.bed
cat e274_promoters.bed | awk 'BEGIN {OFS="\t"}; {print $278/$6*1000/25707978*1000000,$279/$6*1000/20017332*1000000,$280/$6*1000/22132905*1000000,""}' >g001_column278-280_Promoters.bed

cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6,$7/$6*1000/510544*1000000,$8/$6*1000/297070*1000000,$9/$6*1000/183195*1000000,$10/$6*1000/637931*1000000,$11/$6*1000/394563*1000000,$12/$6*1000/296671*1000000,$13/$6*1000/532945*1000000,$14/$6*1000/332088*1000000,$15/$6*1000/421622*1000000,$16/$6*1000/785915*1000000,$17/$6*1000/553100*1000000}' >g002_column1-17_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $18/$6*1000/761663*1000000,$19/$6*1000/541522*1000000,$20/$6*1000/381122*1000000,$21/$6*1000/666917*1000000,$22/$6*1000/160641*1000000,$23/$6*1000/9761907*1000000,$24/$6*1000/8556879*1000000,$25/$6*1000/4271023*1000000,$26/$6*1000/6365787*1000000,$27/$6*1000/28043462*1000000}' >g002_column27-27_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $28/$6*1000/28263303*1000000,$29/$6*1000/33410430*1000000,$30/$6*1000/15172728*1000000,$31/$6*1000/19736178*1000000,$32/$6*1000/55486757*1000000,$33/$6*1000/25304635*1000000,$34/$6*1000/50037143*1000000,$35/$6*1000/19876360*1000000,$36/$6*1000/22891552*1000000,$37/$6*1000/14628877*1000000}' >g002_column37-37_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $38/$6*1000/13814514*1000000,$39/$6*1000/5503616*1000000,$40/$6*1000/13802155*1000000,$41/$6*1000/6441401*1000000,$42/$6*1000/10089745*1000000,$43/$6*1000/21638318*1000000,$44/$6*1000/28419180*1000000,$45/$6*1000/46613183*1000000,$46/$6*1000/47520942*1000000,$47/$6*1000/50713717*1000000}' >g002_column47-47_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $48/$6*1000/39777437*1000000,$49/$6*1000/49117739*1000000,$50/$6*1000/14179728*1000000,$51/$6*1000/34185980*1000000,$52/$6*1000/61163842*1000000,$53/$6*1000/27063662*1000000,$54/$6*1000/40195461*1000000,$55/$6*1000/15521172*1000000,$56/$6*1000/24455917*1000000,$57/$6*1000/19647171*1000000}' >g002_column57-57_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $58/$6*1000/26618957*1000000,$59/$6*1000/16078494*1000000,$60/$6*1000/47763518*1000000,$61/$6*1000/32827344*1000000,$62/$6*1000/60190860*1000000,$63/$6*1000/19824667*1000000,$64/$6*1000/24126039*1000000,$65/$6*1000/23596217*1000000,$66/$6*1000/51500854*1000000,$67/$6*1000/41415517*1000000}' >g002_column67-67_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $68/$6*1000/15638782*1000000,$69/$6*1000/4566594*1000000,$70/$6*1000/10870457*1000000,$71/$6*1000/6088554*1000000,$72/$6*1000/18260866*1000000,$73/$6*1000/18365157*1000000,$74/$6*1000/14450257*1000000,$75/$6*1000/24414402*1000000,$76/$6*1000/25771361*1000000,$77/$6*1000/19167408*1000000}' >g002_column77-77_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $78/$6*1000/20912433*1000000,$79/$6*1000/15897489*1000000,$80/$6*1000/7097394*1000000,$81/$6*1000/17488569*1000000,$82/$6*1000/21331655*1000000,$83/$6*1000/15412708*1000000,$84/$6*1000/12221350*1000000,$85/$6*1000/27203622*1000000,$86/$6*1000/11294591*1000000,$87/$6*1000/14104015*1000000}' >g002_column87-87_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $88/$6*1000/18231049*1000000,$89/$6*1000/11611536*1000000,$90/$6*1000/16626866*1000000,$91/$6*1000/13734608*1000000,$92/$6*1000/9033986*1000000,$93/$6*1000/7680995*1000000,$94/$6*1000/20524315*1000000,$95/$6*1000/12738300*1000000,$96/$6*1000/13635821*1000000,$97/$6*1000/27699264*1000000}' >g002_column97-97_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $98/$6*1000/6884470*1000000,$99/$6*1000/16991068*1000000,$100/$6*1000/13034836*1000000,$101/$6*1000/15158927*1000000,$102/$6*1000/14655111*1000000,$103/$6*1000/7986310*1000000,$104/$6*1000/17407549*1000000,$105/$6*1000/5267653*1000000,$106/$6*1000/14831105*1000000,$107/$6*1000/10768702*1000000}' >g002_column107-107_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $108/$6*1000/9082813*1000000,$109/$6*1000/7760346*1000000,$110/$6*1000/14853286*1000000,$111/$6*1000/6924653*1000000,$112/$6*1000/7238884*1000000,$113/$6*1000/45509589*1000000,$114/$6*1000/8013838*1000000,$115/$6*1000/112109582*1000000,$116/$6*1000/50065833*1000000,$117/$6*1000/21156016*1000000}' >g002_column117-117_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $118/$6*1000/20457665*1000000,$119/$6*1000/23403809*1000000,$120/$6*1000/20003491*1000000,$121/$6*1000/13126217*1000000,$122/$6*1000/22669430*1000000,$123/$6*1000/28688909*1000000,$124/$6*1000/23064324*1000000,$125/$6*1000/16695804*1000000,$126/$6*1000/10876747*1000000,$127/$6*1000/20974793*1000000}' >g002_column127-127_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $128/$6*1000/48045697*1000000,$129/$6*1000/22517570*1000000,$130/$6*1000/12465925*1000000,$131/$6*1000/20617712*1000000,$132/$6*1000/27958678*1000000,$133/$6*1000/63001721*1000000,$134/$6*1000/31906955*1000000,$135/$6*1000/10069764*1000000,$136/$6*1000/23832435*1000000,$137/$6*1000/28111280*1000000}' >g002_column137-137_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $138/$6*1000/18068498*1000000,$139/$6*1000/15712431*1000000,$140/$6*1000/7301940*1000000,$141/$6*1000/14815657*1000000,$142/$6*1000/6685716*1000000,$143/$6*1000/4754166*1000000,$144/$6*1000/5323531*1000000,$145/$6*1000/6641517*1000000,$146/$6*1000/9564284*1000000,$147/$6*1000/35138084*1000000}' >g002_column147-147_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $148/$6*1000/42058621*1000000,$149/$6*1000/32480275*1000000,$150/$6*1000/33970770*1000000,$151/$6*1000/19174162*1000000,$152/$6*1000/25389848*1000000,$153/$6*1000/28523266*1000000,$154/$6*1000/22435045*1000000,$155/$6*1000/17630539*1000000,$156/$6*1000/14836181*1000000,$157/$6*1000/31032980*1000000}' >g002_column157-157_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $158/$6*1000/51958532*1000000,$159/$6*1000/26223721*1000000,$160/$6*1000/55495210*1000000,$161/$6*1000/48217642*1000000,$162/$6*1000/45393802*1000000,$163/$6*1000/16234308*1000000,$164/$6*1000/12093615*1000000,$165/$6*1000/30230502*1000000,$166/$6*1000/27982660*1000000,$167/$6*1000/30045526*1000000}' >g002_column167-167_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $168/$6*1000/8910463*1000000,$169/$6*1000/50066676*1000000,$170/$6*1000/13243967*1000000,$171/$6*1000/15489859*1000000,$172/$6*1000/28180767*1000000,$173/$6*1000/15997541*1000000,$174/$6*1000/32977038*1000000,$175/$6*1000/7434820*1000000,$176/$6*1000/7469450*1000000,$177/$6*1000/9849827*1000000}' >g002_column177-177_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $178/$6*1000/6005840*1000000,$179/$6*1000/12120718*1000000,$180/$6*1000/11648282*1000000,$181/$6*1000/9642480*1000000,$182/$6*1000/7104162*1000000,$183/$6*1000/10295392*1000000,$184/$6*1000/15041925*1000000,$185/$6*1000/6648414*1000000,$186/$6*1000/12534625*1000000,$187/$6*1000/10256355*1000000}' >g002_column187-187_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $188/$6*1000/11692540*1000000,$189/$6*1000/1695232*1000000,$190/$6*1000/8459583*1000000,$191/$6*1000/24015306*1000000,$192/$6*1000/35906248*1000000,$193/$6*1000/34140711*1000000,$194/$6*1000/30206807*1000000,$195/$6*1000/7736991*1000000,$196/$6*1000/6859804*1000000,$197/$6*1000/23914069*1000000}' >g002_column197-197_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $198/$6*1000/25537974*1000000,$199/$6*1000/6780059*1000000,$200/$6*1000/6263359*1000000,$201/$6*1000/7312549*1000000,$202/$6*1000/7258643*1000000,$203/$6*1000/16331473*1000000,$204/$6*1000/81147737*1000000,$205/$6*1000/34454893*1000000,$206/$6*1000/68734577*1000000,$207/$6*1000/15503095*1000000}' >g002_column207-207_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $208/$6*1000/27967196*1000000,$209/$6*1000/15356111*1000000,$210/$6*1000/57109879*1000000,$211/$6*1000/91118438*1000000,$212/$6*1000/59486188*1000000,$213/$6*1000/45927164*1000000,$214/$6*1000/107227564*1000000,$215/$6*1000/51043418*1000000,$216/$6*1000/119610660*1000000,$217/$6*1000/21353822*1000000}' >g002_column217-217_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $218/$6*1000/42767738*1000000,$219/$6*1000/57205688*1000000,$220/$6*1000/39061842*1000000,$221/$6*1000/25477419*1000000,$222/$6*1000/33129669*1000000,$223/$6*1000/26792936*1000000,$224/$6*1000/32287940*1000000,$225/$6*1000/32673662*1000000,$226/$6*1000/27470751*1000000,$227/$6*1000/56841938*1000000}' >g002_column227-227_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $228/$6*1000/18059923*1000000,$229/$6*1000/26488115*1000000,$230/$6*1000/17869784*1000000,$231/$6*1000/8958790*1000000,$232/$6*1000/22805018*1000000,$233/$6*1000/6823081*1000000,$234/$6*1000/3833772*1000000,$235/$6*1000/8148115*1000000,$236/$6*1000/6575236*1000000,$237/$6*1000/40494360*1000000}' >g002_column237-237_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $238/$6*1000/74455342*1000000,$239/$6*1000/10732793*1000000,$240/$6*1000/5814322*1000000,$241/$6*1000/28619232*1000000,$242/$6*1000/24230282*1000000,$243/$6*1000/9612465*1000000,$244/$6*1000/8952259*1000000,$245/$6*1000/6453379*1000000,$246/$6*1000/6718809*1000000,$247/$6*1000/47953148*1000000}' >g002_column247-247_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $248/$6*1000/20733279*1000000,$249/$6*1000/8277744*1000000,$250/$6*1000/8421770*1000000,$251/$6*1000/13621310*1000000,$252/$6*1000/5265229*1000000,$253/$6*1000/12204481*1000000,$254/$6*1000/8171978*1000000,$255/$6*1000/13226043*1000000,$256/$6*1000/9393052*1000000,$257/$6*1000/13817724*1000000}' >g002_column257-257_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $258/$6*1000/9205554*1000000,$259/$6*1000/16633036*1000000,$260/$6*1000/22940316*1000000,$261/$6*1000/17680719*1000000,$262/$6*1000/17843363*1000000,$263/$6*1000/19188600*1000000,$264/$6*1000/23283449*1000000,$265/$6*1000/18138398*1000000,$266/$6*1000/22291343*1000000,$267/$6*1000/18707009*1000000}' >g002_column267-267_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $268/$6*1000/11747412*1000000,$269/$6*1000/24059978*1000000,$270/$6*1000/26056838*1000000,$271/$6*1000/71352323*1000000,$272/$6*1000/50105362*1000000,$273/$6*1000/65776192*1000000,$274/$6*1000/19471478*1000000,$275/$6*1000/28491382*1000000,$276/$6*1000/26191241*1000000,$277/$6*1000/32299582*1000000}' >g002_column277-277_Enhancers.bed
cat e774_enhancers.bed | awk 'BEGIN {OFS="\t"}; {print $278/$6*1000/25707978*1000000,$279/$6*1000/20017332*1000000,$280/$6*1000/22132905*1000000,""}' >g002_column278-280_Enhancers.bed

# Step19: Combine the generated BED files of RPKM.
paste g001_column1-17_Promoters.bed g001_column18-27_Promoters.bed g001_column28-37_Promoters.bed g001_column38-47_Promoters.bed g001_column48-57_Promoters.bed g001_column58-67_Promoters.bed g001_column68-77_Promoters.bed g001_column78-87_Promoters.bed g001_column88-97_Promoters.bed g001_column98-107_Promoters.bed g001_column108-117_Promoters.bed g001_column118-127_Promoters.bed g001_column128-137_Promoters.bed g001_column138-147_Promoters.bed g001_column148-157_Promoters.bed g001_column158-167_Promoters.bed g001_column168-177_Promoters.bed g001_column178-187_Promoters.bed g001_column188-197_Promoters.bed g001_column198-207_Promoters.bed g001_column208-217_Promoters.bed g001_column218-227_Promoters.bed g001_column228-237_Promoters.bed g001_column238-247_Promoters.bed g001_column248-257_Promoters.bed g001_column258-267_Promoters.bed g001_column268-277_Promoters.bed g001_column278-280_Promoters.bed >g001_column1-280_Promoters_RPKM.bed
paste g002_column1-17_Enhancers.bed g002_column27-27_Enhancers.bed g002_column37-37_Enhancers.bed g002_column47-47_Enhancers.bed g002_column57-57_Enhancers.bed g002_column67-67_Enhancers.bed g002_column77-77_Enhancers.bed g002_column87-87_Enhancers.bed g002_column97-97_Enhancers.bed g002_column107-107_Enhancers.bed g002_column117-117_Enhancers.bed g002_column127-127_Enhancers.bed g002_column137-137_Enhancers.bed g002_column147-147_Enhancers.bed g002_column157-157_Enhancers.bed g002_column167-167_Enhancers.bed g002_column177-177_Enhancers.bed g002_column187-187_Enhancers.bed g002_column197-197_Enhancers.bed g002_column207-207_Enhancers.bed g002_column217-217_Enhancers.bed g002_column227-227_Enhancers.bed g002_column237-237_Enhancers.bed g002_column247-247_Enhancers.bed g002_column257-257_Enhancers.bed g002_column267-267_Enhancers.bed g002_column277-277_Enhancers.bed g002_column278-280_Enhancers.bed >g002_column1-280_Enhancers_RPKM.bed

# Step20. Convert 0 value to 0.01 in H3K27ac and H3K27me3 to avoid error in calculation of ration H3K27ac/H3K27me3.
# The lowest value of H3K27ac (RPKM) excluding 0 is 0.014072
# The lowest value of H3K27me3 (RPKM) excluding 0 is 0.010957
# The conversion value 0.01 is determined based on the lowest value of H3K27me3.
sed 's/\t0\t/\t0.01\t/g' g001_column1-280_Promoters_RPKM.bed | sed 's/\t0\t/\t0.01\t/g' >g003_Promoters_RPKM_0converted.bed 
sed 's/\t0\t/\t0.01\t/g' g002_column1-280_Enhancers_RPKM.bed | sed 's/\t0\t/\t0.01\t/g' >g004_Enhancers_RPKM_0converted.bed 

# Step21: Calculate Log2(H3K27ac/H3K27me3) in each dataset pair.
cat g003_Promoters_RPKM_0converted.bed | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6,log($7/$15)/log(2),log($8/$16)/log(2),log($9/$17)/log(2),log($10/$18)/log(2),log($11/$19)/log(2),log($12/$20)/log(2),log($13/$21)/log(2),log($14/$22)/log(2),log($23/$24)/log(2),log($25/$26)/log(2),log($27/$28)/log(2),log($29/$30)/log(2),log($31/$32)/log(2),log($33/$34)/log(2),log($35/$36)/log(2),log($37/$38)/log(2),log($39/$40)/log(2),log($41/$42)/log(2),log($43/$44)/log(2),log($45/$46)/log(2),log($47/$48)/log(2),log($49/$50)/log(2),log($51/$52)/log(2),log($53/$54)/log(2),log($55/$56)/log(2),log($57/$58)/log(2),log($59/$60)/log(2),log($61/$62)/log(2),log($63/$64)/log(2),log($65/$66)/log(2),log($67/$68)/log(2),log($69/$70)/log(2),log($71/$72)/log(2),log($73/$74)/log(2),log($75/$76)/log(2),log($77/$78)/log(2),log($79/$80)/log(2),log($81/$82)/log(2),log($83/$84)/log(2),log($85/$86)/log(2),log($87/$88)/log(2),log($89/$90)/log(2),log($91/$92)/log(2),log($93/$94)/log(2),log($95/$96)/log(2),log($97/$98)/log(2),log($99/$100)/log(2),log($101/$102)/log(2),log($103/$104)/log(2),log($105/$106)/log(2),log($107/$108)/log(2),log($109/$110)/log(2),log($111/$112)/log(2),log($113/$114)/log(2),log($115/$116)/log(2),log($117/$118)/log(2),log($119/$120)/log(2),log($121/$122)/log(2),log($123/$124)/log(2),log($125/$126)/log(2),log($127/$128)/log(2),log($129/$130)/log(2),log($131/$132)/log(2),log($133/$134)/log(2),log($135/$136)/log(2),log($137/$138)/log(2),log($139/$140)/log(2),log($141/$142)/log(2),log($143/$144)/log(2),log($145/$146)/log(2),log($147/$148)/log(2),log($149/$150)/log(2),log($151/$152)/log(2),log($153/$154)/log(2),log($155/$156)/log(2),log($157/$158)/log(2),log($159/$160)/log(2),log($161/$162)/log(2),log($163/$164)/log(2),log($165/$166)/log(2),log($167/$168)/log(2),log($169/$170)/log(2),log($171/$172)/log(2),log($173/$174)/log(2),log($175/$176)/log(2),log($177/$178)/log(2),log($179/$180)/log(2),log($181/$182)/log(2),log($183/$184)/log(2),log($185/$186)/log(2),log($187/$188)/log(2),log($189/$190)/log(2),log($191/$192)/log(2),log($193/$194)/log(2),log($195/$196)/log(2),log($197/$198)/log(2),log($199/$200)/log(2),log($201/$202)/log(2),log($203/$204)/log(2),log($205/$206)/log(2),log($207/$208)/log(2),log($209/$210)/log(2),log($211/$212)/log(2),log($213/$214)/log(2),log($215/$216)/log(2),log($217/$218)/log(2),log($219/$220)/log(2),log($221/$222)/log(2),log($223/$224)/log(2),log($225/$226)/log(2),log($227/$228)/log(2),log($229/$230)/log(2),log($231/$232)/log(2),log($233/$234)/log(2),log($235/$236)/log(2),log($237/$238)/log(2),log($239/$240)/log(2),log($241/$242)/log(2),log($243/$244)/log(2),log($245/$246)/log(2),log($247/$248)/log(2),log($249/$250)/log(2),log($251/$252)/log(2),log($253/$254)/log(2),log($255/$256)/log(2),log($257/$258)/log(2),log($259/$260)/log(2),log($261/$262)/log(2),log($263/$264)/log(2),log($265/$266)/log(2),log($267/$268)/log(2),log($269/$270)/log(2),log($271/$272)/log(2),log($273/$274)/log(2),log($275/$276)/log(2),log($277/$278)/log(2),log($279/$280)/log(2),""}' >g005_Promoters_Log2_H3K27ac_H3K27me3.bed
cat g004_Enhancers_RPKM_0converted.bed | awk 'BEGIN {OFS="\t"}; {print $1,$2,$3,$4,$5,$6,log($7/$15)/log(2),log($8/$16)/log(2),log($9/$17)/log(2),log($10/$18)/log(2),log($11/$19)/log(2),log($12/$20)/log(2),log($13/$21)/log(2),log($14/$22)/log(2),log($23/$24)/log(2),log($25/$26)/log(2),log($27/$28)/log(2),log($29/$30)/log(2),log($31/$32)/log(2),log($33/$34)/log(2),log($35/$36)/log(2),log($37/$38)/log(2),log($39/$40)/log(2),log($41/$42)/log(2),log($43/$44)/log(2),log($45/$46)/log(2),log($47/$48)/log(2),log($49/$50)/log(2),log($51/$52)/log(2),log($53/$54)/log(2),log($55/$56)/log(2),log($57/$58)/log(2),log($59/$60)/log(2),log($61/$62)/log(2),log($63/$64)/log(2),log($65/$66)/log(2),log($67/$68)/log(2),log($69/$70)/log(2),log($71/$72)/log(2),log($73/$74)/log(2),log($75/$76)/log(2),log($77/$78)/log(2),log($79/$80)/log(2),log($81/$82)/log(2),log($83/$84)/log(2),log($85/$86)/log(2),log($87/$88)/log(2),log($89/$90)/log(2),log($91/$92)/log(2),log($93/$94)/log(2),log($95/$96)/log(2),log($97/$98)/log(2),log($99/$100)/log(2),log($101/$102)/log(2),log($103/$104)/log(2),log($105/$106)/log(2),log($107/$108)/log(2),log($109/$110)/log(2),log($111/$112)/log(2),log($113/$114)/log(2),log($115/$116)/log(2),log($117/$118)/log(2),log($119/$120)/log(2),log($121/$122)/log(2),log($123/$124)/log(2),log($125/$126)/log(2),log($127/$128)/log(2),log($129/$130)/log(2),log($131/$132)/log(2),log($133/$134)/log(2),log($135/$136)/log(2),log($137/$138)/log(2),log($139/$140)/log(2),log($141/$142)/log(2),log($143/$144)/log(2),log($145/$146)/log(2),log($147/$148)/log(2),log($149/$150)/log(2),log($151/$152)/log(2),log($153/$154)/log(2),log($155/$156)/log(2),log($157/$158)/log(2),log($159/$160)/log(2),log($161/$162)/log(2),log($163/$164)/log(2),log($165/$166)/log(2),log($167/$168)/log(2),log($169/$170)/log(2),log($171/$172)/log(2),log($173/$174)/log(2),log($175/$176)/log(2),log($177/$178)/log(2),log($179/$180)/log(2),log($181/$182)/log(2),log($183/$184)/log(2),log($185/$186)/log(2),log($187/$188)/log(2),log($189/$190)/log(2),log($191/$192)/log(2),log($193/$194)/log(2),log($195/$196)/log(2),log($197/$198)/log(2),log($199/$200)/log(2),log($201/$202)/log(2),log($203/$204)/log(2),log($205/$206)/log(2),log($207/$208)/log(2),log($209/$210)/log(2),log($211/$212)/log(2),log($213/$214)/log(2),log($215/$216)/log(2),log($217/$218)/log(2),log($219/$220)/log(2),log($221/$222)/log(2),log($223/$224)/log(2),log($225/$226)/log(2),log($227/$228)/log(2),log($229/$230)/log(2),log($231/$232)/log(2),log($233/$234)/log(2),log($235/$236)/log(2),log($237/$238)/log(2),log($239/$240)/log(2),log($241/$242)/log(2),log($243/$244)/log(2),log($245/$246)/log(2),log($247/$248)/log(2),log($249/$250)/log(2),log($251/$252)/log(2),log($253/$254)/log(2),log($255/$256)/log(2),log($257/$258)/log(2),log($259/$260)/log(2),log($261/$262)/log(2),log($263/$264)/log(2),log($265/$266)/log(2),log($267/$268)/log(2),log($269/$270)/log(2),log($271/$272)/log(2),log($273/$274)/log(2),log($275/$276)/log(2),log($277/$278)/log(2),log($279/$280)/log(2),""}' >g006_Enhancers_Log2_H3K27ac_H3K27me3.bed

# Step22: Combine promoters and enhancers BED files.
cat g005_Promoters_Log2_H3K27ac_H3K27me3.bed g006_Enhancers_Log2_H3K27ac_H3K27me3.bed >g007_Promoters_Enhancers_Log2_H3K27ac_H3K27me3.bed

# Step23: Extract promoter ID, Enhancer ID and Log2(H3K27ac/H3K27me3) values of cells.
cat g007_Promoters_Enhancers_Log2_H3K27ac_H3K27me3.bed | awk 'BEGIN {OFS="\t"}; {print $4,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$20,$21,$22,$23,$24,$25,$26,$27,$28,$29,$30,$31,$32,$33,$34,$35,$36,$37,$38,$39,$40,$41,$42,$43,$44,$45,$46,$47,$48,$49,$50,$51,$52,$53,$54,$55,$56,$57,$58,$59,$60,$61,$62,$63,$64,$65,$66,$67,$68,$69,$70,$71,$72,$73,$74,$75,$76,$77,$78,$79,$80,$81,$82,$83,$84,$85,$86,$87,$88,$89,$90,$91,$92,$93,$94,$95,$96,$97,$98,$99,$100,$101,$102,$103,$104,$105,$106,$107,$108,$109,$110,$111,$112,$113,$114,$115,$116,$117,$118,$119,$120,$121,$122,$123,$124,$125,$126,$127,$128,$129,$130,$131,$132,$133,$134,$135,$136,$137,$138,$139,$140,$141,$142,$143}' >g008_Promoters_Enhancers_Log2_H3K27ac_H3K27me3.bed

# Step24: Add Cell codes.
cat g008_Promoters_Enhancers_Log2_H3K27ac_H3K27me3.bed | sed 1s/^/"0\t0.5\t0.5\t0.5\t0.5\t0.5\t0.5\t0.5\t0.5\t1.5\t1.5\t2\t2\t3\t3\t4\t4\t5\t5\t6\t6\t7\t7\t8\t8\t9\t9\t10\t10\t11\t11\t11\t12\t12\t12\t13\t14\t14\t14\t15\t15\t16\t16\t16\t17\t18\t19\t19\t19\t20\t20\t20\t21\t21\t22\t22\t23\t23\t23\t24\t25\t26\t26\t26\t26\t27\t27\t28\t28\t29\t29\t30\t30\t31\t31\t32\t32\t33\t33\t34\t34\t34\t34\t35\t35\t36\t36\t37\t38\t38\t39\t39\t39\t40\t40\t41\t41\t42\t42\t43\t43\t43\t43\t44\t44\t44\t45\t45\t46\t46\t47\t47\t48\t48\t49\t49\t50\t51\t51\t52\t52\t53\t54\t54\t54\t54\t55\t55\t56\t57\t57\t58\t58\t59\t59\t60\t61\t62\t\n"/  >g009_CellCode.bed
cat g009_CellCode.bed | sed 1s/^/"0\t1\t2\t3\t4\t5\t6\t7\t8\t1\t2\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t3\t3\t2\t2\t4\t5\t5\t6\t6\t6\t4\t4\t4\t4\t4\t4\t4\t4\t4\t4\t7\t7\t7\t7\t7\t4\t4\t4\t4\t4\t4\t7\t7\t8\t9\t9\t10\t10\t11\t11\t11\t11\t11\t11\t11\t11\t11\t11\t11\t11\t12\t12\t12\t12\t12\t\n"/  >g010_CellTypeCode.bed
cat g010_CellTypeCode.bed | sed 1s/^/"0\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t1\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t2\t3\t3\t3\t3\t3\t3\t2\t2\t2\t2\t2\t2\t2\t3\t3\t3\t3\t3\t3\t3\t3\t3\t3\t3\t3\t3\t3\t3\t3\t3\t\n"/ >g011_CellTypeCode1.csv

# Pivot columns and rows.
cat g011_CellTypeCode1.csv | python -c "import sys; print('\r\n'.join('\t'.join(c) for c in zip(*(l.split() for l in sys.stdin.readlines() if l.strip()))))" >g012_tSNE_ready_pivoted.txt
