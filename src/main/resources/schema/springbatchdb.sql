-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 08 sep. 2021 à 21:16
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `springbatchdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `batch_job_execution`
--

DROP TABLE IF EXISTS `batch_job_execution`;
CREATE TABLE IF NOT EXISTS `batch_job_execution` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) DEFAULT NULL,
  `JOB_INSTANCE_ID` bigint(20) NOT NULL,
  `CREATE_TIME` timestamp NOT NULL,
  `START_TIME` timestamp NULL DEFAULT NULL,
  `END_TIME` timestamp NULL DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `EXIT_CODE` varchar(20) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` timestamp NULL DEFAULT NULL,
  `JOB_CONFIGURATION_LOCATION` varchar(2500) DEFAULT NULL,
  PRIMARY KEY (`JOB_EXECUTION_ID`),
  KEY `JOB_INSTANCE_EXECUTION_FK` (`JOB_INSTANCE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `batch_job_execution`
--

INSERT INTO `batch_job_execution` (`JOB_EXECUTION_ID`, `VERSION`, `JOB_INSTANCE_ID`, `CREATE_TIME`, `START_TIME`, `END_TIME`, `STATUS`, `EXIT_CODE`, `EXIT_MESSAGE`, `LAST_UPDATED`, `JOB_CONFIGURATION_LOCATION`) VALUES
(0, 2, 0, '2021-09-08 16:15:54', '2021-09-08 16:15:54', '2021-09-08 16:15:54', 'COMPLETED', 'COMPLETED', '', '2021-09-08 16:15:54', NULL),
(2, 2, 2, '2021-09-08 16:20:50', '2021-09-08 16:20:50', '2021-09-08 16:20:50', 'COMPLETED', 'COMPLETED', '', '2021-09-08 16:20:50', NULL),
(3, 2, 3, '2021-09-08 16:23:57', '2021-09-08 16:23:57', '2021-09-08 16:23:58', 'COMPLETED', 'COMPLETED', '', '2021-09-08 16:23:58', NULL),
(4, 2, 4, '2021-09-08 16:47:17', '2021-09-08 16:47:17', '2021-09-08 16:47:17', 'COMPLETED', 'COMPLETED', '', '2021-09-08 16:47:17', NULL),
(5, 2, 5, '2021-09-08 17:14:30', '2021-09-08 17:14:30', '2021-09-08 17:14:30', 'COMPLETED', 'COMPLETED', '', '2021-09-08 17:14:30', NULL),
(6, 2, 6, '2021-09-08 17:24:09', '2021-09-08 17:24:09', '2021-09-08 17:24:09', 'COMPLETED', 'COMPLETED', '', '2021-09-08 17:24:09', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `batch_job_execution_context`
--

DROP TABLE IF EXISTS `batch_job_execution_context`;
CREATE TABLE IF NOT EXISTS `batch_job_execution_context` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` blob,
  PRIMARY KEY (`JOB_EXECUTION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `batch_job_execution_context`
--

INSERT INTO `batch_job_execution_context` (`JOB_EXECUTION_ID`, `SHORT_CONTEXT`, `SERIALIZED_CONTEXT`) VALUES
(0, '{}', NULL),
(2, '{}', NULL),
(3, '{}', NULL),
(4, '{}', NULL),
(5, '{}', NULL),
(6, '{}', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `batch_job_execution_params`
--

DROP TABLE IF EXISTS `batch_job_execution_params`;
CREATE TABLE IF NOT EXISTS `batch_job_execution_params` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `TYPE_CD` varchar(6) NOT NULL,
  `KEY_NAME` varchar(100) NOT NULL,
  `STRING_VAL` varchar(250) DEFAULT NULL,
  `DATE_VAL` datetime DEFAULT NULL,
  `LONG_VAL` bigint(20) DEFAULT NULL,
  `DOUBLE_VAL` double DEFAULT NULL,
  `IDENTIFYING` char(1) NOT NULL,
  KEY `JOB_EXEC_PARAMS_FK` (`JOB_EXECUTION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `batch_job_execution_params`
--

INSERT INTO `batch_job_execution_params` (`JOB_EXECUTION_ID`, `TYPE_CD`, `KEY_NAME`, `STRING_VAL`, `DATE_VAL`, `LONG_VAL`, `DOUBLE_VAL`, `IDENTIFYING`) VALUES
(0, 'LONG', 'run.id', '', '1970-01-01 00:00:00', 1, 0, 'Y'),
(0, 'LONG', 'run.id', '', '1970-01-01 00:00:00', 1, 0, 'Y'),
(2, 'LONG', 'run.id', '', '1970-01-01 00:00:00', 2, 0, 'Y'),
(3, 'LONG', 'run.id', '', '1970-01-01 00:00:00', 3, 0, 'Y'),
(4, 'LONG', 'run.id', '', '1970-01-01 00:00:00', 4, 0, 'Y'),
(5, 'LONG', 'run.id', '', '1970-01-01 00:00:00', 5, 0, 'Y'),
(6, 'LONG', 'run.id', '', '1970-01-01 00:00:00', 6, 0, 'Y');

-- --------------------------------------------------------

--
-- Structure de la table `batch_job_execution_seq`
--

DROP TABLE IF EXISTS `batch_job_execution_seq`;
CREATE TABLE IF NOT EXISTS `batch_job_execution_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `batch_job_execution_seq`
--

INSERT INTO `batch_job_execution_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Structure de la table `batch_job_instance`
--

DROP TABLE IF EXISTS `batch_job_instance`;
CREATE TABLE IF NOT EXISTS `batch_job_instance` (
  `JOB_INSTANCE_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) DEFAULT NULL,
  `JOB_NAME` varchar(100) NOT NULL,
  `JOB_KEY` varchar(2500) DEFAULT NULL,
  PRIMARY KEY (`JOB_INSTANCE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `batch_job_instance`
--

INSERT INTO `batch_job_instance` (`JOB_INSTANCE_ID`, `VERSION`, `JOB_NAME`, `JOB_KEY`) VALUES
(0, 0, 'jobDatawarehouseLoader', '853d3449e311f40366811cbefb3d93d7'),
(2, 0, 'jobDatawarehouseLoader', 'e070bff4379694c0210a51d9f6c6a564'),
(3, 0, 'jobDatawarehouseLoader', 'a3364faf893276dea0caacefbf618db5'),
(4, 0, 'jobDatawarehouseLoader', '47c0a8118b74165a864b66d37c7b6cf5'),
(5, 0, 'jobDatawarehouseLoader', 'ce148f5f9c2bf4dc9bd44a7a5f64204c'),
(6, 0, 'jobDatawarehouseLoader', 'bd0034040292bc81e6ccac0e25d9a578');

-- --------------------------------------------------------

--
-- Structure de la table `batch_job_seq`
--

DROP TABLE IF EXISTS `batch_job_seq`;
CREATE TABLE IF NOT EXISTS `batch_job_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `batch_job_seq`
--

INSERT INTO `batch_job_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Structure de la table `batch_step_execution`
--

DROP TABLE IF EXISTS `batch_step_execution`;
CREATE TABLE IF NOT EXISTS `batch_step_execution` (
  `STEP_EXECUTION_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) NOT NULL,
  `STEP_NAME` varchar(100) NOT NULL,
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `START_TIME` timestamp NOT NULL,
  `END_TIME` timestamp NULL DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `COMMIT_COUNT` bigint(20) DEFAULT NULL,
  `READ_COUNT` bigint(20) DEFAULT NULL,
  `FILTER_COUNT` bigint(20) DEFAULT NULL,
  `WRITE_COUNT` bigint(20) DEFAULT NULL,
  `READ_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `WRITE_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `PROCESS_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `ROLLBACK_COUNT` bigint(20) DEFAULT NULL,
  `EXIT_CODE` varchar(20) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`STEP_EXECUTION_ID`),
  KEY `JOB_EXECUTION_STEP_FK` (`JOB_EXECUTION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `batch_step_execution`
--

INSERT INTO `batch_step_execution` (`STEP_EXECUTION_ID`, `VERSION`, `STEP_NAME`, `JOB_EXECUTION_ID`, `START_TIME`, `END_TIME`, `STATUS`, `COMMIT_COUNT`, `READ_COUNT`, `FILTER_COUNT`, `WRITE_COUNT`, `READ_SKIP_COUNT`, `WRITE_SKIP_COUNT`, `PROCESS_SKIP_COUNT`, `ROLLBACK_COUNT`, `EXIT_CODE`, `EXIT_MESSAGE`, `LAST_UPDATED`) VALUES
(2, 3, 'stepDatawarehouseLoader', 0, '2021-09-08 16:15:54', '2021-09-08 16:15:54', 'COMPLETED', 1, 0, 0, 0, 0, 0, 0, 0, 'COMPLETED', '', '2021-09-08 16:15:54'),
(3, 3, 'stepDatawarehouseLoader', 2, '2021-09-08 16:20:50', '2021-09-08 16:20:50', 'COMPLETED', 1, 0, 0, 0, 0, 0, 0, 0, 'COMPLETED', '', '2021-09-08 16:20:50'),
(4, 7, 'stepDatawarehouseLoader', 3, '2021-09-08 16:23:57', '2021-09-08 16:23:58', 'COMPLETED', 5, 4, 0, 4, 2, 0, 0, 0, 'COMPLETED', '', '2021-09-08 16:23:58'),
(5, 7, 'stepDatawarehouseLoader', 4, '2021-09-08 16:47:17', '2021-09-08 16:47:17', 'COMPLETED', 5, 4, 0, 4, 2, 0, 0, 0, 'COMPLETED', '', '2021-09-08 16:47:17'),
(6, 7, 'stepDatawarehouseLoader', 5, '2021-09-08 17:14:30', '2021-09-08 17:14:30', 'COMPLETED', 5, 4, 0, 4, 2, 0, 0, 0, 'COMPLETED', '', '2021-09-08 17:14:30'),
(7, 7, 'stepDatawarehouseLoader', 6, '2021-09-08 17:24:09', '2021-09-08 17:24:09', 'COMPLETED', 5, 4, 0, 4, 2, 0, 0, 0, 'COMPLETED', '', '2021-09-08 17:24:09');

-- --------------------------------------------------------

--
-- Structure de la table `batch_step_execution_context`
--

DROP TABLE IF EXISTS `batch_step_execution_context`;
CREATE TABLE IF NOT EXISTS `batch_step_execution_context` (
  `STEP_EXECUTION_ID` bigint(20) NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` blob,
  PRIMARY KEY (`STEP_EXECUTION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `batch_step_execution_context`
--

INSERT INTO `batch_step_execution_context` (`STEP_EXECUTION_ID`, `SHORT_CONTEXT`, `SERIALIZED_CONTEXT`) VALUES
(2, '{\"MultiResourceItemReader.resourceIndex\":-1,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":0,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(3, '{\"MultiResourceItemReader.resourceIndex\":-1,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":0,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(4, '{\"MultiResourceItemReader.resourceIndex\":3,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":3,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(5, '{\"MultiResourceItemReader.resourceIndex\":3,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":3,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(6, '{\"MultiResourceItemReader.resourceIndex\":3,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":3,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(7, '{\"MultiResourceItemReader.resourceIndex\":3,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":3,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `batch_step_execution_seq`
--

DROP TABLE IF EXISTS `batch_step_execution_seq`;
CREATE TABLE IF NOT EXISTS `batch_step_execution_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `batch_step_execution_seq`
--

INSERT INTO `batch_step_execution_seq` (`id`) VALUES
(8),
(7),
(7);

-- --------------------------------------------------------

--
-- Structure de la table `dim_date`
--

DROP TABLE IF EXISTS `dim_date`;
CREATE TABLE IF NOT EXISTS `dim_date` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_TIME` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dim_date`
--

INSERT INTO `dim_date` (`ID`, `DATE_TIME`) VALUES
(1, '2019-12-17'),
(2, '2019-12-14'),
(3, '2019-12-14'),
(4, '2019-12-14'),
(5, '2019-12-17'),
(6, '2019-12-14'),
(7, '2019-12-14'),
(8, '2019-12-14'),
(9, '2019-12-17'),
(10, '2019-12-14'),
(11, '2019-12-14'),
(12, '2019-12-14'),
(13, '2019-12-17'),
(14, '2019-12-14'),
(15, '2019-12-14'),
(16, '2019-12-14');

-- --------------------------------------------------------

--
-- Structure de la table `dim_employee_purchaser`
--

DROP TABLE IF EXISTS `dim_employee_purchaser`;
CREATE TABLE IF NOT EXISTS `dim_employee_purchaser` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dim_employee_purchaser`
--

INSERT INTO `dim_employee_purchaser` (`ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`) VALUES
(1, 'Eric', 'Dupont', 'ericdupont@yopmail.com'),
(2, 'Samuel', 'Marimont', 'samuelmarimont@yopmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `dim_product`
--

DROP TABLE IF EXISTS `dim_product`;
CREATE TABLE IF NOT EXISTS `dim_product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  `PRDT_TYPE` varchar(255) DEFAULT NULL,
  `EAN_CODE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dim_product`
--

INSERT INTO `dim_product` (`ID`, `NAME`, `PRDT_TYPE`, `EAN_CODE`) VALUES
(1, 'ZenPhone5', 'Phone', 'EAN2918098'),
(2, 'USBZEN', 'USB KEY', 'EAN10000'),
(3, 'CameraZEN', 'Camera', 'EAN5000');

-- --------------------------------------------------------

--
-- Structure de la table `dim_supplier`
--

DROP TABLE IF EXISTS `dim_supplier`;
CREATE TABLE IF NOT EXISTS `dim_supplier` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dim_supplier`
--

INSERT INTO `dim_supplier` (`ID`, `NAME`, `ADDRESS`) VALUES
(1, 'ASUS', '7 Place Vendome Paris France'),
(2, 'Cdiscount', '27 Boulevard des Nations Nantes France');

-- --------------------------------------------------------

--
-- Structure de la table `fact_order`
--

DROP TABLE IF EXISTS `fact_order`;
CREATE TABLE IF NOT EXISTS `fact_order` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUPPLIER_ID` varchar(255) NOT NULL,
  `EMP_PURCHASER_ID` varchar(255) NOT NULL,
  `PRODUCT_ID` varchar(255) NOT NULL,
  `DATE_ID` varchar(255) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `TOTAL_AMOUNT` decimal(10,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FACT_ORDER_SUPPLIER_FK` (`SUPPLIER_ID`),
  KEY `FACT_ORDER_EMP_PURCHASER_FK` (`EMP_PURCHASER_ID`),
  KEY `FACT_ORDER_PRODUCT_FK` (`PRODUCT_ID`),
  KEY `FACT_ORDER_DATE_FK` (`DATE_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fact_order`
--

INSERT INTO `fact_order` (`ID`, `SUPPLIER_ID`, `EMP_PURCHASER_ID`, `PRODUCT_ID`, `DATE_ID`, `QUANTITY`, `TOTAL_AMOUNT`) VALUES
(1, '1', '1', '1', '1', 2, '600'),
(2, '1', '1', '1', '2', 2, '600'),
(3, '2', '1', '2', '3', 8, '12792'),
(4, '2', '2', '3', '4', 12, '192684'),
(5, '1', '1', '1', '5', 2, '600'),
(6, '1', '1', '1', '6', 2, '600'),
(7, '2', '1', '2', '7', 8, '12792'),
(8, '2', '2', '3', '8', 12, '192684'),
(9, '1', '1', '1', '9', 2, '600'),
(10, '1', '1', '1', '10', 2, '600'),
(11, '2', '1', '2', '11', 8, '12792'),
(12, '2', '2', '3', '12', 12, '192684'),
(13, '1', '1', '1', '13', 2, '600'),
(14, '1', '1', '1', '14', 2, '600'),
(15, '2', '1', '2', '15', 8, '12792'),
(16, '2', '2', '3', '16', 12, '192684');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
