CREATE DATABASE `WorldBank_wh`;

CREATE TABLE `Dim_Country` (
  `Country_key` bigint(20) NOT NULL AUTO_INCREMENT,
  `Country_ID` bigint(20) DEFAULT NULL,
  `Country_Code` varchar(63) DEFAULT NULL,
  `Country_Name` varchar(63) DEFAULT NULL,
  `Country_Type` varchar(63) DEFAULT NULL,
  `Region_Name` varchar(63) DEFAULT NULL,
  PRIMARY KEY (`Country_key`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `Dim_Date` (
  `date_id` int(11) NOT NULL,
  `monthnumber` int(11) DEFAULT NULL,
  `monthname` varchar(10) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `quarter` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`date_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `Dim_Loans` (
  `Loan_key` bigint(20) NOT NULL AUTO_INCREMENT,
  `Loan_Number` varchar(63) DEFAULT NULL,
  `Borrower` varchar(63) DEFAULT NULL,
  `Loan_Status_Type` varchar(63) DEFAULT NULL,
  PRIMARY KEY (`Loan_key`)
) ENGINE=InnoDB AUTO_INCREMENT=17191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `Dim_Projects` (
  `Project_key` bigint(20) NOT NULL AUTO_INCREMENT,
  `Project_ID` varchar(63) DEFAULT NULL,
  `ProjectType` varchar(63) DEFAULT NULL,
  PRIMARY KEY (`Project_key`)
) ENGINE=InnoDB AUTO_INCREMENT=12409 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `Fact_Loans` (
  `fact_loan_key` bigint(20) NOT NULL AUTO_INCREMENT,
  `Original_Principal_Amount` double DEFAULT NULL,
  `Undisbursed_Amount` double DEFAULT NULL,
  `Disbursed_Amount` double DEFAULT NULL,
  `Borrower_Obligation` double DEFAULT NULL,
  `Country_Key` bigint(20) DEFAULT NULL,
  `Loan_key` bigint(20) DEFAULT NULL,
  `Project_key` bigint(20) DEFAULT NULL,
  `Effective_Date_Key` int(11) DEFAULT NULL,
  `Repayment_Date_Key` int(11) DEFAULT NULL,
  PRIMARY KEY (`fact_loan_key`)
) ENGINE=InnoDB AUTO_INCREMENT=17191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE VIEW vw_dimeffectivedate AS 
SELECT date_id as EffectiveDateKey,
       monthnumber,
       monthname,
	   year,
       quarter
FROM Dim_Date;

CREATE VIEW vw_DimRepaymentDate AS 
SELECT date_id as RepaymentDateKey,
       monthnumber,
       monthname,
	   year,
       quarter
FROM Dim_Date;