CREATE DATABASE  IF NOT EXISTS `biomed1` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `biomed1`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: biomed1
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `annovar`
--

DROP TABLE IF EXISTS `annovar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `annovar` (
  `sample_id` int NOT NULL,
  `Chr` varchar(100) NOT NULL,
  `Start` varchar(100) NOT NULL,
  `End` varchar(100) NOT NULL,
  `Ref` varchar(100) NOT NULL,
  `Alt` varchar(100) NOT NULL,
  `Func.refGene` text,
  `Gene.refGene` text,
  `GeneDetail.refGene` text,
  `ExonicFunc.refGene` text,
  `AAChange.refGene` text,
  `cytoBand` text,
  `1000g2015aug_all` text,
  `1000g2015aug_afr` text,
  `1000g2015aug_amr` text,
  `1000g2015aug_eas` text,
  `1000g2015aug_eur` text,
  `1000g2015aug_sas` text,
  `ExAC_ALL` text,
  `ExAC_AFR` text,
  `ExAC_AMR` text,
  `ExAC_EAS` text,
  `ExAC_FIN` text,
  `ExAC_NFE` text,
  `ExAC_OTH` text,
  `ExAC_SAS` text,
  `avsnp150` text,
  `esp6500siv2_all` text,
  `esp6500siv2_ea` text,
  `esp6500siv2_aa` text,
  `gnomAD_exome_ALL` text,
  `gnomAD_exome_AFR` text,
  `gnomAD_exome_AMR` text,
  `gnomAD_exome_ASJ` text,
  `gnomAD_exome_EAS` text,
  `gnomAD_exome_FIN` text,
  `gnomAD_exome_NFE` text,
  `gnomAD_exome_OTH` text,
  `gnomAD_exome_SAS` text,
  `SIFT_score` text,
  `SIFT_converted_rankscore` text,
  `SIFT_pred` text,
  `Polyphen2_HDIV_score` text,
  `Polyphen2_HDIV_rankscore` text,
  `Polyphen2_HDIV_pred` text,
  `Polyphen2_HVAR_score` text,
  `Polyphen2_HVAR_rankscore` text,
  `Polyphen2_HVAR_pred` text,
  `LRT_score` text,
  `LRT_converted_rankscore` text,
  `LRT_pred` text,
  `MutationTaster_score` text,
  `MutationTaster_converted_rankscore` text,
  `MutationTaster_pred` text,
  `MutationAssessor_score` text,
  `MutationAssessor_score_rankscore` text,
  `MutationAssessor_pred` text,
  `FATHMM_score` text,
  `FATHMM_converted_rankscore` text,
  `FATHMM_pred` text,
  `PROVEAN_score` text,
  `PROVEAN_converted_rankscore` text,
  `PROVEAN_pred` text,
  `VEST3_score` text,
  `VEST3_rankscore` text,
  `MetaSVM_score` text,
  `MetaSVM_rankscore` text,
  `MetaSVM_pred` text,
  `MetaLR_score` text,
  `MetaLR_rankscore` text,
  `MetaLR_pred` text,
  `M-CAP_score` text,
  `M-CAP_rankscore` text,
  `M-CAP_pred` text,
  `REVEL_score` text,
  `REVEL_rankscore` text,
  `MutPred_score` text,
  `MutPred_rankscore` text,
  `CADD_raw` text,
  `CADD_raw_rankscore` text,
  `CADD_phred` text,
  `DANN_score` text,
  `DANN_rankscore` text,
  `fathmm-MKL_coding_score` text,
  `fathmm-MKL_coding_rankscore` text,
  `fathmm-MKL_coding_pred` text,
  `Eigen_coding_or_noncoding` text,
  `Eigen-raw` text,
  `Eigen-PC-raw` text,
  `GenoCanyon_score` text,
  `GenoCanyon_score_rankscore` text,
  `integrated_fitCons_score` text,
  `integrated_fitCons_score_rankscore` text,
  `integrated_confidence_value` text,
  `GERP++_RS` text,
  `GERP++_RS_rankscore` text,
  `phyloP100way_vertebrate` text,
  `phyloP100way_vertebrate_rankscore` text,
  `phyloP20way_mammalian` text,
  `phyloP20way_mammalian_rankscore` text,
  `phastCons100way_vertebrate` text,
  `phastCons100way_vertebrate_rankscore` text,
  `phastCons20way_mammalian` text,
  `phastCons20way_mammalian_rankscore` text,
  `SiPhy_29way_logOdds` text,
  `SiPhy_29way_logOdds_rankscore` text,
  `Interpro_domain` text,
  `GTEx_V6p_gene` text,
  `GTEx_V6p_tissue` text,
  `gnomAD_genome_ALL` text,
  `gnomAD_genome_AFR` text,
  `gnomAD_genome_AMR` text,
  `gnomAD_genome_ASJ` text,
  `gnomAD_genome_EAS` text,
  `gnomAD_genome_FIN` text,
  `gnomAD_genome_NFE` text,
  `gnomAD_genome_OTH` text,
  `CLNALLELEID` text,
  `CLNDN` text,
  `CLNDISDB` text,
  `CLNREVSTAT` text,
  `CLNSIG` text,
  `cosmic70` text,
  `ICGC_Id` text,
  `ICGC_Occurrence` text,
  `InterVar_automated` text,
  `PVS1` text,
  `PS1` text,
  `PS2` text,
  `PS3` text,
  `PS4` text,
  `PM1` text,
  `PM2` text,
  `PM3` text,
  `PM4` text,
  `PM5` text,
  `PM6` text,
  `PP1` text,
  `PP2` text,
  `PP3` text,
  `PP4` text,
  `PP5` text,
  `BA1` text,
  `BS1` text,
  `BS2` text,
  `BS3` text,
  `BS4` text,
  `BP1` text,
  `BP2` text,
  `BP3` text,
  `BP4` text,
  `BP5` text,
  `BP6` text,
  `BP7` text,
  `Otherinfo` text,
  PRIMARY KEY (`sample_id`,`Chr`,`Start`,`End`,`Ref`,`Alt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `annovar2`
