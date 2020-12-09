CREATE DATABASE `WorldBankDB`;

CREATE TABLE `Country` (
  `Country_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Country_Code` tinytext,
  `Country_Name` tinytext,
  `Country_Type` tinytext,
  `Region_Name` tinytext,
  PRIMARY KEY (`Country_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4;


CREATE TABLE `LoanStatus` (
  `Loan_Status_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Loan_Status_Type` tinytext,
  PRIMARY KEY (`Loan_Status_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;


CREATE TABLE `ProjectTypes` (
  `ProjectType_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ProjectType` tinytext,
  PRIMARY KEY (`ProjectType_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Projects` (
  `Project_ID` varchar(63) DEFAULT NULL,
  `ProjectType_ID` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Loans` (
  `Loan_Number` varchar(63) DEFAULT NULL,
  `Borrower` varchar(63) DEFAULT NULL,
  `Interest_Rate` double DEFAULT NULL,
  `Original_Principal_Amount` double DEFAULT NULL,
  `Undisbursed_Amount` double DEFAULT NULL,
  `Disbursed_Amount` double DEFAULT NULL,
  `Borrower_Obligation` double DEFAULT NULL,
  `First_Repayment_Date` varchar(63) DEFAULT NULL,
  `Last_Repayment_Date` varchar(63) DEFAULT NULL,
  `Effective_Date` varchar(63) DEFAULT NULL,
  `Project_ID` varchar(63) DEFAULT NULL,
  `Country_ID` bigint(20) DEFAULT NULL,
  `Loan_Status_ID` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