--

DROP TABLE IF EXISTS `annovar2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `annovar2` (
  `CHROM` varchar(100) NOT NULL,
  `POS` text,
  `ID` text,
  `REF` text,
  `ALT` text,
  `QUAL` text,
  `FILTER` text,
  `INFO` text,
  `FORMAT` text,
  `NA00001` text,
  `NA00002` text,
  `NA00003` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chemicals`
--

DROP TABLE IF EXISTS `chemicals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chemicals` (
  `PharmGKBAccessionId` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `Name` text CHARACTER SET utf8,
  `GenericNames` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `TradeNames` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `Type` text CHARACTER SET utf8,
  `Cross-references` varchar(5000) CHARACTER SET utf8 DEFAULT NULL,
  `SMILES` text CHARACTER SET utf8,
  `DosingGuideline` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ExternalVocabulary` text CHARACTER SET utf8 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dosing_guideline`
--

DROP TABLE IF EXISTS `dosing_guideline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dosing_guideline` (
  `id` varchar(100) NOT NULL,
  `obj_cls` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `recommendation` tinyint(1) DEFAULT NULL,
  `drug_id` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `summary_markdown` varchar(2000) DEFAULT NULL,
  `text_markdown` text,
  `raw` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dosing_guideline_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug`
--

DROP TABLE IF EXISTS `drug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug` (
  `id` varchar(100) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `obj_cls` varchar(100) DEFAULT NULL,
  `drug_url` varchar(100) DEFAULT NULL,
  `biomarker` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `drug_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_label`
--

DROP TABLE IF EXISTS `drug_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_label` (
  `id` varchar(100) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `obj_cls` varchar(100) DEFAULT NULL,
  `alternate_drug_available` tinyint(1) DEFAULT NULL,
  `dosing_information` tinyint(1) DEFAULT NULL,
  `prescribing_markdown` varchar(2000) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `text_markdown` varchar(4000) DEFAULT NULL,
  `summary_markdown` varchar(1000) DEFAULT NULL,
  `raw` text,
  `drug_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `drug_label_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `druglabels`
--

DROP TABLE IF EXISTS `druglabels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `druglabels` (
  `PharmGKB ID` varchar(45) NOT NULL,
  `Name` text,
  `Source` varchar(45) DEFAULT NULL,
  `BiomarkerFlag` varchar(45) DEFAULT NULL,
  `TestingLevel` varchar(45) DEFAULT NULL,
  `HasPrescribingInfo` varchar(45) DEFAULT NULL,
  `HasDosingInfo` varchar(45) DEFAULT NULL,
  `HasAlternateDrug` varchar(45) DEFAULT NULL,
  `CancerGenome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PharmGKB ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `genes`
--

DROP TABLE IF EXISTS `genes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genes` (
  `PharmGKBAccessionID` text,
  `NCBIGeneID` text,
  `HGNCID` text,
  `EnsemblID` text,
  `Name` text,
  `symbol` text,
  `AlternateNames` text,
  `AlternateSymbols` text,
  `IsVIP` varchar(45) DEFAULT NULL,
  `HasVariantAnnotation` varchar(45) DEFAULT NULL,
  `HasCPICDosingGuideline` varchar(45) DEFAULT NULL,
  `Chromosome` varchar(45) DEFAULT NULL,
  `ChromosomalStart-GRCh37.p13` varchar(45) DEFAULT NULL,
  `ChromosomalStop-GRCh37.p13` varchar(45) DEFAULT NULL,
  `ChromosomalStart-GRCh38.p7` varchar(45) DEFAULT NULL,
  `ChromosomalStop-GRCh38.p7` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `relationship`
--

DROP TABLE IF EXISTS `relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relationship` (
  `Entity1_id` varchar(45) DEFAULT NULL,
  `Entity1_name` text,
  `Entity1_type` varchar(45) DEFAULT NULL,
  `Entity2_id` varchar(45) DEFAULT NULL,
  `Entity2_name` text,
  `Entity2_type` varchar(45) DEFAULT NULL,
  `Evidence` text,
  `Association` varchar(45) DEFAULT NULL,
  `PK` varchar(45) DEFAULT NULL,
  `PD` varchar(45) DEFAULT NULL,
  `PMIDs` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sample`
--

DROP TABLE IF EXISTS `sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sample` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `uploaded_by` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `var_drug`
--

DROP TABLE IF EXISTS `var_drug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `var_drug` (
  `ChemicalID` varchar(45) DEFAULT NULL,
  `ChemicalName` varchar(45) DEFAULT NULL,
  `ChemicalinText` text,
  `VariationID` varchar(45) DEFAULT NULL,
  `VariationName` text,
  `VariationType` text,
  `VariationinText` text,
  `GeneIDs` text,
  `GeneSymbols` text,
  `GeneinText` text,
  `LiteratureID` text,
  `PMID` text,
  `LiteratureTitle` text,
  `PublicationYear` text,
  `JournalSentence` text,
  `Sentence` text,
  `Source` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='automated annotations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `var_drug_ann`
--

DROP TABLE IF EXISTS `var_drug_ann`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `var_drug_ann` (
  `AnnotationID` text,
  `VariantGene` text,
  `Chemical` text,
  `PMID` text,
  `Phenotype` text,
  `Category` text,
  `Significance` text,
  `Notes` text,
  `Sentence` text,
  `Alleles` text,
  `Chromosome` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'biomed1'
--

--
-- Dumping routines for database 'biomed1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-02  9:00:52
